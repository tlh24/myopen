
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
ffa001be:	00 e3 09 08 	CALL 0xffa011d0 <_spi_write_byte>;
ffa001c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa001c4:	00 e3 06 08 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa00200:	00 e3 e8 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00204:	27 97       	W[P4] = R7;
ffa00206:	24 00       	SSYNC;
ffa00208:	2f 97       	W[P5] = R7;
ffa0020a:	24 00       	SSYNC;
ffa0020c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0020e:	00 e3 e1 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00212:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00214:	00 e3 de 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00218:	27 97       	W[P4] = R7;
ffa0021a:	24 00       	SSYNC;
ffa0021c:	2f 97       	W[P5] = R7;
ffa0021e:	24 00       	SSYNC;
ffa00220:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00222:	00 e3 d7 07 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa00250:	00 e3 c0 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00254:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa00258:	40 43       	R0 = R0.B (Z);
ffa0025a:	00 e3 bb 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0025e:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa00262:	40 43       	R0 = R0.B (Z);
ffa00264:	7f 43       	R7 = R7.B (Z);
ffa00266:	00 e3 b5 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0026a:	07 30       	R0 = R7;
ffa0026c:	00 e3 b2 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00270:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00272:	00 e3 af 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00276:	47 43       	R7 = R0.B (Z);
ffa00278:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0027a:	00 e3 ab 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0027e:	40 43       	R0 = R0.B (Z);
ffa00280:	47 4f       	R7 <<= 0x8;
ffa00282:	c7 51       	R7 = R7 + R0;
ffa00284:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00286:	00 e3 a5 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0028a:	40 43       	R0 = R0.B (Z);
ffa0028c:	47 4f       	R7 <<= 0x8;
ffa0028e:	c7 51       	R7 = R7 + R0;
ffa00290:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00292:	00 e3 9f 07 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa002d0:	00 e3 80 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa002d4:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa002d8:	40 43       	R0 = R0.B (Z);
ffa002da:	00 e3 7b 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa002de:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa002e2:	40 43       	R0 = R0.B (Z);
ffa002e4:	7f 43       	R7 = R7.B (Z);
ffa002e6:	00 e3 75 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa002ea:	07 30       	R0 = R7;
ffa002ec:	00 e3 72 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa002f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002f2:	00 e3 6f 07 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa0032a:	00 e3 53 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0032e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00330:	00 e3 50 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa00334:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa00338:	00 e3 4c 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0033c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0033e:	00 e3 49 07 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa00372:	00 e3 2f 07 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa00398:	00 e3 1c 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0039c:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa003a0:	47 4e       	R7 >>= 0x8;
ffa003a2:	7f 43       	R7 = R7.B (Z);
ffa003a4:	40 43       	R0 = R0.B (Z);
ffa003a6:	00 e3 15 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa003aa:	07 30       	R0 = R7;
ffa003ac:	00 e3 12 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa003b0:	70 43       	R0 = R6.B (Z);
ffa003b2:	00 e3 0f 07 	CALL 0xffa011d0 <_spi_write_byte>;
ffa003b6:	20 98       	R0 = B[P4++] (Z);
ffa003b8:	00 e3 0c 07 	CALL 0xffa011d0 <_spi_write_byte>;
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
ffa003ee:	00 e3 bf 02 	CALL 0xffa0096c <_printf_hex_byte>;
ffa003f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003f6:	21 99       	R1 = B[P4] (Z);
ffa003f8:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa003fc:	00 e3 b8 02 	CALL 0xffa0096c <_printf_hex_byte>;
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
ffa0041c:	00 e2 98 02 	JUMP.L 0xffa0094c <_printf_str>;
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
ffa0043a:	00 e3 1d 13 	CALL 0xffa02a74 <_bfin_EMAC_recv>;
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
ffa00458:	00 e3 ea 09 	CALL 0xffa0182c <_htons>;
ffa0045c:	c0 42       	R0 = R0.L (Z);
ffa0045e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00462:	08 08       	CC = R0 == R1;
ffa00464:	e6 17       	IF !CC JUMP 0xffa00430 <_eth_listen+0x8> (BP);
ffa00466:	f0 b9       	R0 = [FP -0x4];
ffa00468:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0046c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0046e:	01 e1 b9 0b 	R1.L = 0xbb9;		/* (3001)	R1=0xff900bb9 <_g_outpkt>(-7337031) */
ffa00472:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00474:	00 e3 14 04 	CALL 0xffa00c9c <_memcpy_>;
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
ffa00528:	00 e3 d4 02 	CALL 0xffa00ad0 <_printf_int>;
ffa0052c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900038(-7339976) */
ffa00530:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00534:	00 e3 0c 02 	CALL 0xffa0094c <_printf_str>;
ffa00538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa0053c:	00 e1 48 00 	R0.L = 0x48;		/* ( 72)	R0=0xff900048(-7339960) */
ffa00540:	00 e3 06 02 	CALL 0xffa0094c <_printf_str>;
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
ffa00588:	00 e3 48 02 	CALL 0xffa00a18 <_printf_hex>;
ffa0058c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00590:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00594:	0f 30       	R1 = R7;
ffa00596:	00 e3 41 02 	CALL 0xffa00a18 <_printf_hex>;
ffa0059a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa0059e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa005a2:	00 e3 d5 01 	CALL 0xffa0094c <_printf_str>;
ffa005a6:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa005a8:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa005ac:	08 08       	CC = R0 == R1;
ffa005ae:	08 18       	IF CC JUMP 0xffa005be <_main+0x142>;
ffa005b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa005b4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005b8:	0e 30       	R1 = R6;
ffa005ba:	00 e3 2f 02 	CALL 0xffa00a18 <_printf_hex>;
ffa005be:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa005c0:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa005c4:	08 08       	CC = R0 == R1;
ffa005c6:	08 18       	IF CC JUMP 0xffa005d6 <_main+0x15a>;
ffa005c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005cc:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005d0:	0e 30       	R1 = R6;
ffa005d2:	00 e3 23 02 	CALL 0xffa00a18 <_printf_hex>;
ffa005d6:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa005d8:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa005dc:	08 08       	CC = R0 == R1;
ffa005de:	08 18       	IF CC JUMP 0xffa005ee <_main+0x172>;
ffa005e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005e4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005e8:	0e 30       	R1 = R6;
ffa005ea:	00 e3 17 02 	CALL 0xffa00a18 <_printf_hex>;
ffa005ee:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa005f2:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa005f6:	55 08       	CC = P5 == P2;
ffa005f8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa005fa:	bc 17       	IF !CC JUMP 0xffa00572 <_main+0xf6> (BP);
ffa005fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00600:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00604:	00 e3 a4 01 	CALL 0xffa0094c <_printf_str>;
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
ffa0064a:	00 e3 d1 0f 	CALL 0xffa025ec <_bfin_EMAC_init>;
ffa0064e:	00 0c       	CC = R0 == 0x0;
ffa00650:	d0 bb       	[FP -0xc] = R0;
ffa00652:	03 14       	IF !CC JUMP 0xffa00658 <_main+0x1dc> (BP);
ffa00654:	00 e3 9e 11 	CALL 0xffa02990 <_DHCP_req>;
ffa00658:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00404(-4193276) */
ffa0065c:	08 e1 00 32 	P0.L = 0x3200;		/* (12800)	P0=0xffc03200(-4181504) */
ffa00660:	40 95       	R0 = W[P0] (X);
ffa00662:	3a 62       	R2 = -0x39 (X);		/*		R2=0xffffffc7(-57) */
ffa00664:	10 54       	R0 = R0 & R2;
ffa00666:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa0066a:	00 97       	W[P0] = R0;
ffa0066c:	0d e1 30 07 	P5.L = 0x730;		/* (1840)	P5=0xffc00730(-4192464) */
ffa00670:	69 95       	R1 = W[P5] (X);
ffa00672:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa00674:	08 56       	R0 = R0 | R1;
ffa00676:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01508(-4188920) */
ffa0067a:	28 97       	W[P5] = R0;
ffa0067c:	0c e1 40 07 	P4.L = 0x740;		/* (1856)	P4=0xffc00740(-4192448) */
ffa00680:	60 95       	R0 = W[P4] (X);
ffa00682:	10 54       	R0 = R0 & R2;
ffa00684:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00688:	20 97       	W[P4] = R0;
ffa0068a:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa0068e:	50 95       	R0 = W[P2] (X);
ffa00690:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa00692:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00696:	10 97       	W[P2] = R0;
ffa00698:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa0069c:	48 95       	R0 = W[P1] (X);
ffa0069e:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
ffa006a0:	08 97       	W[P1] = R0;
ffa006a2:	50 95       	R0 = W[P2] (X);
ffa006a4:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa006a6:	10 97       	W[P2] = R0;
ffa006a8:	48 95       	R0 = W[P1] (X);
ffa006aa:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa006ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa006b0:	08 97       	W[P1] = R0;
ffa006b2:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa006b6:	50 95       	R0 = W[P2] (X);
ffa006b8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa006ba:	10 97       	W[P2] = R0;
ffa006bc:	68 95       	R0 = W[P5] (X);
ffa006be:	22 e1 00 38 	R2 = 0x3800 (X);		/*		R2=0x3800(14336) */
ffa006c2:	02 56       	R0 = R2 | R0;
ffa006c4:	28 97       	W[P5] = R0;
ffa006c6:	60 95       	R0 = W[P4] (X);
ffa006c8:	21 e1 ff c7 	R1 = -0x3801 (X);		/*		R1=0xffffc7ff(-14337) */
ffa006cc:	08 54       	R0 = R0 & R1;
ffa006ce:	20 97       	W[P4] = R0;
ffa006d0:	40 95       	R0 = W[P0] (X);
ffa006d2:	82 56       	R2 = R2 | R0;
ffa006d4:	02 97       	W[P0] = R2;
ffa006d6:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa006d8:	51 95       	R1 = W[P2] (X);
ffa006da:	20 e1 c0 03 	R0 = 0x3c0 (X);		/*		R0=0x3c0(960) */
ffa006de:	08 54       	R0 = R0 & R1;
ffa006e0:	10 97       	W[P2] = R0;
ffa006e2:	51 95       	R1 = W[P2] (X);
ffa006e4:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa006e8:	08 56       	R0 = R0 | R1;
ffa006ea:	10 97       	W[P2] = R0;
ffa006ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006ee:	00 e3 71 07 	CALL 0xffa015d0 <_radio_init>;
ffa006f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa006f6:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa006fa:	00 e3 29 01 	CALL 0xffa0094c <_printf_str>;
ffa006fe:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00700:	00 e3 a4 06 	CALL 0xffa01448 <_radio_set_rx>;
ffa00704:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa00706:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00708:	e0 bb       	[FP -0x8] = R0;
ffa0070a:	d0 b9       	R0 = [FP -0xc];
ffa0070c:	ff e3 8e fe 	CALL 0xffa00428 <_eth_listen>;
ffa00710:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00714:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa00718:	50 95       	R0 = W[P2] (X);
ffa0071a:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0071c:	44 18       	IF CC JUMP 0xffa007a4 <_main+0x328>;
ffa0071e:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
ffa00722:	05 0a       	CC = R5 <= R0 (IU);
ffa00724:	1b 1c       	IF CC JUMP 0xffa0075a <_main+0x2de> (BP);
ffa00726:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0072a:	00 e3 53 05 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0072e:	4f 30       	R1 = FP;
ffa00730:	20 e1 04 02 	R0 = 0x204 (X);		/*		R0=0x204(516) */
ffa00734:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00736:	00 e3 b3 0d 	CALL 0xffa0229c <_udp_packet_setup>;
ffa0073a:	10 32       	P2 = R0;
ffa0073c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00740:	00 0d       	CC = R0 <= 0x0;
ffa00742:	6c 18       	IF CC JUMP 0xffa0081a <_main+0x39e>;
ffa00744:	14 92       	[P2++] = R4;
ffa00746:	4a 30       	R1 = P2;
ffa00748:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0074a:	22 e1 00 02 	R2 = 0x200 (X);		/*		R2=0x200(512) */
ffa0074e:	00 e3 a7 02 	CALL 0xffa00c9c <_memcpy_>;
ffa00752:	0c 64       	R4 += 0x1;		/* (  1) */
ffa00754:	00 e3 16 0a 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa00758:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0075a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff801500 */
ffa0075e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00762:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620000(274857984) */
ffa00766:	11 91       	R1 = [P2];
ffa00768:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa0076c:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa00770:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00774:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa00778:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa0077c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00780:	0b c4 00 80 	A0 += A1;
ffa00784:	8b c0 00 38 	R0 = A0 (FU);
ffa00788:	82 ce d0 83 	R1 = R0 >> 0x6 || R0 = [FP -0x8] || NOP;
ffa0078c:	e0 b9 00 00 
ffa00790:	08 08       	CC = R0 == R1;
ffa00792:	bc 1b       	IF CC JUMP 0xffa0070a <_main+0x28e>;
ffa00794:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00798:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0079a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0079e:	10 97       	W[P2] = R0;
ffa007a0:	e1 bb       	[FP -0x8] = R1;
ffa007a2:	b4 2f       	JUMP.S 0xffa0070a <_main+0x28e>;
ffa007a4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa007a8:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa007aa:	00 e3 93 04 	CALL 0xffa010d0 <_spi_write_register>;
ffa007ae:	24 00       	SSYNC;
ffa007b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa007b4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa007b8:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa007bc:	10 97       	W[P2] = R0;
ffa007be:	24 00       	SSYNC;
ffa007c0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00730(-4192464) */
ffa007c4:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa007c8:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa007cc:	28 97       	W[P5] = R0;
ffa007ce:	75 30       	R6 = P5;
ffa007d0:	00 e3 66 04 	CALL 0xffa0109c <_spi_delay>;
ffa007d4:	1d 32       	P3 = R5;
ffa007d6:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa007d8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa007da:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa007dc:	16 32       	P2 = R6;
ffa007de:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa007e0:	17 97       	W[P2] = R7;
ffa007e2:	00 e3 5d 04 	CALL 0xffa0109c <_spi_delay>;
ffa007e6:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa007e8:	68 95       	R0 = W[P5] (X);
ffa007ea:	54 08       	CC = P4 == P2;
ffa007ec:	18 9a       	B[P3++] = R0;
ffa007ee:	f7 17       	IF !CC JUMP 0xffa007dc <_main+0x360> (BP);
ffa007f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa007f4:	27 e1 00 06 	R7 = 0x600 (X);		/*		R7=0x600(1536) */
ffa007f8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007fc:	17 97       	W[P2] = R7;
ffa007fe:	24 00       	SSYNC;
ffa00800:	15 32       	P2 = R5;
ffa00802:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa00804:	90 e5 1c 00 	R0 = B[P2 + 0x1c] (X);
ffa00808:	08 54       	R0 = R0 & R1;
ffa0080a:	08 08       	CC = R0 == R1;
ffa0080c:	0a 18       	IF CC JUMP 0xffa00820 <_main+0x3a4>;
ffa0080e:	0d 30       	R1 = R5;
ffa00810:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00812:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00816:	41 55       	R5 = R1 & R0;
ffa00818:	83 2f       	JUMP.S 0xffa0071e <_main+0x2a2>;
ffa0081a:	0c 64       	R4 += 0x1;		/* (  1) */
ffa0081c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0081e:	9e 2f       	JUMP.S 0xffa0075a <_main+0x2de>;
ffa00820:	00 e3 42 06 	CALL 0xffa014a4 <_radio_set_tx>;
ffa00824:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00828:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0082c:	17 97       	W[P2] = R7;
ffa0082e:	24 00       	SSYNC;
ffa00830:	16 32       	P2 = R6;
ffa00832:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00836:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0083a:	0d e1 b9 0b 	P5.L = 0xbb9;		/* (3001)	P5=0xff900bb9 <_g_outpkt> */
ffa0083e:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0f000(-4132864) */
ffa00842:	10 97       	W[P2] = R0;
ffa00844:	65 32       	P4 = P5;
ffa00846:	00 e3 2b 04 	CALL 0xffa0109c <_spi_delay>;
ffa0084a:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa0084e:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa00850:	00 00       	NOP;
ffa00852:	28 98       	R0 = B[P5++] (Z);
ffa00854:	18 97       	W[P3] = R0;
ffa00856:	00 e3 23 04 	CALL 0xffa0109c <_spi_delay>;
ffa0085a:	65 08       	CC = P5 == P4;
ffa0085c:	fa 17       	IF !CC JUMP 0xffa00850 <_main+0x3d4> (BP);
ffa0085e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00862:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00866:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0086a:	10 97       	W[P2] = R0;
ffa0086c:	24 00       	SSYNC;
ffa0086e:	d0 b9       	R0 = [FP -0xc];
ffa00870:	ff e3 dc fd 	CALL 0xffa00428 <_eth_listen>;
ffa00874:	03 20       	JUMP.S 0xffa0087a <_main+0x3fe>;
ffa00876:	00 00       	NOP;
ffa00878:	00 00       	NOP;
ffa0087a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0087e:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa00882:	50 95       	R0 = W[P2] (X);
ffa00884:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa00886:	f8 17       	IF !CC JUMP 0xffa00876 <_main+0x3fa> (BP);
ffa00888:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0088c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0088e:	00 e3 21 04 	CALL 0xffa010d0 <_spi_write_register>;
ffa00892:	00 e3 db 05 	CALL 0xffa01448 <_radio_set_rx>;
ffa00896:	48 2f       	JUMP.S 0xffa00726 <_main+0x2aa>;

ffa00898 <_uart_str>:
ffa00898:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa0089c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa008a0:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa008a4:	08 32       	P1 = R0;
ffa008a6:	50 95       	R0 = W[P2] (X);
ffa008a8:	c0 42       	R0 = R0.L (Z);
ffa008aa:	08 0c       	CC = R0 == 0x1;
ffa008ac:	06 18       	IF CC JUMP 0xffa008b8 <_uart_str+0x20>;
ffa008ae:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa008b0:	02 30       	R0 = R2;
ffa008b2:	01 e8 00 00 	UNLINK;
ffa008b6:	10 00       	RTS;
ffa008b8:	48 99       	R0 = B[P1] (X);
ffa008ba:	01 43       	R1 = R0.B (X);
ffa008bc:	01 0c       	CC = R1 == 0x0;
ffa008be:	f8 1b       	IF CC JUMP 0xffa008ae <_uart_str+0x16>;
ffa008c0:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa008c4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa008c6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa008c8:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa008cc:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa008d0:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa008d2:	b2 e0 1c 00 	LSETUP(0xffa008d6 <_uart_str+0x3e>, 0xffa0090a <_uart_str+0x72>) LC1 = P0;
ffa008d6:	19 08       	CC = R1 == R3;
ffa008d8:	1b 18       	IF CC JUMP 0xffa0090e <_uart_str+0x76>;
ffa008da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa008de:	00 43       	R0 = R0.B (X);
ffa008e0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa008e4:	10 97       	W[P2] = R0;
ffa008e6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa008e8:	50 95       	R0 = W[P2] (X);
ffa008ea:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008ec:	0a 10       	IF !CC JUMP 0xffa00900 <_uart_str+0x68>;
ffa008ee:	00 00       	NOP;
ffa008f0:	00 00       	NOP;
ffa008f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa008f6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008fa:	50 95       	R0 = W[P2] (X);
ffa008fc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008fe:	f9 1f       	IF CC JUMP 0xffa008f0 <_uart_str+0x58> (BP);
ffa00900:	48 99       	R0 = B[P1] (X);
ffa00902:	01 43       	R1 = R0.B (X);
ffa00904:	01 0c       	CC = R1 == 0x0;
ffa00906:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00908:	d4 1b       	IF CC JUMP 0xffa008b0 <_uart_str+0x18>;
ffa0090a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0090c:	d2 2f       	JUMP.S 0xffa008b0 <_uart_str+0x18>;
ffa0090e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00910:	20 9f       	W[I0] = R0.L;
ffa00912:	02 20       	JUMP.S 0xffa00916 <_uart_str+0x7e>;
ffa00914:	00 00       	NOP;
ffa00916:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0091a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0091e:	50 95       	R0 = W[P2] (X);
ffa00920:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00922:	f9 1f       	IF CC JUMP 0xffa00914 <_uart_str+0x7c> (BP);
ffa00924:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00928:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0092a:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0092e:	10 97       	W[P2] = R0;
ffa00930:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00932:	50 95       	R0 = W[P2] (X);
ffa00934:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00936:	e5 13       	IF !CC JUMP 0xffa00900 <_uart_str+0x68>;
ffa00938:	00 00       	NOP;
ffa0093a:	00 00       	NOP;
ffa0093c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00940:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00944:	50 95       	R0 = W[P2] (X);
ffa00946:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00948:	f9 1f       	IF CC JUMP 0xffa0093a <_uart_str+0xa2> (BP);
ffa0094a:	db 2f       	JUMP.S 0xffa00900 <_uart_str+0x68>;

ffa0094c <_printf_str>:
ffa0094c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00950:	01 e8 00 00 	UNLINK;
ffa00954:	ff e2 a2 ff 	JUMP.L 0xffa00898 <_uart_str>;

ffa00958 <_printf_newline>:
ffa00958:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0095c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00960:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00964:	01 e8 00 00 	UNLINK;
ffa00968:	ff e2 98 ff 	JUMP.L 0xffa00898 <_uart_str>;

ffa0096c <_printf_hex_byte>:
ffa0096c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0096e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00972:	28 32       	P5 = R0;
ffa00974:	39 30       	R7 = R1;
ffa00976:	00 e3 b1 01 	CALL 0xffa00cd8 <_strlen_>;
ffa0097a:	10 30       	R2 = R0;
ffa0097c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00980:	02 09       	CC = R2 <= R0;
ffa00982:	41 10       	IF !CC JUMP 0xffa00a04 <_printf_hex_byte+0x98>;
ffa00984:	02 0d       	CC = R2 <= 0x0;
ffa00986:	44 18       	IF CC JUMP 0xffa00a0e <_printf_hex_byte+0xa2>;
ffa00988:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa0098c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0098e:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00992:	09 32       	P1 = R1;
ffa00994:	42 91       	P2 = [P0];
ffa00996:	09 64       	R1 += 0x1;		/* (  1) */
ffa00998:	68 98       	R0 = B[P5++] (X);
ffa0099a:	0a 08       	CC = R2 == R1;
ffa0099c:	8a 5a       	P2 = P2 + P1;
ffa0099e:	10 9b       	B[P2] = R0;
ffa009a0:	f9 17       	IF !CC JUMP 0xffa00992 <_printf_hex_byte+0x26> (BP);
ffa009a2:	0a 32       	P1 = R2;
ffa009a4:	42 91       	P2 = [P0];
ffa009a6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa009a8:	22 32       	P4 = R2;
ffa009aa:	79 43       	R1 = R7.B (Z);
ffa009ac:	8a 5a       	P2 = P2 + P1;
ffa009ae:	10 9b       	B[P2] = R0;
ffa009b0:	42 91       	P2 = [P0];
ffa009b2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa009b4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa009b8:	11 6c       	P1 += 0x2;		/* (  2) */
ffa009ba:	a2 5a       	P2 = P2 + P4;
ffa009bc:	10 9b       	B[P2] = R0;
ffa009be:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa009c0:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa009c2:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa009c4:	01 30       	R0 = R1;
ffa009c6:	10 40       	R0 >>>= R2;
ffa009c8:	18 54       	R0 = R0 & R3;
ffa009ca:	38 09       	CC = R0 <= R7;
ffa009cc:	1a 1c       	IF CC JUMP 0xffa00a00 <_printf_hex_byte+0x94> (BP);
ffa009ce:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa009d0:	42 91       	P2 = [P0];
ffa009d2:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa009d4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900bb9 <_g_outpkt> */
ffa009d8:	22 0c       	CC = R2 == -0x4;
ffa009da:	8a 5a       	P2 = P2 + P1;
ffa009dc:	0d e1 e0 0b 	P5.L = 0xbe0;		/* (3040)	P5=0xff900be0 <_printf_out> */
ffa009e0:	10 9b       	B[P2] = R0;
ffa009e2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa009e4:	f0 17       	IF !CC JUMP 0xffa009c4 <_printf_hex_byte+0x58> (BP);
ffa009e6:	6a 91       	P2 = [P5];
ffa009e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009ea:	94 5a       	P2 = P4 + P2;
ffa009ec:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa009f0:	28 91       	R0 = [P5];
ffa009f2:	ff e3 53 ff 	CALL 0xffa00898 <_uart_str>;
ffa009f6:	01 e8 00 00 	UNLINK;
ffa009fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009fc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009fe:	10 00       	RTS;
ffa00a00:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00a02:	e7 2f       	JUMP.S 0xffa009d0 <_printf_hex_byte+0x64>;
ffa00a04:	01 e8 00 00 	UNLINK;
ffa00a08:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a0a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00a0c:	10 00       	RTS;
ffa00a0e:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00a12:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00a16:	c6 2f       	JUMP.S 0xffa009a2 <_printf_hex_byte+0x36>;

ffa00a18 <_printf_hex>:
ffa00a18:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00a1a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00a1e:	28 32       	P5 = R0;
ffa00a20:	39 30       	R7 = R1;
ffa00a22:	00 e3 5b 01 	CALL 0xffa00cd8 <_strlen_>;
ffa00a26:	10 30       	R2 = R0;
ffa00a28:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00a2c:	02 09       	CC = R2 <= R0;
ffa00a2e:	47 10       	IF !CC JUMP 0xffa00abc <_printf_hex+0xa4>;
ffa00a30:	02 0d       	CC = R2 <= 0x0;
ffa00a32:	4a 18       	IF CC JUMP 0xffa00ac6 <_printf_hex+0xae>;
ffa00a34:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff901530 */
ffa00a38:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a3a:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00a3e:	01 32       	P0 = R1;
ffa00a40:	4a 91       	P2 = [P1];
ffa00a42:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a44:	68 98       	R0 = B[P5++] (X);
ffa00a46:	0a 08       	CC = R2 == R1;
ffa00a48:	82 5a       	P2 = P2 + P0;
ffa00a4a:	10 9b       	B[P2] = R0;
ffa00a4c:	f9 17       	IF !CC JUMP 0xffa00a3e <_printf_hex+0x26> (BP);
ffa00a4e:	02 32       	P0 = R2;
ffa00a50:	4a 91       	P2 = [P1];
ffa00a52:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a54:	1a 32       	P3 = R2;
ffa00a56:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00a58:	82 5a       	P2 = P2 + P0;
ffa00a5a:	10 9b       	B[P2] = R0;
ffa00a5c:	4a 91       	P2 = [P1];
ffa00a5e:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00a60:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00a64:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00a66:	9a 5a       	P2 = P2 + P3;
ffa00a68:	10 9b       	B[P2] = R0;
ffa00a6a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00a6c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00a6e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00a70:	b2 e0 10 50 	LSETUP(0xffa00a74 <_printf_hex+0x5c>, 0xffa00a90 <_printf_hex+0x78>) LC1 = P5;
ffa00a74:	07 30       	R0 = R7;
ffa00a76:	08 40       	R0 >>>= R1;
ffa00a78:	10 54       	R0 = R0 & R2;
ffa00a7a:	18 09       	CC = R0 <= R3;
ffa00a7c:	1e 1c       	IF CC JUMP 0xffa00ab8 <_printf_hex+0xa0> (BP);
ffa00a7e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00a80:	4a 91       	P2 = [P1];
ffa00a82:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa00a86:	0c e1 e0 0b 	P4.L = 0xbe0;		/* (3040)	P4=0xff900be0 <_printf_out> */
ffa00a8a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00a8c:	82 5a       	P2 = P2 + P0;
ffa00a8e:	10 9b       	B[P2] = R0;
ffa00a90:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00a92:	62 91       	P2 = [P4];
ffa00a94:	4b 32       	P1 = P3;
ffa00a96:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00a98:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00a9a:	8a 5a       	P2 = P2 + P1;
ffa00a9c:	10 9b       	B[P2] = R0;
ffa00a9e:	62 91       	P2 = [P4];
ffa00aa0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00aa2:	8a 5a       	P2 = P2 + P1;
ffa00aa4:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00aa8:	20 91       	R0 = [P4];
ffa00aaa:	ff e3 f7 fe 	CALL 0xffa00898 <_uart_str>;
ffa00aae:	01 e8 00 00 	UNLINK;
ffa00ab2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ab4:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00ab6:	10 00       	RTS;
ffa00ab8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00aba:	e3 2f       	JUMP.S 0xffa00a80 <_printf_hex+0x68>;
ffa00abc:	01 e8 00 00 	UNLINK;
ffa00ac0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ac2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00ac4:	10 00       	RTS;
ffa00ac6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900be0 <_printf_out> */
ffa00aca:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00ace:	c0 2f       	JUMP.S 0xffa00a4e <_printf_hex+0x36>;

ffa00ad0 <_printf_int>:
ffa00ad0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00ad2:	01 0c       	CC = R1 == 0x0;
ffa00ad4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ad8:	28 32       	P5 = R0;
ffa00ada:	39 30       	R7 = R1;
ffa00adc:	41 14       	IF !CC JUMP 0xffa00b5e <_printf_int+0x8e> (BP);
ffa00ade:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00ae2:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00ae6:	5a 91       	P2 = [P3];
ffa00ae8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00aea:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00aec:	10 9b       	B[P2] = R0;
ffa00aee:	45 30       	R0 = P5;
ffa00af0:	00 e3 f4 00 	CALL 0xffa00cd8 <_strlen_>;
ffa00af4:	c6 50       	R3 = R6 + R0;
ffa00af6:	10 30       	R2 = R0;
ffa00af8:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00afc:	03 09       	CC = R3 <= R0;
ffa00afe:	4e 10       	IF !CC JUMP 0xffa00b9a <_printf_int+0xca>;
ffa00b00:	02 0d       	CC = R2 <= 0x0;
ffa00b02:	79 18       	IF CC JUMP 0xffa00bf4 <_printf_int+0x124>;
ffa00b04:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00b08:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b0a:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00b0e:	09 32       	P1 = R1;
ffa00b10:	42 91       	P2 = [P0];
ffa00b12:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b14:	68 98       	R0 = B[P5++] (X);
ffa00b16:	0a 08       	CC = R2 == R1;
ffa00b18:	8a 5a       	P2 = P2 + P1;
ffa00b1a:	10 9b       	B[P2] = R0;
ffa00b1c:	f9 17       	IF !CC JUMP 0xffa00b0e <_printf_int+0x3e> (BP);
ffa00b1e:	06 0d       	CC = R6 <= 0x0;
ffa00b20:	12 18       	IF CC JUMP 0xffa00b44 <_printf_int+0x74>;
ffa00b22:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b24:	00 91       	R0 = [P0];
ffa00b26:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00b2a:	5a 91 00 00 
ffa00b2e:	08 50       	R0 = R0 + R1;
ffa00b30:	08 32       	P1 = R0;
ffa00b32:	0e 52       	R0 = R6 - R1;
ffa00b34:	28 32       	P5 = R0;
ffa00b36:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b38:	0e 08       	CC = R6 == R1;
ffa00b3a:	aa 5a       	P2 = P2 + P5;
ffa00b3c:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00b40:	08 9b       	B[P1] = R0;
ffa00b42:	f1 17       	IF !CC JUMP 0xffa00b24 <_printf_int+0x54> (BP);
ffa00b44:	0b 32       	P1 = R3;
ffa00b46:	42 91       	P2 = [P0];
ffa00b48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b4a:	91 5a       	P2 = P1 + P2;
ffa00b4c:	10 9b       	B[P2] = R0;
ffa00b4e:	00 91       	R0 = [P0];
ffa00b50:	ff e3 a4 fe 	CALL 0xffa00898 <_uart_str>;
ffa00b54:	01 e8 00 00 	UNLINK;
ffa00b58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b5a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b5c:	10 00       	RTS;
ffa00b5e:	01 0d       	CC = R1 <= 0x0;
ffa00b60:	22 18       	IF CC JUMP 0xffa00ba4 <_printf_int+0xd4>;
ffa00b62:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00b66:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00b68:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00b6c:	05 20       	JUMP.S 0xffa00b76 <_printf_int+0xa6>;
ffa00b6e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00b72:	06 08       	CC = R6 == R0;
ffa00b74:	bd 1b       	IF CC JUMP 0xffa00aee <_printf_int+0x1e>;
ffa00b76:	07 30       	R0 = R7;
ffa00b78:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b7a:	00 e3 83 00 	CALL 0xffa00c80 <_mod>;
ffa00b7e:	0e 32       	P1 = R6;
ffa00b80:	5a 91       	P2 = [P3];
ffa00b82:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b84:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b86:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b88:	8a 5a       	P2 = P2 + P1;
ffa00b8a:	10 9b       	B[P2] = R0;
ffa00b8c:	07 30       	R0 = R7;
ffa00b8e:	00 e3 6b 00 	CALL 0xffa00c64 <_div>;
ffa00b92:	00 0d       	CC = R0 <= 0x0;
ffa00b94:	38 30       	R7 = R0;
ffa00b96:	ec 17       	IF !CC JUMP 0xffa00b6e <_printf_int+0x9e> (BP);
ffa00b98:	ab 2f       	JUMP.S 0xffa00aee <_printf_int+0x1e>;
ffa00b9a:	01 e8 00 00 	UNLINK;
ffa00b9e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ba0:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00ba2:	10 00       	RTS;
ffa00ba4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ba6:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa00ba8:	f8 4f       	R0 <<= 0x1f;
ffa00baa:	f8 53       	R7 = R0 - R7;
ffa00bac:	07 0d       	CC = R7 <= 0x0;
ffa00bae:	2c 18       	IF CC JUMP 0xffa00c06 <_printf_int+0x136>;
ffa00bb0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00bb4:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00bb6:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00bba:	05 20       	JUMP.S 0xffa00bc4 <_printf_int+0xf4>;
ffa00bbc:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00bc0:	4c 08       	CC = P4 == P1;
ffa00bc2:	1e 18       	IF CC JUMP 0xffa00bfe <_printf_int+0x12e>;
ffa00bc4:	07 30       	R0 = R7;
ffa00bc6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00bc8:	00 e3 5c 00 	CALL 0xffa00c80 <_mod>;
ffa00bcc:	5a 91       	P2 = [P3];
ffa00bce:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00bd0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00bd2:	a2 5a       	P2 = P2 + P4;
ffa00bd4:	10 9b       	B[P2] = R0;
ffa00bd6:	07 30       	R0 = R7;
ffa00bd8:	00 e3 46 00 	CALL 0xffa00c64 <_div>;
ffa00bdc:	00 0d       	CC = R0 <= 0x0;
ffa00bde:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00be0:	38 30       	R7 = R0;
ffa00be2:	ed 17       	IF !CC JUMP 0xffa00bbc <_printf_int+0xec> (BP);
ffa00be4:	74 30       	R6 = P4;
ffa00be6:	4c 32       	P1 = P4;
ffa00be8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00bea:	5a 91       	P2 = [P3];
ffa00bec:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00bee:	8a 5a       	P2 = P2 + P1;
ffa00bf0:	10 9b       	B[P2] = R0;
ffa00bf2:	7e 2f       	JUMP.S 0xffa00aee <_printf_int+0x1e>;
ffa00bf4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00bf8:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00bfc:	91 2f       	JUMP.S 0xffa00b1e <_printf_int+0x4e>;
ffa00bfe:	4c 32       	P1 = P4;
ffa00c00:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00c04:	f3 2f       	JUMP.S 0xffa00bea <_printf_int+0x11a>;
ffa00c06:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00c0a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00c0c:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00c0e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00c12:	ec 2f       	JUMP.S 0xffa00bea <_printf_int+0x11a>;

ffa00c14 <_printf_ip>:
ffa00c14:	70 05       	[--SP] = (R7:6);
ffa00c16:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c1a:	39 30       	R7 = R1;
ffa00c1c:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00c20:	49 43       	R1 = R1.B (Z);
ffa00c22:	ff e3 57 ff 	CALL 0xffa00ad0 <_printf_int>;
ffa00c26:	06 e1 44 00 	R6.L = 0x44;		/* ( 68)	R6=0xff900044(-7339964) */
ffa00c2a:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00c2e:	49 43       	R1 = R1.B (Z);
ffa00c30:	06 30       	R0 = R6;
ffa00c32:	ff e3 4f ff 	CALL 0xffa00ad0 <_printf_int>;
ffa00c36:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00c3a:	49 43       	R1 = R1.B (Z);
ffa00c3c:	06 30       	R0 = R6;
ffa00c3e:	c7 4e       	R7 >>= 0x18;
ffa00c40:	ff e3 48 ff 	CALL 0xffa00ad0 <_printf_int>;
ffa00c44:	0f 30       	R1 = R7;
ffa00c46:	06 30       	R0 = R6;
ffa00c48:	ff e3 44 ff 	CALL 0xffa00ad0 <_printf_int>;
ffa00c4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00c50:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa00c54:	ff e3 7c fe 	CALL 0xffa0094c <_printf_str>;
ffa00c58:	01 e8 00 00 	UNLINK;
ffa00c5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c5e:	30 05       	(R7:6) = [SP++];
ffa00c60:	10 00       	RTS;
	...

ffa00c64 <_div>:
ffa00c64:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c68:	08 4f       	R0 <<= 0x1;
ffa00c6a:	48 42       	DIVS (R0, R1);
ffa00c6c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa00c6e:	b2 e0 03 20 	LSETUP(0xffa00c72 <_div+0xe>, 0xffa00c74 <_div+0x10>) LC1 = P2;
ffa00c72:	08 42       	DIVQ (R0, R1);
ffa00c74:	00 00       	NOP;
ffa00c76:	80 42       	R0 = R0.L (X);
ffa00c78:	01 e8 00 00 	UNLINK;
ffa00c7c:	10 00       	RTS;
	...

ffa00c80 <_mod>:
ffa00c80:	70 05       	[--SP] = (R7:6);
ffa00c82:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c86:	30 30       	R6 = R0;
ffa00c88:	39 30       	R7 = R1;
ffa00c8a:	ff e3 ed ff 	CALL 0xffa00c64 <_div>;
ffa00c8e:	c7 40       	R7 *= R0;
ffa00c90:	01 e8 00 00 	UNLINK;
ffa00c94:	be 53       	R6 = R6 - R7;
ffa00c96:	06 30       	R0 = R6;
ffa00c98:	30 05       	(R7:6) = [SP++];
ffa00c9a:	10 00       	RTS;

ffa00c9c <_memcpy_>:
ffa00c9c:	02 0d       	CC = R2 <= 0x0;
ffa00c9e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ca2:	08 32       	P1 = R0;
ffa00ca4:	11 32       	P2 = R1;
ffa00ca6:	08 18       	IF CC JUMP 0xffa00cb6 <_memcpy_+0x1a>;
ffa00ca8:	00 00       	NOP;
ffa00caa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cac:	09 64       	R1 += 0x1;		/* (  1) */
ffa00cae:	48 98       	R0 = B[P1++] (X);
ffa00cb0:	0a 08       	CC = R2 == R1;
ffa00cb2:	10 9a       	B[P2++] = R0;
ffa00cb4:	fc 17       	IF !CC JUMP 0xffa00cac <_memcpy_+0x10> (BP);
ffa00cb6:	01 e8 00 00 	UNLINK;
ffa00cba:	10 00       	RTS;

ffa00cbc <_memset_>:
ffa00cbc:	02 0d       	CC = R2 <= 0x0;
ffa00cbe:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cc2:	10 32       	P2 = R0;
ffa00cc4:	06 18       	IF CC JUMP 0xffa00cd0 <_memset_+0x14>;
ffa00cc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cc8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00cca:	02 08       	CC = R2 == R0;
ffa00ccc:	11 9a       	B[P2++] = R1;
ffa00cce:	fd 17       	IF !CC JUMP 0xffa00cc8 <_memset_+0xc> (BP);
ffa00cd0:	01 e8 00 00 	UNLINK;
ffa00cd4:	10 00       	RTS;
	...

ffa00cd8 <_strlen_>:
ffa00cd8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cdc:	10 32       	P2 = R0;
ffa00cde:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ce0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00ce4:	b2 e0 06 10 	LSETUP(0xffa00ce8 <_strlen_+0x10>, 0xffa00cf0 <_strlen_+0x18>) LC1 = P1;
ffa00ce8:	50 99       	R0 = B[P2] (X);
ffa00cea:	00 0c       	CC = R0 == 0x0;
ffa00cec:	04 18       	IF CC JUMP 0xffa00cf4 <_strlen_+0x1c>;
ffa00cee:	09 64       	R1 += 0x1;		/* (  1) */
ffa00cf0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cf2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cf4:	01 30       	R0 = R1;
ffa00cf6:	01 e8 00 00 	UNLINK;
ffa00cfa:	10 00       	RTS;

ffa00cfc <_strcpy_>:
ffa00cfc:	12 32       	P2 = R2;
ffa00cfe:	c5 04       	[--SP] = (P5:5);
ffa00d00:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d04:	29 32       	P5 = R1;
ffa00d06:	00 32       	P0 = R0;
ffa00d08:	51 99       	R1 = B[P2] (X);
ffa00d0a:	08 43       	R0 = R1.B (X);
ffa00d0c:	00 0c       	CC = R0 == 0x0;
ffa00d0e:	17 18       	IF CC JUMP 0xffa00d3c <_strcpy_+0x40>;
ffa00d10:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d12:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d14:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00d18:	b2 e0 09 10 	LSETUP(0xffa00d1c <_strcpy_+0x20>, 0xffa00d2a <_strcpy_+0x2e>) LC1 = P1;
ffa00d1c:	01 9a       	B[P0++] = R1;
ffa00d1e:	51 99       	R1 = B[P2] (X);
ffa00d20:	08 43       	R0 = R1.B (X);
ffa00d22:	00 0c       	CC = R0 == 0x0;
ffa00d24:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00d26:	03 18       	IF CC JUMP 0xffa00d2c <_strcpy_+0x30>;
ffa00d28:	00 00       	NOP;
ffa00d2a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d2c:	01 e8 00 00 	UNLINK;
ffa00d30:	28 91       	R0 = [P5];
ffa00d32:	10 50       	R0 = R0 + R2;
ffa00d34:	28 93       	[P5] = R0;
ffa00d36:	40 30       	R0 = P0;
ffa00d38:	85 04       	(P5:5) = [SP++];
ffa00d3a:	10 00       	RTS;
ffa00d3c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d3e:	f7 2f       	JUMP.S 0xffa00d2c <_strcpy_+0x30>;

ffa00d40 <_strprepend>:
ffa00d40:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00d42:	21 32       	P4 = R1;
ffa00d44:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d48:	38 30       	R7 = R0;
ffa00d4a:	02 30       	R0 = R2;
ffa00d4c:	2a 32       	P5 = R2;
ffa00d4e:	ff e3 c5 ff 	CALL 0xffa00cd8 <_strlen_>;
ffa00d52:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00d56:	20 91 00 00 
ffa00d5a:	02 0d       	CC = R2 <= 0x0;
ffa00d5c:	0a 18       	IF CC JUMP 0xffa00d70 <_strprepend+0x30>;
ffa00d5e:	07 52       	R0 = R7 - R0;
ffa00d60:	10 32       	P2 = R0;
ffa00d62:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d64:	09 64       	R1 += 0x1;		/* (  1) */
ffa00d66:	68 98       	R0 = B[P5++] (X);
ffa00d68:	0a 08       	CC = R2 == R1;
ffa00d6a:	10 9a       	B[P2++] = R0;
ffa00d6c:	fc 17       	IF !CC JUMP 0xffa00d64 <_strprepend+0x24> (BP);
ffa00d6e:	20 91       	R0 = [P4];
ffa00d70:	01 e8 00 00 	UNLINK;
ffa00d74:	07 52       	R0 = R7 - R0;
ffa00d76:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00d78:	10 00       	RTS;
	...

ffa00d7c <_strcmp>:
ffa00d7c:	10 32       	P2 = R0;
ffa00d7e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d82:	01 32       	P0 = R1;
ffa00d84:	51 99       	R1 = B[P2] (X);
ffa00d86:	01 0c       	CC = R1 == 0x0;
ffa00d88:	1b 18       	IF CC JUMP 0xffa00dbe <_strcmp+0x42>;
ffa00d8a:	00 00       	NOP;
ffa00d8c:	00 00       	NOP;
ffa00d8e:	00 00       	NOP;
ffa00d90:	40 99       	R0 = B[P0] (X);
ffa00d92:	00 0c       	CC = R0 == 0x0;
ffa00d94:	15 18       	IF CC JUMP 0xffa00dbe <_strcmp+0x42>;
ffa00d96:	01 08       	CC = R1 == R0;
ffa00d98:	1c 10       	IF !CC JUMP 0xffa00dd0 <_strcmp+0x54>;
ffa00d9a:	4a 32       	P1 = P2;
ffa00d9c:	50 32       	P2 = P0;
ffa00d9e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00da0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00da2:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00da6:	49 99       	R1 = B[P1] (X);
ffa00da8:	01 0c       	CC = R1 == 0x0;
ffa00daa:	0a 18       	IF CC JUMP 0xffa00dbe <_strcmp+0x42>;
ffa00dac:	00 00       	NOP;
ffa00dae:	00 00       	NOP;
ffa00db0:	00 00       	NOP;
ffa00db2:	50 99       	R0 = B[P2] (X);
ffa00db4:	00 0c       	CC = R0 == 0x0;
ffa00db6:	04 18       	IF CC JUMP 0xffa00dbe <_strcmp+0x42>;
ffa00db8:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00dba:	40 0c       	CC = P0 == 0x0;
ffa00dbc:	05 10       	IF !CC JUMP 0xffa00dc6 <_strcmp+0x4a>;
ffa00dbe:	01 e8 00 00 	UNLINK;
ffa00dc2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00dc4:	10 00       	RTS;
ffa00dc6:	01 08       	CC = R1 == R0;
ffa00dc8:	04 10       	IF !CC JUMP 0xffa00dd0 <_strcmp+0x54>;
ffa00dca:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00dcc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00dce:	ec 2f       	JUMP.S 0xffa00da6 <_strcmp+0x2a>;
ffa00dd0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dd2:	01 e8 00 00 	UNLINK;
ffa00dd6:	10 00       	RTS;

ffa00dd8 <_substr>:
ffa00dd8:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00dda:	20 32       	P4 = R0;
ffa00ddc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00de0:	11 32       	P2 = R1;
ffa00de2:	32 30       	R6 = R2;
ffa00de4:	61 99       	R1 = B[P4] (X);
ffa00de6:	01 0c       	CC = R1 == 0x0;
ffa00de8:	14 18       	IF CC JUMP 0xffa00e10 <_substr+0x38>;
ffa00dea:	00 00       	NOP;
ffa00dec:	00 00       	NOP;
ffa00dee:	00 00       	NOP;
ffa00df0:	50 99       	R0 = B[P2] (X);
ffa00df2:	00 0c       	CC = R0 == 0x0;
ffa00df4:	0e 18       	IF CC JUMP 0xffa00e10 <_substr+0x38>;
ffa00df6:	02 0d       	CC = R2 <= 0x0;
ffa00df8:	0c 18       	IF CC JUMP 0xffa00e10 <_substr+0x38>;
ffa00dfa:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00dfc:	01 08       	CC = R1 == R0;
ffa00dfe:	0f 18       	IF CC JUMP 0xffa00e1c <_substr+0x44>;
ffa00e00:	00 00       	NOP;
ffa00e02:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00e04:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00e06:	50 99       	R0 = B[P2] (X);
ffa00e08:	00 0c       	CC = R0 == 0x0;
ffa00e0a:	03 18       	IF CC JUMP 0xffa00e10 <_substr+0x38>;
ffa00e0c:	1e 09       	CC = R6 <= R3;
ffa00e0e:	f7 17       	IF !CC JUMP 0xffa00dfc <_substr+0x24> (BP);
ffa00e10:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00e12:	01 e8 00 00 	UNLINK;
ffa00e16:	40 30       	R0 = P0;
ffa00e18:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e1a:	10 00       	RTS;
ffa00e1c:	52 30       	R2 = P2;
ffa00e1e:	3b 30       	R7 = R3;
ffa00e20:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00e22:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00e24:	12 32       	P2 = R2;
ffa00e26:	07 32       	P0 = R7;
ffa00e28:	4c 32       	P1 = P4;
ffa00e2a:	6c 32       	P5 = P4;
ffa00e2c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e2e:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00e30:	02 20       	JUMP.S 0xffa00e34 <_substr+0x5c>;
ffa00e32:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00e34:	4b 99       	R3 = B[P1] (X);
ffa00e36:	50 99       	R0 = B[P2] (X);
ffa00e38:	03 08       	CC = R3 == R0;
ffa00e3a:	0e 10       	IF !CC JUMP 0xffa00e56 <_substr+0x7e>;
ffa00e3c:	03 0c       	CC = R3 == 0x0;
ffa00e3e:	0c 18       	IF CC JUMP 0xffa00e56 <_substr+0x7e>;
ffa00e40:	00 00       	NOP;
ffa00e42:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e44:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00e46:	68 98       	R0 = B[P5++] (X);
ffa00e48:	00 0c       	CC = R0 == 0x0;
ffa00e4a:	f4 17       	IF !CC JUMP 0xffa00e32 <_substr+0x5a> (BP);
ffa00e4c:	01 e8 00 00 	UNLINK;
ffa00e50:	40 30       	R0 = P0;
ffa00e52:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e54:	10 00       	RTS;
ffa00e56:	12 32       	P2 = R2;
ffa00e58:	1f 30       	R3 = R7;
ffa00e5a:	d6 2f       	JUMP.S 0xffa00e06 <_substr+0x2e>;

ffa00e5c <_sprintf_int>:
ffa00e5c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00e5e:	01 0c       	CC = R1 == 0x0;
ffa00e60:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e64:	00 34       	I0 = R0;
ffa00e66:	11 30       	R2 = R1;
ffa00e68:	1a 14       	IF !CC JUMP 0xffa00e9c <_sprintf_int+0x40> (BP);
ffa00e6a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00e6e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00e72:	5a 91       	P2 = [P3];
ffa00e74:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e76:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00e78:	10 9b       	B[P2] = R0;
ffa00e7a:	88 32       	P1 = I0;
ffa00e7c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e7e:	0b 52       	R0 = R3 - R1;
ffa00e80:	00 32       	P0 = R0;
ffa00e82:	5a 91       	P2 = [P3];
ffa00e84:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e86:	99 08       	CC = R1 < R3;
ffa00e88:	82 5a       	P2 = P2 + P0;
ffa00e8a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00e8e:	08 9a       	B[P1++] = R0;
ffa00e90:	f7 1f       	IF CC JUMP 0xffa00e7e <_sprintf_int+0x22> (BP);
ffa00e92:	01 e8 00 00 	UNLINK;
ffa00e96:	03 30       	R0 = R3;
ffa00e98:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00e9a:	10 00       	RTS;
ffa00e9c:	01 0d       	CC = R1 <= 0x0;
ffa00e9e:	2d 18       	IF CC JUMP 0xffa00ef8 <_sprintf_int+0x9c>;
ffa00ea0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00ea4:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00ea8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00eaa:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00eae:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00eb2:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00eb4:	b2 e0 20 50 	LSETUP(0xffa00eb8 <_sprintf_int+0x5c>, 0xffa00ef4 <_sprintf_int+0x98>) LC1 = P5;
ffa00eb8:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00ebc:	59 91 00 00 
ffa00ec0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00ec4:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00ec8:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00ecc:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00ed0:	0b c4 00 00 	R0 = (A0 += A1);
ffa00ed4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00ed8:	10 4d       	R0 >>>= 0x2;
ffa00eda:	08 52       	R0 = R0 - R1;
ffa00edc:	00 32       	P0 = R0;
ffa00ede:	13 32       	P2 = R3;
ffa00ee0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00ee2:	40 0d       	CC = P0 <= 0x0;
ffa00ee4:	51 5a       	P1 = P1 + P2;
ffa00ee6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00ee8:	92 5a       	P2 = P2 << 0x1;
ffa00eea:	4a 30       	R1 = P2;
ffa00eec:	0a 52       	R0 = R2 - R1;
ffa00eee:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ef0:	08 9b       	B[P1] = R0;
ffa00ef2:	39 18       	IF CC JUMP 0xffa00f64 <_sprintf_int+0x108>;
ffa00ef4:	50 30       	R2 = P0;
ffa00ef6:	c2 2f       	JUMP.S 0xffa00e7a <_sprintf_int+0x1e>;
ffa00ef8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00efa:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00efc:	f8 4f       	R0 <<= 0x1f;
ffa00efe:	90 52       	R2 = R0 - R2;
ffa00f00:	02 0d       	CC = R2 <= 0x0;
ffa00f02:	3c 18       	IF CC JUMP 0xffa00f7a <_sprintf_int+0x11e>;
ffa00f04:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00f08:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00f0c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00f0e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00f12:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00f16:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00f18:	b2 e0 1f 50 	LSETUP(0xffa00f1c <_sprintf_int+0xc0>, 0xffa00f56 <_sprintf_int+0xfa>) LC1 = P5;
ffa00f1c:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00f20:	59 91 00 00 
ffa00f24:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00f28:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00f2c:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00f30:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00f34:	0b c4 00 00 	R0 = (A0 += A1);
ffa00f38:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00f3c:	10 4d       	R0 >>>= 0x2;
ffa00f3e:	08 52       	R0 = R0 - R1;
ffa00f40:	00 32       	P0 = R0;
ffa00f42:	61 5a       	P1 = P1 + P4;
ffa00f44:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00f46:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00f48:	92 5a       	P2 = P2 << 0x1;
ffa00f4a:	4a 30       	R1 = P2;
ffa00f4c:	0a 52       	R0 = R2 - R1;
ffa00f4e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f50:	40 0d       	CC = P0 <= 0x0;
ffa00f52:	08 9b       	B[P1] = R0;
ffa00f54:	0f 18       	IF CC JUMP 0xffa00f72 <_sprintf_int+0x116>;
ffa00f56:	50 30       	R2 = P0;
ffa00f58:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00f5a:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00f5c:	5a 91       	P2 = [P3];
ffa00f5e:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00f60:	8a 5a       	P2 = P2 + P1;
ffa00f62:	10 9b       	B[P2] = R0;
ffa00f64:	03 0d       	CC = R3 <= 0x0;
ffa00f66:	8a 17       	IF !CC JUMP 0xffa00e7a <_sprintf_int+0x1e> (BP);
ffa00f68:	01 e8 00 00 	UNLINK;
ffa00f6c:	03 30       	R0 = R3;
ffa00f6e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f70:	10 00       	RTS;
ffa00f72:	5c 30       	R3 = P4;
ffa00f74:	4c 32       	P1 = P4;
ffa00f76:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00f78:	f2 2f       	JUMP.S 0xffa00f5c <_sprintf_int+0x100>;
ffa00f7a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00f7e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00f80:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00f82:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00f86:	eb 2f       	JUMP.S 0xffa00f5c <_sprintf_int+0x100>;

ffa00f88 <_sprintf_hex>:
ffa00f88:	10 32       	P2 = R0;
ffa00f8a:	78 05       	[--SP] = (R7:7);
ffa00f8c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f8e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f92:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00f94:	10 9b       	B[P2] = R0;
ffa00f96:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f9a:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00f9e:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00fa0:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00fa2:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00fa4:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00fa6:	b2 e0 09 10 	LSETUP(0xffa00faa <_sprintf_hex+0x22>, 0xffa00fb8 <_sprintf_hex+0x30>) LC1 = P1;
ffa00faa:	01 30       	R0 = R1;
ffa00fac:	10 40       	R0 >>>= R2;
ffa00fae:	18 54       	R0 = R0 & R3;
ffa00fb0:	38 09       	CC = R0 <= R7;
ffa00fb2:	09 1c       	IF CC JUMP 0xffa00fc4 <_sprintf_hex+0x3c> (BP);
ffa00fb4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fb6:	10 9a       	B[P2++] = R0;
ffa00fb8:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00fba:	01 e8 00 00 	UNLINK;
ffa00fbe:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00fc0:	38 05       	(R7:7) = [SP++];
ffa00fc2:	10 00       	RTS;
ffa00fc4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00fc6:	f8 2f       	JUMP.S 0xffa00fb6 <_sprintf_hex+0x2e>;

ffa00fc8 <_strprintf_int>:
ffa00fc8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00fca:	29 32       	P5 = R1;
ffa00fcc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fd0:	0a 30       	R1 = R2;
ffa00fd2:	38 30       	R7 = R0;
ffa00fd4:	ff e3 44 ff 	CALL 0xffa00e5c <_sprintf_int>;
ffa00fd8:	29 91       	R1 = [P5];
ffa00fda:	41 50       	R1 = R1 + R0;
ffa00fdc:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fe0:	29 93 00 00 
ffa00fe4:	01 e8 00 00 	UNLINK;
ffa00fe8:	07 30       	R0 = R7;
ffa00fea:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fec:	10 00       	RTS;
	...

ffa00ff0 <_strprintf_hex>:
ffa00ff0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00ff2:	29 32       	P5 = R1;
ffa00ff4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ff8:	0a 30       	R1 = R2;
ffa00ffa:	38 30       	R7 = R0;
ffa00ffc:	ff e3 c6 ff 	CALL 0xffa00f88 <_sprintf_hex>;
ffa01000:	29 91       	R1 = [P5];
ffa01002:	41 50       	R1 = R1 + R0;
ffa01004:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01008:	29 93 00 00 
ffa0100c:	01 e8 00 00 	UNLINK;
ffa01010:	07 30       	R0 = R7;
ffa01012:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01014:	10 00       	RTS;
	...

ffa01018 <_atoi>:
ffa01018:	08 32       	P1 = R0;
ffa0101a:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa0101c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0101e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01022:	48 99       	R0 = B[P1] (X);
ffa01024:	10 08       	CC = R0 == R2;
ffa01026:	25 18       	IF CC JUMP 0xffa01070 <_atoi+0x58>;
ffa01028:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0102a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0102c:	41 32       	P0 = P1;
ffa0102e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01030:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01032:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01034:	12 20       	JUMP.S 0xffa01058 <_atoi+0x40>;
ffa01036:	8b 08       	CC = R3 < R1;
ffa01038:	16 10       	IF !CC JUMP 0xffa01064 <_atoi+0x4c>;
ffa0103a:	10 43       	R0 = R2.B (X);
ffa0103c:	28 32       	P5 = R0;
ffa0103e:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01040:	40 99       	R0 = B[P0] (X);
ffa01042:	80 66       	R0 += -0x30;		/* (-48) */
ffa01044:	40 43       	R0 = R0.B (Z);
ffa01046:	aa 5a       	P2 = P2 + P5;
ffa01048:	10 0a       	CC = R0 <= R2 (IU);
ffa0104a:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0104c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0104e:	03 14       	IF !CC JUMP 0xffa01054 <_atoi+0x3c> (BP);
ffa01050:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01052:	92 5a       	P2 = P2 << 0x1;
ffa01054:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01056:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01058:	4a 99       	R2 = B[P1] (X);
ffa0105a:	02 30       	R0 = R2;
ffa0105c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0105e:	40 43       	R0 = R0.B (Z);
ffa01060:	30 0a       	CC = R0 <= R6 (IU);
ffa01062:	ea 1f       	IF CC JUMP 0xffa01036 <_atoi+0x1e> (BP);
ffa01064:	42 30       	R0 = P2;
ffa01066:	f8 40       	R0 *= R7;
ffa01068:	01 e8 00 00 	UNLINK;
ffa0106c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0106e:	10 00       	RTS;
ffa01070:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01072:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01074:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01076:	db 2f       	JUMP.S 0xffa0102c <_atoi+0x14>;

ffa01078 <_udelay>:
ffa01078:	00 0d       	CC = R0 <= 0x0;
ffa0107a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0107e:	0b 18       	IF CC JUMP 0xffa01094 <_udelay+0x1c>;
ffa01080:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01082:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01086:	b2 e0 03 20 	LSETUP(0xffa0108a <_udelay+0x12>, 0xffa0108c <_udelay+0x14>) LC1 = P2;
ffa0108a:	00 00       	NOP;
ffa0108c:	00 00       	NOP;
ffa0108e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01090:	08 08       	CC = R0 == R1;
ffa01092:	f8 17       	IF !CC JUMP 0xffa01082 <_udelay+0xa> (BP);
ffa01094:	01 e8 00 00 	UNLINK;
ffa01098:	10 00       	RTS;
	...

ffa0109c <_spi_delay>:
ffa0109c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa010a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa010a4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa010a8:	00 00       	NOP;
ffa010aa:	50 95       	R0 = W[P2] (X);
ffa010ac:	c0 42       	R0 = R0.L (Z);
ffa010ae:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa010b0:	fc 17       	IF !CC JUMP 0xffa010a8 <_spi_delay+0xc> (BP);
ffa010b2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa010b4:	0a 10       	IF !CC JUMP 0xffa010c8 <_spi_delay+0x2c>;
ffa010b6:	00 00       	NOP;
ffa010b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa010bc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa010c0:	00 00       	NOP;
ffa010c2:	50 95       	R0 = W[P2] (X);
ffa010c4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa010c6:	fd 1f       	IF CC JUMP 0xffa010c0 <_spi_delay+0x24> (BP);
ffa010c8:	01 e8 00 00 	UNLINK;
ffa010cc:	10 00       	RTS;
	...

ffa010d0 <_spi_write_register>:
ffa010d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa010d4:	ed 05       	[--SP] = (R7:5, P5:5);
ffa010d6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010da:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa010de:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010e2:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa010e6:	15 97 00 00 
ffa010ea:	24 00       	SSYNC;
ffa010ec:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa010f0:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa010f2:	40 43       	R0 = R0.B (Z);
ffa010f4:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa010f8:	28 97       	W[P5] = R0;
ffa010fa:	ff e3 d1 ff 	CALL 0xffa0109c <_spi_delay>;
ffa010fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01102:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01106:	76 43       	R6 = R6.B (Z);
ffa01108:	57 95       	R7 = W[P2] (X);
ffa0110a:	2e 97       	W[P5] = R6;
ffa0110c:	ff e3 c8 ff 	CALL 0xffa0109c <_spi_delay>;
ffa01110:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01114:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01118:	15 97       	W[P2] = R5;
ffa0111a:	24 00       	SSYNC;
ffa0111c:	7f 43       	R7 = R7.B (Z);
ffa0111e:	01 e8 00 00 	UNLINK;
ffa01122:	07 30       	R0 = R7;
ffa01124:	ad 05       	(R7:5, P5:5) = [SP++];
ffa01126:	10 00       	RTS;

ffa01128 <_spi_read_register>:
ffa01128:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0112c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0112e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01132:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa01136:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0113a:	17 97       	W[P2] = R7;
ffa0113c:	24 00       	SSYNC;
ffa0113e:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa01142:	40 43       	R0 = R0.B (Z);
ffa01144:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa01148:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0114c:	20 97       	W[P4] = R0;
ffa0114e:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa01152:	ff e3 a5 ff 	CALL 0xffa0109c <_spi_delay>;
ffa01156:	68 95       	R0 = W[P5] (X);
ffa01158:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0115a:	20 97       	W[P4] = R0;
ffa0115c:	ff e3 a0 ff 	CALL 0xffa0109c <_spi_delay>;
ffa01160:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01164:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01168:	68 95       	R0 = W[P5] (X);
ffa0116a:	17 97       	W[P2] = R7;
ffa0116c:	24 00       	SSYNC;
ffa0116e:	01 e8 00 00 	UNLINK;
ffa01172:	40 43       	R0 = R0.B (Z);
ffa01174:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01176:	10 00       	RTS;

ffa01178 <_spi_read_register_status>:
ffa01178:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0117c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0117e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01182:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa01186:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0118a:	19 32       	P3 = R1;
ffa0118c:	16 97       	W[P2] = R6;
ffa0118e:	24 00       	SSYNC;
ffa01190:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa01194:	40 43       	R0 = R0.B (Z);
ffa01196:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0119a:	20 97       	W[P4] = R0;
ffa0119c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa011a0:	ff e3 7e ff 	CALL 0xffa0109c <_spi_delay>;
ffa011a4:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa011a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011aa:	6f 95       	R7 = W[P5] (X);
ffa011ac:	20 97       	W[P4] = R0;
ffa011ae:	ff e3 77 ff 	CALL 0xffa0109c <_spi_delay>;
ffa011b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011b6:	68 95       	R0 = W[P5] (X);
ffa011b8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011bc:	18 9b       	B[P3] = R0;
ffa011be:	16 97       	W[P2] = R6;
ffa011c0:	24 00       	SSYNC;
ffa011c2:	7f 43       	R7 = R7.B (Z);
ffa011c4:	01 e8 00 00 	UNLINK;
ffa011c8:	07 30       	R0 = R7;
ffa011ca:	b3 05       	(R7:6, P5:3) = [SP++];
ffa011cc:	10 00       	RTS;
	...

ffa011d0 <_spi_write_byte>:
ffa011d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011d4:	78 05       	[--SP] = (R7:7);
ffa011d6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011da:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa011de:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011e2:	17 97       	W[P2] = R7;
ffa011e4:	24 00       	SSYNC;
ffa011e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011ea:	40 43       	R0 = R0.B (Z);
ffa011ec:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa011f0:	10 97       	W[P2] = R0;
ffa011f2:	ff e3 55 ff 	CALL 0xffa0109c <_spi_delay>;
ffa011f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa011fa:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa011fe:	50 95       	R0 = W[P2] (X);
ffa01200:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01204:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01208:	17 97       	W[P2] = R7;
ffa0120a:	24 00       	SSYNC;
ffa0120c:	01 e8 00 00 	UNLINK;
ffa01210:	40 43       	R0 = R0.B (Z);
ffa01212:	38 05       	(R7:7) = [SP++];
ffa01214:	10 00       	RTS;
	...

ffa01218 <_spi_write_packet>:
ffa01218:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0121c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0121e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01222:	38 30       	R7 = R0;
ffa01224:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01228:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0122c:	10 97       	W[P2] = R0;
ffa0122e:	24 00       	SSYNC;
ffa01230:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01234:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01238:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0123c:	10 97       	W[P2] = R0;
ffa0123e:	ff e3 2f ff 	CALL 0xffa0109c <_spi_delay>;
ffa01242:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01246:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0124a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0124e:	10 97       	W[P2] = R0;
ffa01250:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01254:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01256:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0125a:	10 97       	W[P2] = R0;
ffa0125c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0125e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01260:	10 97       	W[P2] = R0;
ffa01262:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01264:	17 93       	[P2] = R7;
ffa01266:	24 00       	SSYNC;
ffa01268:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0126c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0126e:	10 97       	W[P2] = R0;
ffa01270:	01 20       	JUMP.S 0xffa01272 <_spi_write_packet+0x5a>;
	...
ffa0127a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa0127e:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa01282:	68 95       	R0 = W[P5] (X);
ffa01284:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01286:	f6 1f       	IF CC JUMP 0xffa01272 <_spi_write_packet+0x5a> (BP);
ffa01288:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0128c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01290:	50 95       	R0 = W[P2] (X);
ffa01292:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01294:	ef 17       	IF !CC JUMP 0xffa01272 <_spi_write_packet+0x5a> (BP);
ffa01296:	69 95       	R1 = W[P5] (X);
ffa01298:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0129a:	08 54       	R0 = R0 & R1;
ffa0129c:	00 0c       	CC = R0 == 0x0;
ffa0129e:	ea 17       	IF !CC JUMP 0xffa01272 <_spi_write_packet+0x5a> (BP);
ffa012a0:	ff e3 fe fe 	CALL 0xffa0109c <_spi_delay>;
ffa012a4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa012a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa012aa:	28 97       	W[P5] = R0;
ffa012ac:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa012b0:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa012b4:	10 97       	W[P2] = R0;
ffa012b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa012ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012bc:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa012c0:	10 97       	W[P2] = R0;
ffa012c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa012c6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012ca:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012ce:	10 97       	W[P2] = R0;
ffa012d0:	24 00       	SSYNC;
ffa012d2:	01 e8 00 00 	UNLINK;
ffa012d6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa012d8:	10 00       	RTS;
	...

ffa012dc <_spi_write_packet_noDMA>:
ffa012dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa012e0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa012e2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa012e6:	38 30       	R7 = R0;
ffa012e8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012f0:	10 97       	W[P2] = R0;
ffa012f2:	24 00       	SSYNC;
ffa012f4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa012f8:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa012fc:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01300:	28 97       	W[P5] = R0;
ffa01302:	27 32       	P4 = R7;
ffa01304:	ff e3 cc fe 	CALL 0xffa0109c <_spi_delay>;
ffa01308:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0130a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0130c:	60 98       	R0 = B[P4++] (X);
ffa0130e:	28 97       	W[P5] = R0;
ffa01310:	ff e3 c6 fe 	CALL 0xffa0109c <_spi_delay>;
ffa01314:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01316:	07 08       	CC = R7 == R0;
ffa01318:	f9 17       	IF !CC JUMP 0xffa0130a <_spi_write_packet_noDMA+0x2e> (BP);
ffa0131a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0131e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01322:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01326:	10 97       	W[P2] = R0;
ffa01328:	24 00       	SSYNC;
ffa0132a:	01 e8 00 00 	UNLINK;
ffa0132e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01330:	10 00       	RTS;
	...

ffa01334 <_spi_read_packet>:
ffa01334:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01336:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0133a:	20 32       	P4 = R0;
ffa0133c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01340:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01342:	ff e3 c7 fe 	CALL 0xffa010d0 <_spi_write_register>;
ffa01346:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0134a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0134e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01352:	10 97       	W[P2] = R0;
ffa01354:	24 00       	SSYNC;
ffa01356:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0135a:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa0135e:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01362:	28 97       	W[P5] = R0;
ffa01364:	5d 32       	P3 = P5;
ffa01366:	ff e3 9b fe 	CALL 0xffa0109c <_spi_delay>;
ffa0136a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0136c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0136e:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa01370:	1e 97       	W[P3] = R6;
ffa01372:	ff e3 95 fe 	CALL 0xffa0109c <_spi_delay>;
ffa01376:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01378:	68 95       	R0 = W[P5] (X);
ffa0137a:	20 9a       	B[P4++] = R0;
ffa0137c:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0137e:	78 43       	R0 = R7.B (Z);
ffa01380:	08 08       	CC = R0 == R1;
ffa01382:	f7 17       	IF !CC JUMP 0xffa01370 <_spi_read_packet+0x3c> (BP);
ffa01384:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01388:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0138c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01390:	10 97       	W[P2] = R0;
ffa01392:	24 00       	SSYNC;
ffa01394:	01 e8 00 00 	UNLINK;
ffa01398:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0139a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0139c:	10 00       	RTS;
	...

ffa013a0 <_spi_read_packet_nocheck>:
ffa013a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa013a4:	78 05       	[--SP] = (R7:7);
ffa013a6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa013aa:	38 30       	R7 = R0;
ffa013ac:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa013b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013b4:	10 97       	W[P2] = R0;
ffa013b6:	24 00       	SSYNC;
ffa013b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa013bc:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa013c0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa013c4:	10 97       	W[P2] = R0;
ffa013c6:	ff e3 6b fe 	CALL 0xffa0109c <_spi_delay>;
ffa013ca:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa013ce:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa013d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa013d8:	08 97       	W[P1] = R0;
ffa013da:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa013de:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa013e0:	10 97       	W[P2] = R0;
ffa013e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa013e4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013e6:	10 97       	W[P2] = R0;
ffa013e8:	82 6f       	P2 += -0x10;		/* (-16) */
ffa013ea:	17 93       	[P2] = R7;
ffa013ec:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa013f0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013f2:	10 97       	W[P2] = R0;
ffa013f4:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa013f8:	08 97       	W[P1] = R0;
	...
ffa01402:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa01406:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa0140a:	48 95       	R0 = W[P1] (X);
ffa0140c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0140e:	f6 1f       	IF CC JUMP 0xffa013fa <_spi_read_packet_nocheck+0x5a> (BP);
ffa01410:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01414:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01416:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0141a:	10 97       	W[P2] = R0;
ffa0141c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0141e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01422:	08 97       	W[P1] = R0;
ffa01424:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01428:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0142c:	10 97       	W[P2] = R0;
ffa0142e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01432:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01436:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0143a:	10 97       	W[P2] = R0;
ffa0143c:	24 00       	SSYNC;
ffa0143e:	01 e8 00 00 	UNLINK;
ffa01442:	38 05       	(R7:7) = [SP++];
ffa01444:	10 00       	RTS;
	...

ffa01448 <_radio_set_rx>:
ffa01448:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0144c:	78 05       	[--SP] = (R7:7);
ffa0144e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01452:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa01456:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0145a:	17 97       	W[P2] = R7;
ffa0145c:	24 00       	SSYNC;
ffa0145e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01460:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01462:	ff e3 37 fe 	CALL 0xffa010d0 <_spi_write_register>;
ffa01466:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0146a:	ff e3 b3 fe 	CALL 0xffa011d0 <_spi_write_byte>;
ffa0146e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa01470:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01472:	ff e3 2f fe 	CALL 0xffa010d0 <_spi_write_register>;
ffa01476:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0147a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0147c:	ff e3 2a fe 	CALL 0xffa010d0 <_spi_write_register>;
ffa01480:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01484:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01486:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0148a:	10 97       	W[P2] = R0;
ffa0148c:	24 00       	SSYNC;
ffa0148e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01492:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01496:	17 97       	W[P2] = R7;
ffa01498:	24 00       	SSYNC;
ffa0149a:	01 e8 00 00 	UNLINK;
ffa0149e:	38 05       	(R7:7) = [SP++];
ffa014a0:	10 00       	RTS;
	...

ffa014a4 <_radio_set_tx>:
ffa014a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa014a8:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa014ac:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa014b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014b4:	10 97       	W[P2] = R0;
ffa014b6:	24 00       	SSYNC;
ffa014b8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014bc:	ff e3 0a fe 	CALL 0xffa010d0 <_spi_write_register>;
ffa014c0:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa014c4:	ff e3 86 fe 	CALL 0xffa011d0 <_spi_write_byte>;
ffa014c8:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa014cc:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa014ce:	ff e3 01 fe 	CALL 0xffa010d0 <_spi_write_register>;
ffa014d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014d4:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa014d6:	ff e3 fd fd 	CALL 0xffa010d0 <_spi_write_register>;
ffa014da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa014de:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa014e0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa014e4:	10 97       	W[P2] = R0;
ffa014e6:	01 e8 00 00 	UNLINK;
ffa014ea:	10 00       	RTS;

ffa014ec <_radio_wait_irq>:
ffa014ec:	78 05       	[--SP] = (R7:7);
ffa014ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa014f2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014f6:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014fa:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa014fe:	50 95 00 00 
ffa01502:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01504:	25 18       	IF CC JUMP 0xffa0154e <_radio_wait_irq+0x62>;
ffa01506:	01 0d       	CC = R1 <= 0x0;
ffa01508:	25 18       	IF CC JUMP 0xffa01552 <_radio_wait_irq+0x66>;
ffa0150a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0150c:	04 20       	JUMP.S 0xffa01514 <_radio_wait_irq+0x28>;
ffa0150e:	39 08       	CC = R1 == R7;
ffa01510:	10 18       	IF CC JUMP 0xffa01530 <_radio_wait_irq+0x44>;
	...
ffa0151a:	00 00       	NOP;
ffa0151c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01520:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa01524:	50 95       	R0 = W[P2] (X);
ffa01526:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01528:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0152a:	f2 17       	IF !CC JUMP 0xffa0150e <_radio_wait_irq+0x22> (BP);
ffa0152c:	39 09       	CC = R1 <= R7;
ffa0152e:	06 10       	IF !CC JUMP 0xffa0153a <_radio_wait_irq+0x4e>;
ffa01530:	01 e8 00 00 	UNLINK;
ffa01534:	07 30       	R0 = R7;
ffa01536:	38 05       	(R7:7) = [SP++];
ffa01538:	10 00       	RTS;
ffa0153a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0153c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01540:	ff e3 c8 fd 	CALL 0xffa010d0 <_spi_write_register>;
ffa01544:	01 e8 00 00 	UNLINK;
ffa01548:	07 30       	R0 = R7;
ffa0154a:	38 05       	(R7:7) = [SP++];
ffa0154c:	10 00       	RTS;
ffa0154e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01550:	ee 2f       	JUMP.S 0xffa0152c <_radio_wait_irq+0x40>;
ffa01552:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01554:	ee 2f       	JUMP.S 0xffa01530 <_radio_wait_irq+0x44>;
	...

ffa01558 <_spi_write_register_ver>:
ffa01558:	68 05       	[--SP] = (R7:5);
ffa0155a:	47 43       	R7 = R0.B (Z);
ffa0155c:	4e 43       	R6 = R1.B (Z);
ffa0155e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01562:	0e 30       	R1 = R6;
ffa01564:	07 30       	R0 = R7;
ffa01566:	ff e3 b5 fd 	CALL 0xffa010d0 <_spi_write_register>;
ffa0156a:	07 30       	R0 = R7;
ffa0156c:	ff e3 de fd 	CALL 0xffa01128 <_spi_read_register>;
ffa01570:	45 43       	R5 = R0.B (Z);
ffa01572:	2e 08       	CC = R6 == R5;
ffa01574:	29 18       	IF CC JUMP 0xffa015c6 <_spi_write_register_ver+0x6e>;
ffa01576:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa0157a:	0f 30       	R1 = R7;
ffa0157c:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa01580:	ff e3 a8 fa 	CALL 0xffa00ad0 <_printf_int>;
ffa01584:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa01588:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa0158c:	ff e3 86 f9 	CALL 0xffa00898 <_uart_str>;
ffa01590:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa01594:	0e 30       	R1 = R6;
ffa01596:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa0159a:	ff e3 e9 f9 	CALL 0xffa0096c <_printf_hex_byte>;
ffa0159e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa015a2:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa015a6:	ff e3 79 f9 	CALL 0xffa00898 <_uart_str>;
ffa015aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa015ae:	00 e1 bc 00 	R0.L = 0xbc;		/* (188)	R0=0xff9000bc(-7339844) */
ffa015b2:	0d 30       	R1 = R5;
ffa015b4:	ff e3 dc f9 	CALL 0xffa0096c <_printf_hex_byte>;
ffa015b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000bc(-7339844) */
ffa015bc:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa015c0:	35 30       	R6 = R5;
ffa015c2:	ff e3 6b f9 	CALL 0xffa00898 <_uart_str>;
ffa015c6:	01 e8 00 00 	UNLINK;
ffa015ca:	06 30       	R0 = R6;
ffa015cc:	28 05       	(R7:5) = [SP++];
ffa015ce:	10 00       	RTS;

ffa015d0 <_radio_init>:
ffa015d0:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00d68(-4190872) */
ffa015d4:	78 05       	[--SP] = (R7:7);
ffa015d6:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa015da:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015e0:	0a 97       	W[P1] = R2;
ffa015e2:	24 00       	SSYNC;
ffa015e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa015e8:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa015ea:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa015ee:	11 97       	W[P2] = R1;
ffa015f0:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa015f4:	82 6f       	P2 += -0x10;		/* (-16) */
ffa015f6:	09 97       	W[P1] = R1;
ffa015f8:	12 97       	W[P2] = R2;
ffa015fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa015fe:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa01602:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01606:	11 97       	W[P2] = R1;
ffa01608:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa0160a:	51 95       	R1 = W[P2] (X);
ffa0160c:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa0160e:	11 97       	W[P2] = R1;
ffa01610:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01612:	51 95       	R1 = W[P2] (X);
ffa01614:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa01616:	11 97       	W[P2] = R1;
ffa01618:	52 95       	R2 = W[P2] (X);
ffa0161a:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa0161e:	51 56       	R1 = R1 | R2;
ffa01620:	11 97       	W[P2] = R1;
ffa01622:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01626:	41 43       	R1 = R0.B (Z);
ffa01628:	11 0a       	CC = R1 <= R2 (IU);
ffa0162a:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0162e:	01 06       	IF !CC R0 = R1;
ffa01630:	47 43       	R7 = R0.B (Z);
ffa01632:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01636:	0f 30       	R1 = R7;
ffa01638:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa0163c:	ff e3 4a fa 	CALL 0xffa00ad0 <_printf_int>;
ffa01640:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa01644:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01648:	ff e3 28 f9 	CALL 0xffa00898 <_uart_str>;
ffa0164c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0164e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01650:	ff e3 40 fd 	CALL 0xffa010d0 <_spi_write_register>;
ffa01654:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01656:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01658:	ff e3 80 ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa0165c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0165e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01660:	ff e3 7c ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa01664:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01666:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01668:	ff e3 78 ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa0166c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0166e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01670:	ff e3 74 ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa01674:	0f 30       	R1 = R7;
ffa01676:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01678:	ff e3 70 ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa0167c:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0167e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01680:	ff e3 6c ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa01684:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01688:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0168a:	ff e3 67 ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa0168e:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01690:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01692:	ff e3 63 ff 	CALL 0xffa01558 <_spi_write_register_ver>;
ffa01696:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0169a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0169e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa016a0:	10 97       	W[P2] = R0;
ffa016a2:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa016a6:	ff e3 95 fd 	CALL 0xffa011d0 <_spi_write_byte>;
ffa016aa:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa016ae:	ff e3 91 fd 	CALL 0xffa011d0 <_spi_write_byte>;
ffa016b2:	01 e8 00 00 	UNLINK;
ffa016b6:	40 43       	R0 = R0.B (Z);
ffa016b8:	38 05       	(R7:7) = [SP++];
ffa016ba:	10 00       	RTS;

ffa016bc <_bfin_EMAC_send_check>:
ffa016bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa016c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016c4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa016c8:	50 95       	R0 = W[P2] (X);
ffa016ca:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa016cc:	00 02       	R0 = CC;
ffa016ce:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa016d0:	01 e8 00 00 	UNLINK;
ffa016d4:	10 00       	RTS;
	...

ffa016d8 <_FormatIPAddress>:
ffa016d8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016dc:	18 30       	R3 = R0;
ffa016de:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa016e2:	40 4f       	R0 <<= 0x8;
ffa016e4:	52 43       	R2 = R2.B (Z);
ffa016e6:	10 56       	R0 = R0 | R2;
ffa016e8:	40 4f       	R0 <<= 0x8;
ffa016ea:	49 43       	R1 = R1.B (Z);
ffa016ec:	08 56       	R0 = R0 | R1;
ffa016ee:	40 4f       	R0 <<= 0x8;
ffa016f0:	5b 43       	R3 = R3.B (Z);
ffa016f2:	18 56       	R0 = R0 | R3;
ffa016f4:	01 e8 00 00 	UNLINK;
ffa016f8:	10 00       	RTS;
	...

ffa016fc <_bfin_EMAC_halt>:
ffa016fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01700:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01702:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01706:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0170a:	10 93       	[P2] = R0;
ffa0170c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01710:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01714:	10 97       	W[P2] = R0;
ffa01716:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0171a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0171e:	10 97       	W[P2] = R0;
ffa01720:	01 e8 00 00 	UNLINK;
ffa01724:	10 00       	RTS;
	...

ffa01728 <_PollMdcDone>:
ffa01728:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0172c:	02 20       	JUMP.S 0xffa01730 <_PollMdcDone+0x8>;
ffa0172e:	00 00       	NOP;
ffa01730:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01734:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01738:	10 91       	R0 = [P2];
ffa0173a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0173c:	f9 17       	IF !CC JUMP 0xffa0172e <_PollMdcDone+0x6> (BP);
ffa0173e:	01 e8 00 00 	UNLINK;
ffa01742:	10 00       	RTS;

ffa01744 <_WrPHYReg>:
ffa01744:	68 05       	[--SP] = (R7:5);
ffa01746:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0174a:	28 30       	R5 = R0;
ffa0174c:	31 30       	R6 = R1;
ffa0174e:	3a 30       	R7 = R2;
ffa01750:	ff e3 ec ff 	CALL 0xffa01728 <_PollMdcDone>;
ffa01754:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01756:	b0 55       	R6 = R0 & R6;
ffa01758:	28 54       	R0 = R0 & R5;
ffa0175a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0175e:	58 4f       	R0 <<= 0xb;
ffa01760:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01762:	ff 42       	R7 = R7.L (Z);
ffa01764:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01768:	36 4f       	R6 <<= 0x6;
ffa0176a:	08 56       	R0 = R0 | R1;
ffa0176c:	17 93       	[P2] = R7;
ffa0176e:	86 57       	R6 = R6 | R0;
ffa01770:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01772:	16 93       	[P2] = R6;
ffa01774:	01 e8 00 00 	UNLINK;
ffa01778:	28 05       	(R7:5) = [SP++];
ffa0177a:	10 00       	RTS;

ffa0177c <_RdPHYReg>:
ffa0177c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0177e:	29 32       	P5 = R1;
ffa01780:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01784:	38 30       	R7 = R0;
ffa01786:	ff e3 d1 ff 	CALL 0xffa01728 <_PollMdcDone>;
ffa0178a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0178e:	45 30       	R0 = P5;
ffa01790:	c0 42       	R0 = R0.L (Z);
ffa01792:	28 32       	P5 = R0;
ffa01794:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01796:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0179a:	55 30       	R2 = P5;
ffa0179c:	42 54       	R1 = R2 & R0;
ffa0179e:	38 54       	R0 = R0 & R7;
ffa017a0:	58 4f       	R0 <<= 0xb;
ffa017a2:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa017a4:	31 4f       	R1 <<= 0x6;
ffa017a6:	41 56       	R1 = R1 | R0;
ffa017a8:	11 93       	[P2] = R1;
ffa017aa:	ff e3 bf ff 	CALL 0xffa01728 <_PollMdcDone>;
ffa017ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa017b2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa017b6:	10 91       	R0 = [P2];
ffa017b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa017bc:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_PHYregs> */
ffa017c0:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa017c2:	10 97       	W[P2] = R0;
ffa017c4:	01 e8 00 00 	UNLINK;
ffa017c8:	c0 42       	R0 = R0.L (Z);
ffa017ca:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017cc:	10 00       	RTS;
	...

ffa017d0 <_SoftResetPHY>:
ffa017d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017d2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017d4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa017d8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017dc:	ff e3 b4 ff 	CALL 0xffa01744 <_WrPHYReg>;
ffa017e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017e2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017e4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017e6:	ff e3 af ff 	CALL 0xffa01744 <_WrPHYReg>;
ffa017ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017ec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017ee:	ff e3 c7 ff 	CALL 0xffa0177c <_RdPHYReg>;
ffa017f2:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa017f4:	fb 1f       	IF CC JUMP 0xffa017ea <_SoftResetPHY+0x1a> (BP);
ffa017f6:	01 e8 00 00 	UNLINK;
ffa017fa:	10 00       	RTS;

ffa017fc <_NetCksum>:
ffa017fc:	01 0d       	CC = R1 <= 0x0;
ffa017fe:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01802:	10 18       	IF CC JUMP 0xffa01822 <_NetCksum+0x26>;
ffa01804:	10 32       	P2 = R0;
ffa01806:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01808:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0180a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0180c:	10 94       	R0 = W[P2++] (Z);
ffa0180e:	0a 08       	CC = R2 == R1;
ffa01810:	c3 50       	R3 = R3 + R0;
ffa01812:	fc 17       	IF !CC JUMP 0xffa0180a <_NetCksum+0xe> (BP);
ffa01814:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01818:	03 50       	R0 = R3 + R0;
ffa0181a:	c0 42       	R0 = R0.L (Z);
ffa0181c:	01 e8 00 00 	UNLINK;
ffa01820:	10 00       	RTS;
ffa01822:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01824:	01 e8 00 00 	UNLINK;
ffa01828:	10 00       	RTS;
	...

ffa0182c <_htons>:
ffa0182c:	08 30       	R1 = R0;
ffa0182e:	c0 42       	R0 = R0.L (Z);
ffa01830:	40 4e       	R0 >>= 0x8;
ffa01832:	41 4f       	R1 <<= 0x8;
ffa01834:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01838:	08 56       	R0 = R0 | R1;
ffa0183a:	c0 42       	R0 = R0.L (Z);
ffa0183c:	01 e8 00 00 	UNLINK;
ffa01840:	10 00       	RTS;
	...

ffa01844 <_htonl>:
ffa01844:	10 30       	R2 = R0;
ffa01846:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa0184a:	40 43       	R0 = R0.B (Z);
ffa0184c:	49 43       	R1 = R1.B (Z);
ffa0184e:	40 4f       	R0 <<= 0x8;
ffa01850:	08 56       	R0 = R0 | R1;
ffa01852:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01856:	40 4f       	R0 <<= 0x8;
ffa01858:	49 43       	R1 = R1.B (Z);
ffa0185a:	08 56       	R0 = R0 | R1;
ffa0185c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01860:	40 4f       	R0 <<= 0x8;
ffa01862:	c2 4e       	R2 >>= 0x18;
ffa01864:	10 56       	R0 = R0 | R2;
ffa01866:	01 e8 00 00 	UNLINK;
ffa0186a:	10 00       	RTS;

ffa0186c <_pack4chars>:
ffa0186c:	08 32       	P1 = R0;
ffa0186e:	10 32       	P2 = R0;
ffa01870:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01874:	01 e8 00 00 	UNLINK;
ffa01878:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa0187c:	10 98       	R0 = B[P2++] (Z);
ffa0187e:	41 4f       	R1 <<= 0x8;
ffa01880:	08 50       	R0 = R0 + R1;
ffa01882:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01886:	81 4f       	R1 <<= 0x10;
ffa01888:	08 50       	R0 = R0 + R1;
ffa0188a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0188e:	c1 4f       	R1 <<= 0x18;
ffa01890:	08 50       	R0 = R0 + R1;
ffa01892:	10 00       	RTS;

ffa01894 <_ip_header_setup>:
ffa01894:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01896:	28 32       	P5 = R0;
ffa01898:	21 32       	P4 = R1;
ffa0189a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0189e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018a2:	32 30       	R6 = R2;
ffa018a4:	28 9b       	B[P5] = R0;
ffa018a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018a8:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa018ac:	27 91       	R7 = [P4];
ffa018ae:	f8 42       	R0 = R7.L (Z);
ffa018b0:	ff e3 be ff 	CALL 0xffa0182c <_htons>;
ffa018b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be4 <_PHYregs> */
ffa018b8:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa018bc:	68 b4       	W[P5 + 0x2] = R0;
ffa018be:	10 95       	R0 = W[P2] (Z);
ffa018c0:	08 30       	R1 = R0;
ffa018c2:	09 64       	R1 += 0x1;		/* (  1) */
ffa018c4:	67 67       	R7 += -0x14;		/* (-20) */
ffa018c6:	11 97       	W[P2] = R1;
ffa018c8:	27 93       	[P4] = R7;
ffa018ca:	ff e3 b1 ff 	CALL 0xffa0182c <_htons>;
ffa018ce:	a8 b4       	W[P5 + 0x4] = R0;
ffa018d0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa018d4:	ff e3 ac ff 	CALL 0xffa0182c <_htons>;
ffa018d8:	e8 b4       	W[P5 + 0x6] = R0;
ffa018da:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa018de:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa018e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa018e6:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa018ea:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa018ee:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa018f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018f4:	68 b5       	W[P5 + 0xa] = R0;
ffa018f6:	10 91       	R0 = [P2];
ffa018f8:	e8 b0       	[P5 + 0xc] = R0;
ffa018fa:	2e b1       	[P5 + 0x10] = R6;
ffa018fc:	45 30       	R0 = P5;
ffa018fe:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01900:	ff e3 7e ff 	CALL 0xffa017fc <_NetCksum>;
ffa01904:	c0 43       	R0 =~ R0;
ffa01906:	68 b5       	W[P5 + 0xa] = R0;
ffa01908:	01 e8 00 00 	UNLINK;
ffa0190c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0190e:	45 30       	R0 = P5;
ffa01910:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01912:	10 00       	RTS;

ffa01914 <_ip_header_checksum>:
ffa01914:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01918:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa0191a:	ff e3 71 ff 	CALL 0xffa017fc <_NetCksum>;
ffa0191e:	08 02       	CC = R0;
ffa01920:	00 02       	R0 = CC;
ffa01922:	01 e8 00 00 	UNLINK;
ffa01926:	10 00       	RTS;

ffa01928 <_icmp_header_setup>:
ffa01928:	00 32       	P0 = R0;
ffa0192a:	c5 04       	[--SP] = (P5:5);
ffa0192c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0192e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01932:	29 32       	P5 = R1;
ffa01934:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01938:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0193a:	40 b4       	W[P0 + 0x2] = R0;
ffa0193c:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0193e:	80 b4       	W[P0 + 0x4] = R0;
ffa01940:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01942:	02 9b       	B[P0] = R2;
ffa01944:	c0 b4       	W[P0 + 0x6] = R0;
ffa01946:	48 32       	P1 = P0;
ffa01948:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0194a:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0194c:	b2 e0 03 20 	LSETUP(0xffa01950 <_icmp_header_setup+0x28>, 0xffa01952 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01950:	08 94       	R0 = W[P1++] (Z);
ffa01952:	41 50       	R1 = R1 + R0;
ffa01954:	c8 42       	R0 = R1.L (Z);
ffa01956:	81 4e       	R1 >>= 0x10;
ffa01958:	08 50       	R0 = R0 + R1;
ffa0195a:	c0 43       	R0 =~ R0;
ffa0195c:	40 b4       	W[P0 + 0x2] = R0;
ffa0195e:	28 91       	R0 = [P5];
ffa01960:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01962:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01964:	01 e8 00 00 	UNLINK;
ffa01968:	28 93       	[P5] = R0;
ffa0196a:	40 30       	R0 = P0;
ffa0196c:	85 04       	(P5:5) = [SP++];
ffa0196e:	10 00       	RTS;

ffa01970 <_udp_header_setup>:
ffa01970:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01972:	28 32       	P5 = R0;
ffa01974:	21 32       	P4 = R1;
ffa01976:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0197a:	d0 42       	R0 = R2.L (Z);
ffa0197c:	ff e3 58 ff 	CALL 0xffa0182c <_htons>;
ffa01980:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01984:	28 97       	W[P5] = R0;
ffa01986:	07 30       	R0 = R7;
ffa01988:	ff e3 52 ff 	CALL 0xffa0182c <_htons>;
ffa0198c:	27 91       	R7 = [P4];
ffa0198e:	68 b4       	W[P5 + 0x2] = R0;
ffa01990:	f8 42       	R0 = R7.L (Z);
ffa01992:	ff e3 4d ff 	CALL 0xffa0182c <_htons>;
ffa01996:	a8 b4       	W[P5 + 0x4] = R0;
ffa01998:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0199a:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa0199c:	e8 b4       	W[P5 + 0x6] = R0;
ffa0199e:	01 e8 00 00 	UNLINK;
ffa019a2:	45 6c       	P5 += 0x8;		/* (  8) */
ffa019a4:	45 30       	R0 = P5;
ffa019a6:	27 93       	[P4] = R7;
ffa019a8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa019aa:	10 00       	RTS;

ffa019ac <_tcp_header_setup>:
ffa019ac:	fc 05       	[--SP] = (R7:7, P5:4);
ffa019ae:	28 32       	P5 = R0;
ffa019b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019b4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa019b8:	21 32       	P4 = R1;
ffa019ba:	3a 30       	R7 = R2;
ffa019bc:	ff e3 38 ff 	CALL 0xffa0182c <_htons>;
ffa019c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa019c4:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa019c8:	28 97       	W[P5] = R0;
ffa019ca:	50 95       	R0 = W[P2] (X);
ffa019cc:	68 b4       	W[P5 + 0x2] = R0;
ffa019ce:	38 a2       	R0 = [FP + 0x20];
ffa019d0:	ff e3 3a ff 	CALL 0xffa01844 <_htonl>;
ffa019d4:	68 b0       	[P5 + 0x4] = R0;
ffa019d6:	78 a2       	R0 = [FP + 0x24];
ffa019d8:	ff e3 36 ff 	CALL 0xffa01844 <_htonl>;
ffa019dc:	a8 b0       	[P5 + 0x8] = R0;
ffa019de:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa019e2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa019e6:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa019ea:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa019ee:	ff e3 1f ff 	CALL 0xffa0182c <_htons>;
ffa019f2:	e8 b5       	W[P5 + 0xe] = R0;
ffa019f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019f6:	28 b6       	W[P5 + 0x10] = R0;
ffa019f8:	68 b6       	W[P5 + 0x12] = R0;
ffa019fa:	20 91       	R0 = [P4];
ffa019fc:	60 67       	R0 += -0x14;		/* (-20) */
ffa019fe:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01a00:	01 e8 00 00 	UNLINK;
ffa01a04:	20 93       	[P4] = R0;
ffa01a06:	45 30       	R0 = P5;
ffa01a08:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01a0a:	10 00       	RTS;

ffa01a0c <_DHCP_parse>:
ffa01a0c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01a0e:	09 0d       	CC = R1 <= 0x1;
ffa01a10:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a14:	10 32       	P2 = R0;
ffa01a16:	33 18       	IF CC JUMP 0xffa01a7c <_DHCP_parse+0x70>;
ffa01a18:	00 00       	NOP;
ffa01a1a:	31 30       	R6 = R1;
ffa01a1c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a1e:	11 98       	R1 = B[P2++] (Z);
ffa01a20:	01 0c       	CC = R1 == 0x0;
ffa01a22:	2b 1c       	IF CC JUMP 0xffa01a78 <_DHCP_parse+0x6c> (BP);
ffa01a24:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01a28:	01 08       	CC = R1 == R0;
ffa01a2a:	57 99       	R7 = B[P2] (X);
ffa01a2c:	28 18       	IF CC JUMP 0xffa01a7c <_DHCP_parse+0x70>;
ffa01a2e:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01a30:	6a 32       	P5 = P2;
ffa01a32:	01 0a       	CC = R1 <= R0 (IU);
ffa01a34:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01a36:	09 14       	IF !CC JUMP 0xffa01a48 <_DHCP_parse+0x3c> (BP);
ffa01a38:	09 32       	P1 = R1;
ffa01a3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa01a3e:	0a e1 b0 03 	P2.L = 0x3b0;		/* (944)	P2=0xff9003b0 */
ffa01a42:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01a44:	52 91       	P2 = [P2];
ffa01a46:	52 00       	JUMP (P2);
ffa01a48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01a4c:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa01a50:	ff e3 40 f8 	CALL 0xffa00ad0 <_printf_int>;
ffa01a54:	7f 43       	R7 = R7.B (Z);
ffa01a56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa01a5a:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01a5e:	0f 30       	R1 = R7;
ffa01a60:	ff e3 38 f8 	CALL 0xffa00ad0 <_printf_int>;
ffa01a64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa01a68:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01a6c:	ff e3 70 f7 	CALL 0xffa0094c <_printf_str>;
ffa01a70:	0f 32       	P1 = R7;
ffa01a72:	be 53       	R6 = R6 - R7;
ffa01a74:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a76:	8d 5a       	P2 = P5 + P1;
ffa01a78:	0e 0d       	CC = R6 <= 0x1;
ffa01a7a:	d1 17       	IF !CC JUMP 0xffa01a1c <_DHCP_parse+0x10> (BP);
ffa01a7c:	01 e8 00 00 	UNLINK;
ffa01a80:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01a82:	10 00       	RTS;
ffa01a84:	45 30       	R0 = P5;
ffa01a86:	ff e3 f3 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01a8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003b0 */
ffa01a8e:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa01a92:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a96:	10 93 00 00 
ffa01a9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01a9e:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01aa2:	ff e3 b9 f8 	CALL 0xffa00c14 <_printf_ip>;
ffa01aa6:	7f 43       	R7 = R7.B (Z);
ffa01aa8:	de 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01aaa:	45 30       	R0 = P5;
ffa01aac:	ff e3 e0 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01ab0:	08 30       	R1 = R0;
ffa01ab2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e0(-7339808) */
ffa01ab6:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01aba:	ff e3 ad f8 	CALL 0xffa00c14 <_printf_ip>;
ffa01abe:	7f 43       	R7 = R7.B (Z);
ffa01ac0:	d2 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01ac2:	45 30       	R0 = P5;
ffa01ac4:	ff e3 d4 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01ac8:	08 30       	R1 = R0;
ffa01aca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa01ace:	00 e1 00 01 	R0.L = 0x100;		/* (256)	R0=0xff900100(-7339776) */
ffa01ad2:	ff e3 a1 f8 	CALL 0xffa00c14 <_printf_ip>;
ffa01ad6:	7f 43       	R7 = R7.B (Z);
ffa01ad8:	c6 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01ada:	45 30       	R0 = P5;
ffa01adc:	ff e3 c8 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01ae0:	08 30       	R1 = R0;
ffa01ae2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900100(-7339776) */
ffa01ae6:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa01aea:	ff e3 95 f8 	CALL 0xffa00c14 <_printf_ip>;
ffa01aee:	7f 43       	R7 = R7.B (Z);
ffa01af0:	ba 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01af2:	45 30       	R0 = P5;
ffa01af4:	ff e3 bc fe 	CALL 0xffa0186c <_pack4chars>;
ffa01af8:	ff e3 a6 fe 	CALL 0xffa01844 <_htonl>;
ffa01afc:	08 30       	R1 = R0;
ffa01afe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900110(-7339760) */
ffa01b02:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01b06:	ff e3 e5 f7 	CALL 0xffa00ad0 <_printf_int>;
ffa01b0a:	7f 43       	R7 = R7.B (Z);
ffa01b0c:	ac 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01b0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900120(-7339744) */
ffa01b12:	29 99       	R1 = B[P5] (Z);
ffa01b14:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa01b18:	ff e3 dc f7 	CALL 0xffa00ad0 <_printf_int>;
ffa01b1c:	7f 43       	R7 = R7.B (Z);
ffa01b1e:	a3 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01b20:	45 30       	R0 = P5;
ffa01b22:	ff e3 a5 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01b26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa01b2a:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetDHCPserv> */
ffa01b2e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01b32:	10 93 00 00 
ffa01b36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa01b3a:	00 e1 48 01 	R0.L = 0x148;		/* (328)	R0=0xff900148(-7339704) */
ffa01b3e:	ff e3 6b f8 	CALL 0xffa00c14 <_printf_ip>;
ffa01b42:	7f 43       	R7 = R7.B (Z);
ffa01b44:	90 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01b46:	45 30       	R0 = P5;
ffa01b48:	ff e3 92 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01b4c:	ff e3 7c fe 	CALL 0xffa01844 <_htonl>;
ffa01b50:	08 30       	R1 = R0;
ffa01b52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900148(-7339704) */
ffa01b56:	00 e1 5c 01 	R0.L = 0x15c;		/* (348)	R0=0xff90015c(-7339684) */
ffa01b5a:	ff e3 bb f7 	CALL 0xffa00ad0 <_printf_int>;
ffa01b5e:	7f 43       	R7 = R7.B (Z);
ffa01b60:	82 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
ffa01b62:	45 30       	R0 = P5;
ffa01b64:	ff e3 84 fe 	CALL 0xffa0186c <_pack4chars>;
ffa01b68:	ff e3 6e fe 	CALL 0xffa01844 <_htonl>;
ffa01b6c:	08 30       	R1 = R0;
ffa01b6e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90015c(-7339684) */
ffa01b72:	00 e1 70 01 	R0.L = 0x170;		/* (368)	R0=0xff900170(-7339664) */
ffa01b76:	ff e3 ad f7 	CALL 0xffa00ad0 <_printf_int>;
ffa01b7a:	7f 43       	R7 = R7.B (Z);
ffa01b7c:	74 2f       	JUMP.S 0xffa01a64 <_DHCP_parse+0x58>;
	...

ffa01b80 <_bfin_EMAC_send_nocopy>:
ffa01b80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa01b84:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b86:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01b8a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b8e:	10 97       	W[P2] = R0;
ffa01b90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01b94:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b98:	50 95       	R0 = W[P2] (X);
ffa01b9a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b9c:	59 10       	IF !CC JUMP 0xffa01c4e <_bfin_EMAC_send_nocopy+0xce>;
ffa01b9e:	00 00       	NOP;
ffa01ba0:	00 00       	NOP;
ffa01ba2:	00 00       	NOP;
ffa01ba4:	50 95       	R0 = W[P2] (X);
ffa01ba6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ba8:	16 18       	IF CC JUMP 0xffa01bd4 <_bfin_EMAC_send_nocopy+0x54>;
ffa01baa:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0500 */
ffa01bae:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01bb2:	b2 e0 09 10 	LSETUP(0xffa01bb6 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01bc4 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01bb6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bba:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01bbe:	50 95       	R0 = W[P2] (X);
ffa01bc0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01bc2:	09 18       	IF CC JUMP 0xffa01bd4 <_bfin_EMAC_send_nocopy+0x54>;
ffa01bc4:	00 00       	NOP;
ffa01bc6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01bca:	00 e1 bc 01 	R0.L = 0x1bc;		/* (444)	R0=0xff9001bc(-7339588) */
ffa01bce:	ff e3 bf f6 	CALL 0xffa0094c <_printf_str>;
ffa01bd2:	30 20       	JUMP.S 0xffa01c32 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01bd4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01bd8:	08 e1 2c 0c 	P0.L = 0xc2c;		/* (3116)	P0=0xff900c2c <_txIdx> */
ffa01bdc:	00 95       	R0 = W[P0] (Z);
ffa01bde:	10 32       	P2 = R0;
ffa01be0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01be4:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01be8:	42 95       	R2 = W[P0] (X);
ffa01bea:	d1 42       	R1 = R2.L (Z);
ffa01bec:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01bee:	52 91       	P2 = [P2];
ffa01bf0:	11 0d       	CC = R1 <= 0x2;
ffa01bf2:	90 a1       	R0 = [P2 + 0x18];
ffa01bf4:	50 b0       	[P2 + 0x4] = R0;
ffa01bf6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bf8:	90 b2       	[P2 + 0x28] = R0;
ffa01bfa:	11 32       	P2 = R1;
ffa01bfc:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01bfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01c02:	08 91       	R0 = [P1];
ffa01c04:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01c08:	10 93       	[P2] = R0;
ffa01c0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01c0e:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01c12:	50 95       	R0 = W[P2] (X);
ffa01c14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01c18:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01c1c:	10 97       	W[P2] = R0;
ffa01c1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01c22:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01c26:	10 91       	R0 = [P2];
ffa01c28:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01c2a:	10 93       	[P2] = R0;
ffa01c2c:	0d 1c       	IF CC JUMP 0xffa01c46 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01c2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c30:	00 97       	W[P0] = R0;
ffa01c32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01c36:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c38:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01c3c:	10 97       	W[P2] = R0;
ffa01c3e:	01 e8 00 00 	UNLINK;
ffa01c42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c44:	10 00       	RTS;
ffa01c46:	02 30       	R0 = R2;
ffa01c48:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c4a:	00 97       	W[P0] = R0;
ffa01c4c:	f3 2f       	JUMP.S 0xffa01c32 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01c4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c52:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01c56:	ff e3 7b f6 	CALL 0xffa0094c <_printf_str>;
ffa01c5a:	ec 2f       	JUMP.S 0xffa01c32 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01c5c <_DHCP_tx>:
ffa01c5c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01c5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01c62:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01c66:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01c6a:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01c6e:	10 95 00 00 
ffa01c72:	10 32       	P2 = R0;
ffa01c74:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa01c78:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01c7c:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01c80:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c82:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c84:	52 91       	P2 = [P2];
ffa01c86:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01c8a:	f1 bb 00 00 
ffa01c8e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa01c92:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa01c96:	94 ad       	P4 = [P2 + 0x18];
ffa01c98:	1a 32       	P3 = R2;
ffa01c9a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01c9c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01c9e:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01ca2:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01ca6:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01caa:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01cae:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01cb2:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01cb6:	20 97       	W[P4] = R0;
ffa01cb8:	68 99       	R0 = B[P5] (X);
ffa01cba:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01cbe:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01cc2:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01cc6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01cca:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01cce:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01cd2:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01cd6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01cda:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01cde:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01ce2:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01ce6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01cea:	ff e3 a1 fd 	CALL 0xffa0182c <_htons>;
ffa01cee:	e0 b5       	W[P4 + 0xe] = R0;
ffa01cf0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01cf4:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01cf8:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01cfc:	04 50       	R0 = R4 + R0;
ffa01cfe:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01d02:	c0 42       	R0 = R0.L (Z);
ffa01d04:	ff e3 94 fd 	CALL 0xffa0182c <_htons>;
ffa01d08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01d0c:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01d10:	60 b6       	W[P4 + 0x12] = R0;
ffa01d12:	10 95       	R0 = W[P2] (Z);
ffa01d14:	08 30       	R1 = R0;
ffa01d16:	09 64       	R1 += 0x1;		/* (  1) */
ffa01d18:	11 97       	W[P2] = R1;
ffa01d1a:	ff e3 89 fd 	CALL 0xffa0182c <_htons>;
ffa01d1e:	a0 b6       	W[P4 + 0x14] = R0;
ffa01d20:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01d24:	ff e3 84 fd 	CALL 0xffa0182c <_htons>;
ffa01d28:	e0 b6       	W[P4 + 0x16] = R0;
ffa01d2a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01d2c:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01d30:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01d34:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01d38:	66 b7 00 00 
ffa01d3c:	44 30       	R0 = P4;
ffa01d3e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01d40:	e7 b1       	[P4 + 0x1c] = R7;
ffa01d42:	23 be       	[P4 + 0x20] = P3;
ffa01d44:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01d46:	ff e3 5b fd 	CALL 0xffa017fc <_NetCksum>;
ffa01d4a:	c0 43       	R0 =~ R0;
ffa01d4c:	60 b7       	W[P4 + 0x1a] = R0;
ffa01d4e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01d52:	ff e3 6d fd 	CALL 0xffa0182c <_htons>;
ffa01d56:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01d5a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01d5e:	ff e3 67 fd 	CALL 0xffa0182c <_htons>;
ffa01d62:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01d66:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01d6a:	04 50       	R0 = R4 + R0;
ffa01d6c:	c0 42       	R0 = R0.L (Z);
ffa01d6e:	ff e3 5f fd 	CALL 0xffa0182c <_htons>;
ffa01d72:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01d76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01d78:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01d7c:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01d80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2e(-4191186) */
ffa01d84:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01d86:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01d8a:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01d8e:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01d92:	10 91       	R0 = [P2];
ffa01d94:	20 b3       	[P4 + 0x30] = R0;
ffa01d96:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01d9a:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01d9e:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01da2:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01da6:	a7 b3       	[P4 + 0x38] = R7;
ffa01da8:	e7 b3       	[P4 + 0x3c] = R7;
ffa01daa:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01dae:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01db2:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01db6:	ff e3 47 fd 	CALL 0xffa01844 <_htonl>;
ffa01dba:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01dbe:	68 99       	R0 = B[P5] (X);
ffa01dc0:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01dc4:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01dc8:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01dcc:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01dd0:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01dd4:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01dd8:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01ddc:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01de0:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01de4:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01de8:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01dec:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01df0:	54 5a       	P1 = P4 + P2;
ffa01df2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01df4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01df6:	b2 e0 02 20 	LSETUP(0xffa01dfa <_DHCP_tx+0x19e>, 0xffa01dfa <_DHCP_tx+0x19e>) LC1 = P2;
ffa01dfa:	08 9a       	B[P1++] = R0;
ffa01dfc:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01e00:	54 5a       	P1 = P4 + P2;
ffa01e02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e04:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01e06:	b2 e0 02 20 	LSETUP(0xffa01e0a <_DHCP_tx+0x1ae>, 0xffa01e0a <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01e0a:	08 92       	[P1++] = R0;
ffa01e0c:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01e10:	54 5a       	P1 = P4 + P2;
ffa01e12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e14:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01e16:	b2 e0 02 20 	LSETUP(0xffa01e1a <_DHCP_tx+0x1be>, 0xffa01e1a <_DHCP_tx+0x1be>) LC1 = P2;
ffa01e1a:	08 92       	[P1++] = R0;
ffa01e1c:	44 30       	R0 = P4;
ffa01e1e:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01e22:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01e26:	f0 b9 00 00 
ffa01e2a:	14 30       	R2 = R4;
ffa01e2c:	ff e3 38 f7 	CALL 0xffa00c9c <_memcpy_>;
ffa01e30:	01 e8 00 00 	UNLINK;
ffa01e34:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01e36:	ff e2 a5 fe 	JUMP.L 0xffa01b80 <_bfin_EMAC_send_nocopy>;
	...

ffa01e3c <_bfin_EMAC_send>:
ffa01e3c:	c4 04       	[--SP] = (P5:4);
ffa01e3e:	01 0d       	CC = R1 <= 0x0;
ffa01e40:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e44:	18 30       	R3 = R0;
ffa01e46:	11 30       	R2 = R1;
ffa01e48:	90 18       	IF CC JUMP 0xffa01f68 <_bfin_EMAC_send+0x12c>;
ffa01e4a:	00 00       	NOP;
ffa01e4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01e50:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e54:	50 95       	R0 = W[P2] (X);
ffa01e56:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e58:	74 10       	IF !CC JUMP 0xffa01f40 <_bfin_EMAC_send+0x104>;
ffa01e5a:	00 00       	NOP;
ffa01e5c:	00 00       	NOP;
ffa01e5e:	00 00       	NOP;
ffa01e60:	50 95       	R0 = W[P2] (X);
ffa01e62:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e64:	17 18       	IF CC JUMP 0xffa01e92 <_bfin_EMAC_send+0x56>;
ffa01e66:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c30 */
ffa01e6a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e6e:	b2 e0 09 10 	LSETUP(0xffa01e72 <_bfin_EMAC_send+0x36>, 0xffa01e80 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01e72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e76:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e7a:	50 95       	R0 = W[P2] (X);
ffa01e7c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e7e:	0a 18       	IF CC JUMP 0xffa01e92 <_bfin_EMAC_send+0x56>;
ffa01e80:	00 00       	NOP;
ffa01e82:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e86:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01e8a:	ff e3 61 f5 	CALL 0xffa0094c <_printf_str>;
ffa01e8e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e90:	53 20       	JUMP.S 0xffa01f36 <_bfin_EMAC_send+0xfa>;
ffa01e92:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01e96:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_txIdx> */
ffa01e9a:	20 95       	R0 = W[P4] (Z);
ffa01e9c:	10 32       	P2 = R0;
ffa01e9e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa01ea2:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_txbuf> */
ffa01ea6:	0b 30       	R1 = R3;
ffa01ea8:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01eaa:	52 91       	P2 = [P2];
ffa01eac:	92 ad       	P2 = [P2 + 0x18];
ffa01eae:	12 96       	W[P2++] = R2;
ffa01eb0:	42 30       	R0 = P2;
ffa01eb2:	ff e3 f5 f6 	CALL 0xffa00c9c <_memcpy_>;
ffa01eb6:	20 95       	R0 = W[P4] (Z);
ffa01eb8:	10 32       	P2 = R0;
ffa01eba:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01ebc:	51 91       	P1 = [P2];
ffa01ebe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01ec2:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01ec6:	51 93       	[P2] = P1;
ffa01ec8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01ecc:	88 a1       	R0 = [P1 + 0x18];
ffa01ece:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01ed2:	48 b0       	[P1 + 0x4] = R0;
ffa01ed4:	50 95       	R0 = W[P2] (X);
ffa01ed6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01eda:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01ede:	10 97       	W[P2] = R0;
ffa01ee0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01ee4:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01ee8:	10 91       	R0 = [P2];
ffa01eea:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01eec:	10 93       	[P2] = R0;
ffa01eee:	88 a2       	R0 = [P1 + 0x28];
ffa01ef0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01ef2:	13 10       	IF !CC JUMP 0xffa01f18 <_bfin_EMAC_send+0xdc>;
ffa01ef4:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01ef8:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01efc:	b2 e0 05 20 	LSETUP(0xffa01f00 <_bfin_EMAC_send+0xc4>, 0xffa01f06 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01f00:	88 a2       	R0 = [P1 + 0x28];
ffa01f02:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01f04:	0a 10       	IF !CC JUMP 0xffa01f18 <_bfin_EMAC_send+0xdc>;
ffa01f06:	00 00       	NOP;
ffa01f08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa01f0c:	00 e1 08 02 	R0.L = 0x208;		/* (520)	R0=0xff900208(-7339512) */
ffa01f10:	ff e3 1e f5 	CALL 0xffa0094c <_printf_str>;
ffa01f14:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f16:	10 20       	JUMP.S 0xffa01f36 <_bfin_EMAC_send+0xfa>;
ffa01f18:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01f1c:	61 95 00 00 
ffa01f20:	8a a2       	R2 = [P1 + 0x28];
ffa01f22:	88 b2       	[P1 + 0x28] = R0;
ffa01f24:	c8 42       	R0 = R1.L (Z);
ffa01f26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01f2a:	10 0d       	CC = R0 <= 0x2;
ffa01f2c:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f30:	14 1c       	IF CC JUMP 0xffa01f58 <_bfin_EMAC_send+0x11c> (BP);
ffa01f32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f34:	10 97       	W[P2] = R0;
ffa01f36:	01 e8 00 00 	UNLINK;
ffa01f3a:	02 30       	R0 = R2;
ffa01f3c:	84 04       	(P5:4) = [SP++];
ffa01f3e:	10 00       	RTS;
ffa01f40:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01f44:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01f48:	ff e3 02 f5 	CALL 0xffa0094c <_printf_str>;
ffa01f4c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f4e:	01 e8 00 00 	UNLINK;
ffa01f52:	02 30       	R0 = R2;
ffa01f54:	84 04       	(P5:4) = [SP++];
ffa01f56:	10 00       	RTS;
ffa01f58:	01 30       	R0 = R1;
ffa01f5a:	08 64       	R0 += 0x1;		/* (  1) */
ffa01f5c:	10 97       	W[P2] = R0;
ffa01f5e:	01 e8 00 00 	UNLINK;
ffa01f62:	02 30       	R0 = R2;
ffa01f64:	84 04       	(P5:4) = [SP++];
ffa01f66:	10 00       	RTS;
ffa01f68:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001a4(-7339612) */
ffa01f6c:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa01f70:	ff e3 b0 f5 	CALL 0xffa00ad0 <_printf_int>;
ffa01f74:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f76:	01 e8 00 00 	UNLINK;
ffa01f7a:	02 30       	R0 = R2;
ffa01f7c:	84 04       	(P5:4) = [SP++];
ffa01f7e:	10 00       	RTS;

ffa01f80 <_ether_testUDP>:
ffa01f80:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01f82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f86:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f8a:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f8e:	11 95       	R1 = W[P2] (Z);
ffa01f90:	11 32       	P2 = R1;
ffa01f92:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01f96:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01f9a:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01f9e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01fa0:	52 91       	P2 = [P2];
ffa01fa2:	95 ad       	P5 = [P2 + 0x18];
ffa01fa4:	55 32       	P2 = P5;
ffa01fa6:	11 96       	W[P2++] = R1;
ffa01fa8:	4a 30       	R1 = P2;
ffa01faa:	00 e3 4d 08 	CALL 0xffa03044 <_ARP_req>;
ffa01fae:	00 0c       	CC = R0 == 0x0;
ffa01fb0:	7f 18       	IF CC JUMP 0xffa020ae <_ether_testUDP+0x12e>;
ffa01fb2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01fb6:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01fba:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01fbc:	50 99       	R0 = B[P2] (X);
ffa01fbe:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01fc2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01fc6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01fca:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01fce:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01fd2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01fd6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01fda:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01fde:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01fe2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01fe6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01fea:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01fee:	ff e3 1f fc 	CALL 0xffa0182c <_htons>;
ffa01ff2:	e8 b5       	W[P5 + 0xe] = R0;
ffa01ff4:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01ff8:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01ffc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ffe:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa02002:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa02004:	ff e3 14 fc 	CALL 0xffa0182c <_htons>;
ffa02008:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa0200c:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa02010:	68 b6       	W[P5 + 0x12] = R0;
ffa02012:	10 95       	R0 = W[P2] (Z);
ffa02014:	08 30       	R1 = R0;
ffa02016:	09 64       	R1 += 0x1;		/* (  1) */
ffa02018:	11 97       	W[P2] = R1;
ffa0201a:	ff e3 09 fc 	CALL 0xffa0182c <_htons>;
ffa0201e:	a8 b6       	W[P5 + 0x14] = R0;
ffa02020:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02024:	ff e3 04 fc 	CALL 0xffa0182c <_htons>;
ffa02028:	e8 b6       	W[P5 + 0x16] = R0;
ffa0202a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0202c:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa02030:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa02034:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02036:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa0203a:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa0203e:	10 91       	R0 = [P2];
ffa02040:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02044:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02048:	e8 b1       	[P5 + 0x1c] = R0;
ffa0204a:	10 91       	R0 = [P2];
ffa0204c:	28 b2       	[P5 + 0x20] = R0;
ffa0204e:	45 30       	R0 = P5;
ffa02050:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02052:	6f b7       	W[P5 + 0x1a] = R7;
ffa02054:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02056:	ff e3 d3 fb 	CALL 0xffa017fc <_NetCksum>;
ffa0205a:	c0 43       	R0 =~ R0;
ffa0205c:	68 b7       	W[P5 + 0x1a] = R0;
ffa0205e:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02062:	ff e3 e5 fb 	CALL 0xffa0182c <_htons>;
ffa02066:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0206a:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0206e:	ff e3 df fb 	CALL 0xffa0182c <_htons>;
ffa02072:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02076:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02078:	ff e3 da fb 	CALL 0xffa0182c <_htons>;
ffa0207c:	55 32       	P2 = P5;
ffa0207e:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa02082:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02086:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02088:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0208a:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa0208c:	b2 e0 03 10 	LSETUP(0xffa02090 <_ether_testUDP+0x110>, 0xffa02092 <_ether_testUDP+0x112>) LC1 = P1;
ffa02090:	11 9a       	B[P2++] = R1;
ffa02092:	09 64       	R1 += 0x1;		/* (  1) */
ffa02094:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02098:	00 e1 1c 02 	R0.L = 0x21c;		/* (540)	R0=0xff90021c(-7339492) */
ffa0209c:	ff e3 58 f4 	CALL 0xffa0094c <_printf_str>;
ffa020a0:	ff e3 70 fd 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa020a4:	01 e8 00 00 	UNLINK;
ffa020a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020aa:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020ac:	10 00       	RTS;
ffa020ae:	01 e8 00 00 	UNLINK;
ffa020b2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020b4:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020b6:	10 00       	RTS;

ffa020b8 <_eth_header_setup>:
ffa020b8:	c4 04       	[--SP] = (P5:4);
ffa020ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa020be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa020c2:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa020c6:	00 32       	P0 = R0;
ffa020c8:	10 95       	R0 = W[P2] (Z);
ffa020ca:	10 32       	P2 = R0;
ffa020cc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa020d0:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa020d4:	00 91       	R0 = [P0];
ffa020d6:	21 32       	P4 = R1;
ffa020d8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa020da:	52 91       	P2 = [P2];
ffa020dc:	08 30       	R1 = R0;
ffa020de:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa020e0:	80 67       	R0 += -0x10;		/* (-16) */
ffa020e2:	95 ad       	P5 = [P2 + 0x18];
ffa020e4:	00 93       	[P0] = R0;
ffa020e6:	02 30       	R0 = R2;
ffa020e8:	55 32       	P2 = P5;
ffa020ea:	11 96       	W[P2++] = R1;
ffa020ec:	4a 30       	R1 = P2;
ffa020ee:	00 e3 ab 07 	CALL 0xffa03044 <_ARP_req>;
ffa020f2:	00 0c       	CC = R0 == 0x0;
ffa020f4:	2b 18       	IF CC JUMP 0xffa0214a <_eth_header_setup+0x92>;
ffa020f6:	00 00       	NOP;
ffa020f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa020fc:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02100:	50 99       	R0 = B[P2] (X);
ffa02102:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02106:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa0210a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0210e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02112:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02116:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0211a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0211e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa02122:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02126:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0212a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0212e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02132:	ff e3 7d fb 	CALL 0xffa0182c <_htons>;
ffa02136:	e8 b5       	W[P5 + 0xe] = R0;
ffa02138:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0213a:	20 9b       	B[P4] = R0;
ffa0213c:	4d 30       	R1 = P5;
ffa0213e:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02140:	01 e8 00 00 	UNLINK;
ffa02144:	01 30       	R0 = R1;
ffa02146:	84 04       	(P5:4) = [SP++];
ffa02148:	10 00       	RTS;
ffa0214a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0214c:	20 9b       	B[P4] = R0;
ffa0214e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02150:	01 e8 00 00 	UNLINK;
ffa02154:	01 30       	R0 = R1;
ffa02156:	84 04       	(P5:4) = [SP++];
ffa02158:	10 00       	RTS;
	...

ffa0215c <_icmp_packet_setup>:
ffa0215c:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0215e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02162:	29 32       	P5 = R1;
ffa02164:	7f 30       	R7 = FP;
ffa02166:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02168:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0216a:	f0 bb       	[FP -0x4] = R0;
ffa0216c:	07 30       	R0 = R7;
ffa0216e:	22 32       	P4 = R2;
ffa02170:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02174:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02178:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0217c:	ff e3 9e ff 	CALL 0xffa020b8 <_eth_header_setup>;
ffa02180:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02184:	68 99 00 00 
ffa02188:	80 0c       	CC = R0 < 0x0;
ffa0218a:	14 18       	IF CC JUMP 0xffa021b2 <_icmp_packet_setup+0x56>;
ffa0218c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0218e:	f0 b0       	[SP + 0xc] = R0;
ffa02190:	54 30       	R2 = P4;
ffa02192:	01 30       	R0 = R1;
ffa02194:	0f 30       	R1 = R7;
ffa02196:	ff e3 7f fb 	CALL 0xffa01894 <_ip_header_setup>;
ffa0219a:	e9 42       	R1 = R5.L (Z);
ffa0219c:	f1 b0       	[SP + 0xc] = R1;
ffa0219e:	e1 42       	R1 = R4.L (Z);
ffa021a0:	31 b1       	[SP + 0x10] = R1;
ffa021a2:	72 43       	R2 = R6.B (Z);
ffa021a4:	0f 30       	R1 = R7;
ffa021a6:	ff e3 c1 fb 	CALL 0xffa01928 <_icmp_header_setup>;
ffa021aa:	01 e8 00 00 	UNLINK;
ffa021ae:	a4 05       	(R7:4, P5:4) = [SP++];
ffa021b0:	10 00       	RTS;
ffa021b2:	01 e8 00 00 	UNLINK;
ffa021b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021b8:	a4 05       	(R7:4, P5:4) = [SP++];
ffa021ba:	10 00       	RTS;

ffa021bc <_icmp_rx>:
ffa021bc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa021be:	28 32       	P5 = R0;
ffa021c0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa021c4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa021c8:	39 30       	R7 = R1;
ffa021ca:	ff e3 31 fb 	CALL 0xffa0182c <_htons>;
ffa021ce:	c0 42       	R0 = R0.L (Z);
ffa021d0:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa021d2:	01 08       	CC = R1 == R0;
ffa021d4:	06 18       	IF CC JUMP 0xffa021e0 <_icmp_rx+0x24>;
ffa021d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021d8:	01 e8 00 00 	UNLINK;
ffa021dc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa021de:	10 00       	RTS;
ffa021e0:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa021e2:	07 0a       	CC = R7 <= R0 (IU);
ffa021e4:	f9 1b       	IF CC JUMP 0xffa021d6 <_icmp_rx+0x1a>;
ffa021e6:	00 00       	NOP;
ffa021e8:	00 00       	NOP;
ffa021ea:	00 00       	NOP;
ffa021ec:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa021f0:	08 0c       	CC = R0 == 0x1;
ffa021f2:	f2 17       	IF !CC JUMP 0xffa021d6 <_icmp_rx+0x1a> (BP);
ffa021f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa021f8:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa021fc:	28 a2       	R0 = [P5 + 0x20];
ffa021fe:	11 91       	R1 = [P2];
ffa02200:	08 08       	CC = R0 == R1;
ffa02202:	ea 17       	IF !CC JUMP 0xffa021d6 <_icmp_rx+0x1a> (BP);
ffa02204:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02208:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa0220c:	08 08       	CC = R0 == R1;
ffa0220e:	3e 18       	IF CC JUMP 0xffa0228a <_icmp_rx+0xce>;
ffa02210:	00 00       	NOP;
ffa02212:	00 00       	NOP;
ffa02214:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02216:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0221a:	08 08       	CC = R0 == R1;
ffa0221c:	dd 17       	IF !CC JUMP 0xffa021d6 <_icmp_rx+0x1a> (BP);
ffa0221e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02222:	e9 a1       	R1 = [P5 + 0x1c];
ffa02224:	00 e1 34 02 	R0.L = 0x234;		/* (564)	R0=0xff900234(-7339468) */
ffa02228:	ff e3 f6 f4 	CALL 0xffa00c14 <_printf_ip>;
ffa0222c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02230:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02234:	e8 a1       	R0 = [P5 + 0x1c];
ffa02236:	4d 30       	R1 = P5;
ffa02238:	10 93       	[P2] = R0;
ffa0223a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0223c:	00 e3 06 05 	CALL 0xffa02c48 <_ARP_lut_add>;
ffa02240:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900234(-7339468) */
ffa02244:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02248:	ff e3 82 f3 	CALL 0xffa0094c <_printf_str>;
ffa0224c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02250:	ea a1 00 00 
ffa02254:	f0 b0       	[SP + 0xc] = R0;
ffa02256:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0225a:	30 b1       	[SP + 0x10] = R0;
ffa0225c:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0225e:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02262:	4f 30       	R1 = FP;
ffa02264:	70 b1       	[SP + 0x14] = R0;
ffa02266:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02268:	07 30       	R0 = R7;
ffa0226a:	ff e3 79 ff 	CALL 0xffa0215c <_icmp_packet_setup>;
ffa0226e:	08 30       	R1 = R0;
ffa02270:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02274:	00 0d       	CC = R0 <= 0x0;
ffa02276:	b0 1b       	IF CC JUMP 0xffa021d6 <_icmp_rx+0x1a>;
ffa02278:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0227a:	45 30       	R0 = P5;
ffa0227c:	17 30       	R2 = R7;
ffa0227e:	ff e3 0f f5 	CALL 0xffa00c9c <_memcpy_>;
ffa02282:	ff e3 7f fc 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa02286:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02288:	a8 2f       	JUMP.S 0xffa021d8 <_icmp_rx+0x1c>;
ffa0228a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0228e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02290:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa02294:	10 9b       	B[P2] = R0;
ffa02296:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02298:	a0 2f       	JUMP.S 0xffa021d8 <_icmp_rx+0x1c>;
	...

ffa0229c <_udp_packet_setup>:
ffa0229c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0229e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa022a2:	29 32       	P5 = R1;
ffa022a4:	7f 30       	R7 = FP;
ffa022a6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c2c <_txIdx> */
ffa022aa:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa022ac:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa022ae:	0c e1 64 0c 	P4.L = 0xc64;		/* (3172)	P4=0xff900c64 <_NetDataDestIP> */
ffa022b2:	f0 bb       	[FP -0x4] = R0;
ffa022b4:	22 91       	R2 = [P4];
ffa022b6:	07 30       	R0 = R7;
ffa022b8:	ff e3 00 ff 	CALL 0xffa020b8 <_eth_header_setup>;
ffa022bc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa022c0:	68 99 00 00 
ffa022c4:	80 0c       	CC = R0 < 0x0;
ffa022c6:	14 18       	IF CC JUMP 0xffa022ee <_udp_packet_setup+0x52>;
ffa022c8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa022ca:	f0 b0       	[SP + 0xc] = R0;
ffa022cc:	01 30       	R0 = R1;
ffa022ce:	22 91       	R2 = [P4];
ffa022d0:	0f 30       	R1 = R7;
ffa022d2:	ff e3 e1 fa 	CALL 0xffa01894 <_ip_header_setup>;
ffa022d6:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa022da:	f1 b0       	[SP + 0xc] = R1;
ffa022dc:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa022e0:	0f 30       	R1 = R7;
ffa022e2:	ff e3 47 fb 	CALL 0xffa01970 <_udp_header_setup>;
ffa022e6:	01 e8 00 00 	UNLINK;
ffa022ea:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022ec:	10 00       	RTS;
ffa022ee:	01 e8 00 00 	UNLINK;
ffa022f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022f4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022f6:	10 00       	RTS;

ffa022f8 <_SetupTxBuffer>:
ffa022f8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa022fa:	38 30       	R7 = R0;
ffa022fc:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02300:	c7 40       	R7 *= R0;
ffa02302:	17 32       	P2 = R7;
ffa02304:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c30 */
ffa02308:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa0230c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02310:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02314:	6a 5b       	P5 = P2 + P5;
ffa02316:	c7 51       	R7 = R7 + R0;
ffa02318:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0231c:	45 30       	R0 = P5;
ffa0231e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02320:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02322:	ff e3 cd f4 	CALL 0xffa00cbc <_memset_>;
ffa02326:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0232a:	af b1 00 00 
ffa0232e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02332:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02336:	ff e3 c3 f4 	CALL 0xffa00cbc <_memset_>;
ffa0233a:	45 30       	R0 = P5;
ffa0233c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0233e:	28 93       	[P5] = R0;
ffa02340:	a8 a1       	R0 = [P5 + 0x18];
ffa02342:	68 b0       	[P5 + 0x4] = R0;
ffa02344:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02348:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0234a:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa0234c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0234e:	10 54       	R0 = R0 & R2;
ffa02350:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02352:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02356:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02358:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0235c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0235e:	18 54       	R0 = R0 & R3;
ffa02360:	08 56       	R0 = R0 | R1;
ffa02362:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02366:	08 56       	R0 = R0 | R1;
ffa02368:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0236c:	45 30       	R0 = P5;
ffa0236e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02370:	28 b1       	[P5 + 0x10] = R0;
ffa02372:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02376:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02378:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0237a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0237e:	10 54       	R0 = R0 & R2;
ffa02380:	08 56       	R0 = R0 | R1;
ffa02382:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02386:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0238a:	18 54       	R0 = R0 & R3;
ffa0238c:	39 64       	R1 += 0x7;		/* (  7) */
ffa0238e:	08 54       	R0 = R0 & R1;
ffa02390:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02394:	ed bc       	[P5 + 0xc] = P5;
ffa02396:	01 e8 00 00 	UNLINK;
ffa0239a:	45 30       	R0 = P5;
ffa0239c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0239e:	10 00       	RTS;

ffa023a0 <_SetupRxBuffer>:
ffa023a0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa023a2:	38 30       	R7 = R0;
ffa023a4:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa023a8:	c7 40       	R7 *= R0;
ffa023aa:	17 32       	P2 = R7;
ffa023ac:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa023b0:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa023b4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa023b8:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa023bc:	6a 5b       	P5 = P2 + P5;
ffa023be:	c7 51       	R7 = R7 + R0;
ffa023c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa023c4:	45 30       	R0 = P5;
ffa023c6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa023c8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa023ca:	ff e3 79 f4 	CALL 0xffa00cbc <_memset_>;
ffa023ce:	af b1       	[P5 + 0x18] = R7;
ffa023d0:	07 30       	R0 = R7;
ffa023d2:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa023d6:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa023da:	ff e3 71 f4 	CALL 0xffa00cbc <_memset_>;
ffa023de:	45 30       	R0 = P5;
ffa023e0:	60 64       	R0 += 0xc;		/* ( 12) */
ffa023e2:	28 93       	[P5] = R0;
ffa023e4:	a8 a1       	R0 = [P5 + 0x18];
ffa023e6:	68 b0       	[P5 + 0x4] = R0;
ffa023e8:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa023ec:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023ee:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa023f0:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023f2:	08 54       	R0 = R0 & R1;
ffa023f4:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa023f6:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023fa:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa023fc:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02400:	38 54       	R0 = R0 & R7;
ffa02402:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02404:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02408:	18 56       	R0 = R0 | R3;
ffa0240a:	10 56       	R0 = R0 | R2;
ffa0240c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02410:	45 30       	R0 = P5;
ffa02412:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02414:	28 b1       	[P5 + 0x10] = R0;
ffa02416:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0241a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0241c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0241e:	08 54       	R0 = R0 & R1;
ffa02420:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02424:	08 56       	R0 = R0 | R1;
ffa02426:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0242a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0242e:	38 54       	R0 = R0 & R7;
ffa02430:	18 56       	R0 = R0 | R3;
ffa02432:	10 56       	R0 = R0 | R2;
ffa02434:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02438:	ed bc       	[P5 + 0xc] = P5;
ffa0243a:	01 e8 00 00 	UNLINK;
ffa0243e:	45 30       	R0 = P5;
ffa02440:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02442:	10 00       	RTS;

ffa02444 <_SetupSystemRegs>:
ffa02444:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02446:	28 32       	P5 = R0;
ffa02448:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa0244c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02450:	00 e1 50 02 	R0.L = 0x250;		/* (592)	R0=0xff900250(-7339440) */
ffa02454:	ff e3 7c f2 	CALL 0xffa0094c <_printf_str>;
ffa02458:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
ffa0245c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02460:	50 95       	R0 = W[P2] (X);
ffa02462:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02466:	08 54       	R0 = R0 & R1;
ffa02468:	10 97       	W[P2] = R0;
ffa0246a:	50 95       	R0 = W[P2] (X);
ffa0246c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0246e:	10 97       	W[P2] = R0;
ffa02470:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02472:	51 95       	R1 = W[P2] (X);
ffa02474:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02478:	08 56       	R0 = R0 | R1;
ffa0247a:	10 97       	W[P2] = R0;
ffa0247c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0247e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02480:	10 97       	W[P2] = R0;
ffa02482:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02484:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02486:	10 97       	W[P2] = R0;
ffa02488:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa0248c:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02490:	50 95       	R0 = W[P2] (X);
ffa02492:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02494:	10 97       	W[P2] = R0;
ffa02496:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0249a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0249e:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa024a2:	10 93       	[P2] = R0;
ffa024a4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa024a6:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa024aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ac:	ff e3 4c f9 	CALL 0xffa01744 <_WrPHYReg>;
ffa024b0:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa024b4:	ff e3 e2 f5 	CALL 0xffa01078 <_udelay>;
ffa024b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ba:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa024bc:	ff e3 60 f9 	CALL 0xffa0177c <_RdPHYReg>;
ffa024c0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa024c2:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa024c4:	0e 20       	JUMP.S 0xffa024e0 <_SetupSystemRegs+0x9c>;
ffa024c6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa024ca:	ff e3 d7 f5 	CALL 0xffa01078 <_udelay>;
ffa024ce:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa024d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024d2:	ff e3 55 f9 	CALL 0xffa0177c <_RdPHYReg>;
ffa024d6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa024d8:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa024dc:	0f 08       	CC = R7 == R1;
ffa024de:	35 18       	IF CC JUMP 0xffa02548 <_SetupSystemRegs+0x104>;
ffa024e0:	06 54       	R0 = R6 & R0;
ffa024e2:	00 0c       	CC = R0 == 0x0;
ffa024e4:	f1 1f       	IF CC JUMP 0xffa024c6 <_SetupSystemRegs+0x82> (BP);
ffa024e6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa024e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ea:	ff e3 49 f9 	CALL 0xffa0177c <_RdPHYReg>;
ffa024ee:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa024f2:	01 54       	R0 = R1 & R0;
ffa024f4:	00 0c       	CC = R0 == 0x0;
ffa024f6:	27 1c       	IF CC JUMP 0xffa02544 <_SetupSystemRegs+0x100> (BP);
ffa024f8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024fa:	d0 4f       	R0 <<= 0x1a;
ffa024fc:	28 93       	[P5] = R0;
ffa024fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02502:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02504:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02508:	10 93       	[P2] = R0;
ffa0250a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0250e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02510:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02514:	10 97       	W[P2] = R0;
ffa02516:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02518:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0251a:	11 97       	W[P2] = R1;
ffa0251c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0251e:	10 97       	W[P2] = R0;
ffa02520:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02522:	10 97       	W[P2] = R0;
ffa02524:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02528:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0252c:	10 97       	W[P2] = R0;
ffa0252e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02530:	11 97       	W[P2] = R1;
ffa02532:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02534:	10 97       	W[P2] = R0;
ffa02536:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02538:	10 97       	W[P2] = R0;
ffa0253a:	01 e8 00 00 	UNLINK;
ffa0253e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02540:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02542:	10 00       	RTS;
ffa02544:	28 93       	[P5] = R0;
ffa02546:	dc 2f       	JUMP.S 0xffa024fe <_SetupSystemRegs+0xba>;
ffa02548:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0254c:	00 e1 68 02 	R0.L = 0x268;		/* (616)	R0=0xff900268(-7339416) */
ffa02550:	ff e3 fe f1 	CALL 0xffa0094c <_printf_str>;
ffa02554:	01 e8 00 00 	UNLINK;
ffa02558:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0255a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0255c:	10 00       	RTS;
	...

ffa02560 <_SetupMacAddr>:
ffa02560:	10 32       	P2 = R0;
ffa02562:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02564:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02566:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0256a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0256e:	10 9b       	B[P2] = R0;
ffa02570:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02572:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02576:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02578:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0257c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0257e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02582:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02586:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0258a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0258c:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02590:	10 99       	R0 = B[P2] (Z);
ffa02592:	08 56       	R0 = R0 | R1;
ffa02594:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02598:	89 4f       	R1 <<= 0x11;
ffa0259a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c30(-4191184) */
ffa0259e:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa025a2:	08 56       	R0 = R0 | R1;
ffa025a4:	08 93       	[P1] = R0;
ffa025a6:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa025aa:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa025ae:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa025b2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa025b4:	28 93       	[P5] = R0;
ffa025b6:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa025ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa025be:	09 91       	R1 = [P1];
ffa025c0:	07 e1 6c 0a 	R7.L = 0xa6c;		/* (2668)	R7=0xff900a6c(-7337364) */
ffa025c4:	00 e1 9c 02 	R0.L = 0x29c;		/* (668)	R0=0xff90029c(-7339364) */
ffa025c8:	ff e3 28 f2 	CALL 0xffa00a18 <_printf_hex>;
ffa025cc:	07 30       	R0 = R7;
ffa025ce:	ff e3 bf f1 	CALL 0xffa0094c <_printf_str>;
ffa025d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90029c(-7339364) */
ffa025d6:	29 91       	R1 = [P5];
ffa025d8:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa025dc:	ff e3 1e f2 	CALL 0xffa00a18 <_printf_hex>;
ffa025e0:	01 e8 00 00 	UNLINK;
ffa025e4:	07 30       	R0 = R7;
ffa025e6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa025e8:	ff e2 b2 f1 	JUMP.L 0xffa0094c <_printf_str>;

ffa025ec <_bfin_EMAC_init>:
ffa025ec:	f3 05       	[--SP] = (R7:6, P5:3);
ffa025ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa025f2:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025f6:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa025fa:	ff e3 a9 f1 	CALL 0xffa0094c <_printf_str>;
ffa025fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa02602:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02604:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02608:	16 97       	W[P2] = R6;
ffa0260a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa0260e:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa02612:	16 97       	W[P2] = R6;
ffa02614:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa02618:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa0261c:	16 97       	W[P2] = R6;
ffa0261e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa02622:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02624:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa02628:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0262a:	17 93       	[P2] = R7;
ffa0262c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02630:	f0 b0       	[SP + 0xc] = R0;
ffa02632:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02634:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02638:	ff e3 50 f8 	CALL 0xffa016d8 <_FormatIPAddress>;
ffa0263c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa02640:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02644:	10 93       	[P2] = R0;
ffa02646:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02648:	f0 b0       	[SP + 0xc] = R0;
ffa0264a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0264e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02650:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02654:	ff e3 42 f8 	CALL 0xffa016d8 <_FormatIPAddress>;
ffa02658:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa0265c:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02660:	10 93       	[P2] = R0;
ffa02662:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa02664:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02666:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0266a:	f0 b0       	[SP + 0xc] = R0;
ffa0266c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02670:	ff e3 34 f8 	CALL 0xffa016d8 <_FormatIPAddress>;
ffa02674:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02678:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0267c:	10 93       	[P2] = R0;
ffa0267e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa02682:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa02686:	17 93       	[P2] = R7;
ffa02688:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0268c:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa02690:	17 93       	[P2] = R7;
ffa02692:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02696:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0269a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0269e:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa026a2:	10 93       	[P2] = R0;
ffa026a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa026a8:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa026ac:	16 97       	W[P2] = R6;
ffa026ae:	00 e3 7f 02 	CALL 0xffa02bac <_ARP_init>;
ffa026b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa026b6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa026ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa026be:	17 93       	[P2] = R7;
ffa026c0:	00 e1 54 0c 	R0.L = 0xc54;		/* (3156)	R0=0xff900c54 <_NetOurMAC>(-7336876) */
ffa026c4:	ff e3 4e ff 	CALL 0xffa02560 <_SetupMacAddr>;
ffa026c8:	47 30       	R0 = FP;
ffa026ca:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa026cc:	ff e3 bc fe 	CALL 0xffa02444 <_SetupSystemRegs>;
ffa026d0:	80 0c       	CC = R0 < 0x0;
ffa026d2:	7a 18       	IF CC JUMP 0xffa027c6 <_bfin_EMAC_init+0x1da>;
ffa026d4:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa026d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026da:	07 e1 44 0c 	R7.L = 0xc44;		/* (3140)	R7=0xff900c44 <_rxbuf>(-7336892) */
ffa026de:	ff e3 61 fe 	CALL 0xffa023a0 <_SetupRxBuffer>;
ffa026e2:	07 32       	P0 = R7;
ffa026e4:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026e6:	00 93       	[P0] = R0;
ffa026e8:	17 32       	P2 = R7;
ffa026ea:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa026ec:	44 30       	R0 = P4;
ffa026ee:	ff e3 59 fe 	CALL 0xffa023a0 <_SetupRxBuffer>;
ffa026f2:	44 0c       	CC = P4 == 0x0;
ffa026f4:	08 32       	P1 = R0;
ffa026f6:	28 92       	[P5++] = R0;
ffa026f8:	52 18       	IF CC JUMP 0xffa0279c <_bfin_EMAC_init+0x1b0>;
ffa026fa:	07 32       	P0 = R7;
ffa026fc:	5c 0c       	CC = P4 == 0x3;
ffa026fe:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02700:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02704:	d0 b0       	[P2 + 0xc] = R0;
ffa02706:	54 18       	IF CC JUMP 0xffa027ae <_bfin_EMAC_init+0x1c2>;
ffa02708:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0270a:	5c 0d       	CC = P4 <= 0x3;
ffa0270c:	ee 1f       	IF CC JUMP 0xffa026e8 <_bfin_EMAC_init+0xfc> (BP);
ffa0270e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02710:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa02714:	ff e3 f2 fd 	CALL 0xffa022f8 <_SetupTxBuffer>;
ffa02718:	0b e1 30 0c 	P3.L = 0xc30;		/* (3120)	P3=0xff900c30 <_txbuf> */
ffa0271c:	18 93       	[P3] = R0;
ffa0271e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02720:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02722:	44 30       	R0 = P4;
ffa02724:	ff e3 ea fd 	CALL 0xffa022f8 <_SetupTxBuffer>;
ffa02728:	44 0c       	CC = P4 == 0x0;
ffa0272a:	08 32       	P1 = R0;
ffa0272c:	28 92       	[P5++] = R0;
ffa0272e:	35 18       	IF CC JUMP 0xffa02798 <_bfin_EMAC_init+0x1ac>;
ffa02730:	00 00       	NOP;
ffa02732:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02734:	5c 0c       	CC = P4 == 0x3;
ffa02736:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa0273a:	d0 b0       	[P2 + 0xc] = R0;
ffa0273c:	32 18       	IF CC JUMP 0xffa027a0 <_bfin_EMAC_init+0x1b4>;
ffa0273e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02740:	5c 0d       	CC = P4 <= 0x3;
ffa02742:	ef 1f       	IF CC JUMP 0xffa02720 <_bfin_EMAC_init+0x134> (BP);
ffa02744:	17 32       	P2 = R7;
ffa02746:	51 91       	P1 = [P2];
ffa02748:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa0274c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02750:	51 93       	[P2] = P1;
ffa02752:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02754:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02756:	10 97       	W[P2] = R0;
ffa02758:	ff e3 e8 f7 	CALL 0xffa01728 <_PollMdcDone>;
ffa0275c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0275e:	f0 b9       	R0 = [FP -0x4];
ffa02760:	d1 4f       	R1 <<= 0x1a;
ffa02762:	08 08       	CC = R0 == R1;
ffa02764:	2c 18       	IF CC JUMP 0xffa027bc <_bfin_EMAC_init+0x1d0>;
ffa02766:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0276a:	01 30       	R0 = R1;
ffa0276c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02770:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02774:	10 93       	[P2] = R0;
ffa02776:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0277a:	00 e1 c4 02 	R0.L = 0x2c4;		/* (708)	R0=0xff9002c4(-7339324) */
ffa0277e:	ff e3 4d f1 	CALL 0xffa00a18 <_printf_hex>;
ffa02782:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c4(-7339324) */
ffa02786:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0278a:	ff e3 e1 f0 	CALL 0xffa0094c <_printf_str>;
ffa0278e:	01 e8 00 00 	UNLINK;
ffa02792:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02794:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02796:	10 00       	RTS;
ffa02798:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0279a:	c4 2f       	JUMP.S 0xffa02722 <_bfin_EMAC_init+0x136>;
ffa0279c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0279e:	a7 2f       	JUMP.S 0xffa026ec <_bfin_EMAC_init+0x100>;
ffa027a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa027a4:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_txbuf> */
ffa027a8:	10 91       	R0 = [P2];
ffa027aa:	c8 b0       	[P1 + 0xc] = R0;
ffa027ac:	cc 2f       	JUMP.S 0xffa02744 <_bfin_EMAC_init+0x158>;
ffa027ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_txbuf> */
ffa027b2:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_rxbuf> */
ffa027b6:	10 91       	R0 = [P2];
ffa027b8:	c8 b0       	[P1 + 0xc] = R0;
ffa027ba:	aa 2f       	JUMP.S 0xffa0270e <_bfin_EMAC_init+0x122>;
ffa027bc:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa027c0:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa027c2:	01 30       	R0 = R1;
ffa027c4:	d4 2f       	JUMP.S 0xffa0276c <_bfin_EMAC_init+0x180>;
ffa027c6:	01 e8 00 00 	UNLINK;
ffa027ca:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027cc:	b3 05       	(R7:6, P5:3) = [SP++];
ffa027ce:	10 00       	RTS;

ffa027d0 <_bfin_EMAC_recv_poll>:
ffa027d0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa027d2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa027d6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa027da:	0d e1 44 0c 	P5.L = 0xc44;		/* (3140)	P5=0xff900c44 <_rxbuf> */
ffa027de:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa027e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027e6:	28 30       	R5 = R0;
ffa027e8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027ea:	75 30       	R6 = P5;
ffa027ec:	5c 32       	P3 = P4;
ffa027ee:	06 20       	JUMP.S 0xffa027fa <_bfin_EMAC_recv_poll+0x2a>;
ffa027f0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027f2:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa027f6:	07 08       	CC = R7 == R0;
ffa027f8:	0c 18       	IF CC JUMP 0xffa02810 <_bfin_EMAC_recv_poll+0x40>;
ffa027fa:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa027fe:	ff e3 3d f4 	CALL 0xffa01078 <_udelay>;
ffa02802:	20 95       	R0 = W[P4] (Z);
ffa02804:	10 32       	P2 = R0;
ffa02806:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02808:	52 91       	P2 = [P2];
ffa0280a:	90 a2       	R0 = [P2 + 0x28];
ffa0280c:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0280e:	f1 1f       	IF CC JUMP 0xffa027f0 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02810:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02814:	91 a2       	R1 = [P2 + 0x28];
ffa02816:	41 54       	R1 = R1 & R0;
ffa02818:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0281a:	01 09       	CC = R1 <= R0;
ffa0281c:	07 10       	IF !CC JUMP 0xffa0282a <_bfin_EMAC_recv_poll+0x5a>;
ffa0281e:	01 e8 00 00 	UNLINK;
ffa02822:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02824:	07 30       	R0 = R7;
ffa02826:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02828:	10 00       	RTS;
ffa0282a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0282c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02830:	90 b2 00 00 
ffa02834:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02836:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0283a:	0f 30       	R1 = R7;
ffa0283c:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa02840:	ff e3 48 f1 	CALL 0xffa00ad0 <_printf_int>;
ffa02844:	18 95       	R0 = W[P3] (Z);
ffa02846:	10 32       	P2 = R0;
ffa02848:	0e 32       	P1 = R6;
ffa0284a:	0f 30       	R1 = R7;
ffa0284c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0284e:	52 91       	P2 = [P2];
ffa02850:	90 a1       	R0 = [P2 + 0x18];
ffa02852:	15 32       	P2 = R5;
ffa02854:	10 93       	[P2] = R0;
ffa02856:	00 e3 5f 02 	CALL 0xffa02d14 <_ARP_rx>;
ffa0285a:	00 0c       	CC = R0 == 0x0;
ffa0285c:	1f 18       	IF CC JUMP 0xffa0289a <_bfin_EMAC_recv_poll+0xca>;
ffa0285e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02860:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02864:	20 95       	R0 = W[P4] (Z);
ffa02866:	10 32       	P2 = R0;
ffa02868:	61 95       	R1 = W[P4] (X);
ffa0286a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0286c:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxIdx> */
ffa02870:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02872:	52 91       	P2 = [P2];
ffa02874:	90 b2       	[P2 + 0x28] = R0;
ffa02876:	c8 42       	R0 = R1.L (Z);
ffa02878:	10 0d       	CC = R0 <= 0x2;
ffa0287a:	08 1c       	IF CC JUMP 0xffa0288a <_bfin_EMAC_recv_poll+0xba> (BP);
ffa0287c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0287e:	08 97       	W[P1] = R0;
ffa02880:	01 e8 00 00 	UNLINK;
ffa02884:	07 30       	R0 = R7;
ffa02886:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02888:	10 00       	RTS;
ffa0288a:	01 30       	R0 = R1;
ffa0288c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0288e:	08 97       	W[P1] = R0;
ffa02890:	01 e8 00 00 	UNLINK;
ffa02894:	07 30       	R0 = R7;
ffa02896:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02898:	10 00       	RTS;
ffa0289a:	0d 32       	P1 = R5;
ffa0289c:	0f 30       	R1 = R7;
ffa0289e:	08 91       	R0 = [P1];
ffa028a0:	ff e3 8e fc 	CALL 0xffa021bc <_icmp_rx>;
ffa028a4:	00 0c       	CC = R0 == 0x0;
ffa028a6:	dd 1f       	IF CC JUMP 0xffa02860 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa028a8:	db 2f       	JUMP.S 0xffa0285e <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa028ac <_DHCP_rx>:
ffa028ac:	ed 05       	[--SP] = (R7:5, P5:5);
ffa028ae:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa028b2:	6f 30       	R5 = FP;
ffa028b4:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa028b6:	01 20       	JUMP.S 0xffa028b8 <_DHCP_rx+0xc>;
ffa028b8:	05 30       	R0 = R5;
ffa028ba:	ff e3 8b ff 	CALL 0xffa027d0 <_bfin_EMAC_recv_poll>;
ffa028be:	38 30       	R7 = R0;
ffa028c0:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa028c4:	87 51       	R6 = R7 + R0;
ffa028c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa028ca:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa028ce:	0e 30       	R1 = R6;
ffa028d0:	ff e3 00 f1 	CALL 0xffa00ad0 <_printf_int>;
ffa028d4:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa028d8:	07 09       	CC = R7 <= R0;
ffa028da:	fd b9       	P5 = [FP -0x4];
ffa028dc:	0c 18       	IF CC JUMP 0xffa028f4 <_DHCP_rx+0x48>;
ffa028de:	00 00       	NOP;
ffa028e0:	00 00       	NOP;
ffa028e2:	00 00       	NOP;
ffa028e4:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa028e6:	ff e3 a3 f7 	CALL 0xffa0182c <_htons>;
ffa028ea:	c0 42       	R0 = R0.L (Z);
ffa028ec:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa028f0:	08 08       	CC = R0 == R1;
ffa028f2:	08 18       	IF CC JUMP 0xffa02902 <_DHCP_rx+0x56>;
ffa028f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa028f8:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa028fc:	ff e3 28 f0 	CALL 0xffa0094c <_printf_str>;
ffa02900:	dc 2f       	JUMP.S 0xffa028b8 <_DHCP_rx+0xc>;
ffa02902:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02906:	ff e3 93 f7 	CALL 0xffa0182c <_htons>;
ffa0290a:	c0 42       	R0 = R0.L (Z);
ffa0290c:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02910:	01 08       	CC = R1 == R0;
ffa02912:	d3 17       	IF !CC JUMP 0xffa028b8 <_DHCP_rx+0xc> (BP);
ffa02914:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02918:	ff e3 8a f7 	CALL 0xffa0182c <_htons>;
ffa0291c:	c0 42       	R0 = R0.L (Z);
ffa0291e:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02922:	01 08       	CC = R1 == R0;
ffa02924:	ca 17       	IF !CC JUMP 0xffa028b8 <_DHCP_rx+0xc> (BP);
ffa02926:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa0292a:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0292e:	11 91       	R1 = [P2];
ffa02930:	28 a3       	R0 = [P5 + 0x30];
ffa02932:	08 08       	CC = R0 == R1;
ffa02934:	c2 17       	IF !CC JUMP 0xffa028b8 <_DHCP_rx+0xc> (BP);
ffa02936:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa0293a:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0293e:	ff e3 83 f7 	CALL 0xffa01844 <_htonl>;
ffa02942:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02946:	01 08       	CC = R1 == R0;
ffa02948:	b8 17       	IF !CC JUMP 0xffa028b8 <_DHCP_rx+0xc> (BP);
ffa0294a:	4d 30       	R1 = P5;
ffa0294c:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02950:	01 50       	R0 = R1 + R0;
ffa02952:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02956:	f0 bb 00 00 
ffa0295a:	ff e3 59 f8 	CALL 0xffa01a0c <_DHCP_parse>;
ffa0295e:	e9 a3       	R1 = [P5 + 0x3c];
ffa02960:	01 0c       	CC = R1 == 0x0;
ffa02962:	12 1c       	IF CC JUMP 0xffa02986 <_DHCP_rx+0xda> (BP);
ffa02964:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02968:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa0296c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02970:	11 93       	[P2] = R1;
ffa02972:	00 e1 e4 02 	R0.L = 0x2e4;		/* (740)	R0=0xff9002e4(-7339292) */
ffa02976:	ff e3 4f f1 	CALL 0xffa00c14 <_printf_ip>;
ffa0297a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e4(-7339292) */
ffa0297e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02982:	ff e3 e5 ef 	CALL 0xffa0094c <_printf_str>;
ffa02986:	01 e8 00 00 	UNLINK;
ffa0298a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0298c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0298e:	10 00       	RTS;

ffa02990 <_DHCP_req>:
ffa02990:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02992:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c44 <_rxbuf> */
ffa02996:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetDHCPserv> */
ffa0299a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0299c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa029a0:	28 93       	[P5] = R0;
ffa029a2:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029a4:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa029a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029aa:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa029ae:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa029b2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa029b4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa029b8:	7f 30       	R7 = FP;
ffa029ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa029be:	00 e1 24 03 	R0.L = 0x324;		/* (804)	R0=0xff900324(-7339228) */
ffa029c2:	a7 67       	R7 += -0xc;		/* (-12) */
ffa029c4:	ff e3 c4 ef 	CALL 0xffa0094c <_printf_str>;
ffa029c8:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa029cc:	2a 91 00 00 
ffa029d0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029d2:	ff e3 45 f9 	CALL 0xffa01c5c <_DHCP_tx>;
ffa029d6:	ff e3 6b ff 	CALL 0xffa028ac <_DHCP_rx>;
ffa029da:	29 91       	R1 = [P5];
ffa029dc:	39 0c       	CC = R1 == -0x1;
ffa029de:	43 18       	IF CC JUMP 0xffa02a64 <_DHCP_req+0xd4>;
ffa029e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029e4:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa029e8:	10 91       	R0 = [P2];
ffa029ea:	00 0c       	CC = R0 == 0x0;
ffa029ec:	08 18       	IF CC JUMP 0xffa029fc <_DHCP_req+0x6c>;
ffa029ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029f2:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa029f6:	10 91       	R0 = [P2];
ffa029f8:	00 0c       	CC = R0 == 0x0;
ffa029fa:	30 10       	IF !CC JUMP 0xffa02a5a <_DHCP_req+0xca>;
ffa029fc:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029fe:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02a02:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a04:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02a08:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02a0a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02a0e:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02a10:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02a14:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02a16:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02a1a:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02a1e:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02a22:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02a26:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02a2a:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02a2e:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02a32:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a34:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02a38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02a3c:	00 e1 54 03 	R0.L = 0x354;		/* (852)	R0=0xff900354(-7339180) */
ffa02a40:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02a44:	ff e3 84 ef 	CALL 0xffa0094c <_printf_str>;
ffa02a48:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02a4a:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02a4e:	2a 91 00 00 
ffa02a52:	ff e3 05 f9 	CALL 0xffa01c5c <_DHCP_tx>;
ffa02a56:	ff e3 2b ff 	CALL 0xffa028ac <_DHCP_rx>;
ffa02a5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a5c:	01 e8 00 00 	UNLINK;
ffa02a60:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02a62:	10 00       	RTS;
ffa02a64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a68:	00 e1 38 03 	R0.L = 0x338;		/* (824)	R0=0xff900338(-7339208) */
ffa02a6c:	ff e3 70 ef 	CALL 0xffa0094c <_printf_str>;
ffa02a70:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a72:	f5 2f       	JUMP.S 0xffa02a5c <_DHCP_req+0xcc>;

ffa02a74 <_bfin_EMAC_recv>:
ffa02a74:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a76:	28 32       	P5 = R0;
ffa02a78:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02a7c:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa02a80:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c30(-4191184) */
ffa02a84:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa02a88:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a8c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a8e:	6c 30       	R5 = P4;
ffa02a90:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa02a92:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02a96:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa02a9a:	0f 20       	JUMP.S 0xffa02ab8 <_bfin_EMAC_recv+0x44>;
ffa02a9c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a9e:	20 97       	W[P4] = R0;
ffa02aa0:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02aa4:	28 91 00 00 
ffa02aa8:	00 e3 36 01 	CALL 0xffa02d14 <_ARP_rx>;
ffa02aac:	00 0c       	CC = R0 == 0x0;
ffa02aae:	43 18       	IF CC JUMP 0xffa02b34 <_bfin_EMAC_recv+0xc0>;
ffa02ab0:	14 32       	P2 = R4;
ffa02ab2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ab4:	16 97       	W[P2] = R6;
ffa02ab6:	01 20       	JUMP.S 0xffa02ab8 <_bfin_EMAC_recv+0x44>;
ffa02ab8:	0d 32       	P1 = R5;
ffa02aba:	08 95       	R0 = W[P1] (Z);
ffa02abc:	10 32       	P2 = R0;
ffa02abe:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c40 <_rxIdx> */
ffa02ac2:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa02ac6:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02ac8:	51 91       	P1 = [P2];
ffa02aca:	88 a2       	R0 = [P1 + 0x28];
ffa02acc:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02ace:	48 18       	IF CC JUMP 0xffa02b5e <_bfin_EMAC_recv+0xea>;
ffa02ad0:	00 00       	NOP;
ffa02ad2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ad4:	a0 4f       	R0 <<= 0x14;
ffa02ad6:	89 a2       	R1 = [P1 + 0x28];
ffa02ad8:	81 54       	R2 = R1 & R0;
ffa02ada:	02 0c       	CC = R2 == 0x0;
ffa02adc:	47 10       	IF !CC JUMP 0xffa02b6a <_bfin_EMAC_recv+0xf6>;
ffa02ade:	00 00       	NOP;
ffa02ae0:	00 00       	NOP;
ffa02ae2:	00 00       	NOP;
ffa02ae4:	88 a2       	R0 = [P1 + 0x28];
ffa02ae6:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02ae8:	4c 18       	IF CC JUMP 0xffa02b80 <_bfin_EMAC_recv+0x10c>;
ffa02aea:	00 00       	NOP;
ffa02aec:	00 00       	NOP;
ffa02aee:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02af2:	89 a2       	R1 = [P1 + 0x28];
ffa02af4:	c1 55       	R7 = R1 & R0;
ffa02af6:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02af8:	07 09       	CC = R7 <= R0;
ffa02afa:	4e 18       	IF CC JUMP 0xffa02b96 <_bfin_EMAC_recv+0x122>;
ffa02afc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c5c(-4191140) */
ffa02b00:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02b04:	16 97       	W[P2] = R6;
ffa02b06:	88 a1       	R0 = [P1 + 0x18];
ffa02b08:	59 95       	R1 = W[P3] (X);
ffa02b0a:	28 93       	[P5] = R0;
ffa02b0c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02b0e:	08 56       	R0 = R0 | R1;
ffa02b10:	18 97       	W[P3] = R0;
ffa02b12:	61 95       	R1 = W[P4] (X);
ffa02b14:	c8 42       	R0 = R1.L (Z);
ffa02b16:	10 0d       	CC = R0 <= 0x2;
ffa02b18:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02b1a:	8a b2       	[P1 + 0x28] = R2;
ffa02b1c:	c0 17       	IF !CC JUMP 0xffa02a9c <_bfin_EMAC_recv+0x28> (BP);
ffa02b1e:	01 30       	R0 = R1;
ffa02b20:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b22:	20 97       	W[P4] = R0;
ffa02b24:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02b28:	28 91 00 00 
ffa02b2c:	00 e3 f4 00 	CALL 0xffa02d14 <_ARP_rx>;
ffa02b30:	00 0c       	CC = R0 == 0x0;
ffa02b32:	bf 17       	IF !CC JUMP 0xffa02ab0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02b34:	28 91       	R0 = [P5];
ffa02b36:	0f 30       	R1 = R7;
ffa02b38:	ff e3 42 fb 	CALL 0xffa021bc <_icmp_rx>;
ffa02b3c:	00 0c       	CC = R0 == 0x0;
ffa02b3e:	b9 17       	IF !CC JUMP 0xffa02ab0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02b40:	28 91       	R0 = [P5];
ffa02b42:	0f 30       	R1 = R7;
ffa02b44:	00 e3 46 04 	CALL 0xffa033d0 <_tcp_rx>;
ffa02b48:	00 0c       	CC = R0 == 0x0;
ffa02b4a:	b3 17       	IF !CC JUMP 0xffa02ab0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02b4c:	0c 32       	P1 = R4;
ffa02b4e:	07 0d       	CC = R7 <= 0x0;
ffa02b50:	0e 97       	W[P1] = R6;
ffa02b52:	b3 1f       	IF CC JUMP 0xffa02ab8 <_bfin_EMAC_recv+0x44> (BP);
ffa02b54:	01 e8 00 00 	UNLINK;
ffa02b58:	07 30       	R0 = R7;
ffa02b5a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b5c:	10 00       	RTS;
ffa02b5e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b60:	01 e8 00 00 	UNLINK;
ffa02b64:	07 30       	R0 = R7;
ffa02b66:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b68:	10 00       	RTS;
ffa02b6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02b6e:	00 e1 68 03 	R0.L = 0x368;		/* (872)	R0=0xff900368(-7339160) */
ffa02b72:	ff e3 ed ee 	CALL 0xffa0094c <_printf_str>;
ffa02b76:	01 e8 00 00 	UNLINK;
ffa02b7a:	07 30       	R0 = R7;
ffa02b7c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b7e:	10 00       	RTS;
ffa02b80:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900368(-7339160) */
ffa02b84:	00 e1 84 03 	R0.L = 0x384;		/* (900)	R0=0xff900384(-7339132) */
ffa02b88:	ff e3 e2 ee 	CALL 0xffa0094c <_printf_str>;
ffa02b8c:	01 e8 00 00 	UNLINK;
ffa02b90:	07 30       	R0 = R7;
ffa02b92:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b94:	10 00       	RTS;
ffa02b96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900384(-7339132) */
ffa02b9a:	00 e1 98 03 	R0.L = 0x398;		/* (920)	R0=0xff900398(-7339112) */
ffa02b9e:	ff e3 d7 ee 	CALL 0xffa0094c <_printf_str>;
ffa02ba2:	01 e8 00 00 	UNLINK;
ffa02ba6:	07 30       	R0 = R7;
ffa02ba8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02baa:	10 00       	RTS;

ffa02bac <_ARP_init>:
ffa02bac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02bb0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02bb4:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetArpLut> */
ffa02bb8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02bba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bbc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bbe:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02bc0:	b2 e0 12 10 	LSETUP(0xffa02bc4 <_ARP_init+0x18>, 0xffa02be4 <_ARP_init+0x38>) LC1 = P1;
ffa02bc4:	11 93       	[P2] = R1;
ffa02bc6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02bca:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02bce:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02bd2:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02bd6:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02bda:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02bde:	52 b5       	W[P2 + 0xa] = R2;
ffa02be0:	d1 b0       	[P2 + 0xc] = R1;
ffa02be2:	11 b1       	[P2 + 0x10] = R1;
ffa02be4:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02be6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetArpLut> */
ffa02bea:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02bee:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02bf2:	10 97       	W[P2] = R0;
ffa02bf4:	01 e8 00 00 	UNLINK;
ffa02bf8:	10 00       	RTS;
	...

ffa02bfc <_ARP_lut_find>:
ffa02bfc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c2c <_txIdx> */
ffa02c00:	08 e1 6c 0c 	P0.L = 0xc6c;		/* (3180)	P0=0xff900c6c <_NetArpLut> */
ffa02c04:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02c08:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c0a:	48 32       	P1 = P0;
ffa02c0c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c0e:	b2 e0 06 20 	LSETUP(0xffa02c12 <_ARP_lut_find+0x16>, 0xffa02c1a <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02c12:	08 91       	R0 = [P1];
ffa02c14:	00 0c       	CC = R0 == 0x0;
ffa02c16:	14 18       	IF CC JUMP 0xffa02c3e <_ARP_lut_find+0x42>;
ffa02c18:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02c1a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c1c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02c20:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02c22:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c24:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02c26:	09 e1 8a 0c 	P1.L = 0xc8a;		/* (3210)	P1=0xff900c8a */
ffa02c2a:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02c2c:	b2 e0 08 20 	LSETUP(0xffa02c30 <_ARP_lut_find+0x34>, 0xffa02c3c <_ARP_lut_find+0x40>) LC1 = P2;
ffa02c30:	08 95       	R0 = W[P1] (Z);
ffa02c32:	03 09       	CC = R3 <= R0;
ffa02c34:	03 18       	IF CC JUMP 0xffa02c3a <_ARP_lut_find+0x3e>;
ffa02c36:	11 30       	R2 = R1;
ffa02c38:	18 30       	R3 = R0;
ffa02c3a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c3c:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c3e:	02 30       	R0 = R2;
ffa02c40:	01 e8 00 00 	UNLINK;
ffa02c44:	10 00       	RTS;
	...

ffa02c48 <_ARP_lut_add>:
ffa02c48:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02c4a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02c4e:	0d e1 6c 0c 	P5.L = 0xc6c;		/* (3180)	P5=0xff900c6c <_NetArpLut> */
ffa02c52:	31 30       	R6 = R1;
ffa02c54:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c58:	38 30       	R7 = R0;
ffa02c5a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c5c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02c5e:	4d 32       	P1 = P5;
ffa02c60:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c62:	00 00       	NOP;
ffa02c64:	08 91       	R0 = [P1];
ffa02c66:	07 08       	CC = R7 == R0;
ffa02c68:	11 07       	IF CC R2 = R1;
ffa02c6a:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c6c:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02c6e:	42 0c       	CC = P2 == 0x0;
ffa02c70:	23 10       	IF !CC JUMP 0xffa02cb6 <_ARP_lut_add+0x6e>;
ffa02c72:	82 0c       	CC = R2 < 0x0;
ffa02c74:	25 18       	IF CC JUMP 0xffa02cbe <_ARP_lut_add+0x76>;
ffa02c76:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02c7a:	0a 32       	P1 = R2;
ffa02c7c:	11 32       	P2 = R1;
ffa02c7e:	06 32       	P0 = R6;
ffa02c80:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02c82:	6a 5a       	P1 = P2 + P5;
ffa02c84:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c86:	0f 93       	[P1] = R7;
ffa02c88:	aa 5a       	P2 = P2 + P5;
ffa02c8a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02c8c:	b2 e0 03 10 	LSETUP(0xffa02c90 <_ARP_lut_add+0x48>, 0xffa02c92 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02c90:	40 98       	R0 = B[P0++] (X);
ffa02c92:	10 9a       	B[P2++] = R0;
ffa02c94:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02c96:	09 32       	P1 = R1;
ffa02c98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02c9c:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02ca0:	50 95       	R0 = W[P2] (X);
ffa02ca2:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ca4:	10 97       	W[P2] = R0;
ffa02ca6:	a9 5a       	P2 = P1 + P5;
ffa02ca8:	50 b5       	W[P2 + 0xa] = R0;
ffa02caa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cac:	10 b1       	[P2 + 0x10] = R0;
ffa02cae:	01 e8 00 00 	UNLINK;
ffa02cb2:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02cb4:	10 00       	RTS;
ffa02cb6:	82 0c       	CC = R2 < 0x0;
ffa02cb8:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cba:	d4 1f       	IF CC JUMP 0xffa02c62 <_ARP_lut_add+0x1a> (BP);
ffa02cbc:	dd 2f       	JUMP.S 0xffa02c76 <_ARP_lut_add+0x2e>;
ffa02cbe:	ff e3 9f ff 	CALL 0xffa02bfc <_ARP_lut_find>;
ffa02cc2:	10 30       	R2 = R0;
ffa02cc4:	d9 2f       	JUMP.S 0xffa02c76 <_ARP_lut_add+0x2e>;
	...

ffa02cc8 <_ARP_lu>:
ffa02cc8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02ccc:	c4 04       	[--SP] = (P5:4);
ffa02cce:	09 e1 6c 0c 	P1.L = 0xc6c;		/* (3180)	P1=0xff900c6c <_NetArpLut> */
ffa02cd2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02cd6:	10 30       	R2 = R0;
ffa02cd8:	29 32       	P5 = R1;
ffa02cda:	61 32       	P4 = P1;
ffa02cdc:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02cde:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02ce0:	b2 e0 06 20 	LSETUP(0xffa02ce4 <_ARP_lu+0x1c>, 0xffa02cec <_ARP_lu+0x24>) LC1 = P2;
ffa02ce4:	08 91       	R0 = [P1];
ffa02ce6:	10 08       	CC = R0 == R2;
ffa02ce8:	08 18       	IF CC JUMP 0xffa02cf8 <_ARP_lu+0x30>;
ffa02cea:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02cec:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cee:	01 e8 00 00 	UNLINK;
ffa02cf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cf4:	84 04       	(P5:4) = [SP++];
ffa02cf6:	10 00       	RTS;
ffa02cf8:	08 a1       	R0 = [P1 + 0x10];
ffa02cfa:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02cfc:	f7 1f       	IF CC JUMP 0xffa02cea <_ARP_lu+0x22> (BP);
ffa02cfe:	60 5a       	P1 = P0 + P4;
ffa02d00:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02d02:	b2 e0 03 20 	LSETUP(0xffa02d06 <_ARP_lu+0x3e>, 0xffa02d08 <_ARP_lu+0x40>) LC1 = P2;
ffa02d06:	48 98       	R0 = B[P1++] (X);
ffa02d08:	28 9a       	B[P5++] = R0;
ffa02d0a:	01 e8 00 00 	UNLINK;
ffa02d0e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d10:	84 04       	(P5:4) = [SP++];
ffa02d12:	10 00       	RTS;

ffa02d14 <_ARP_rx>:
ffa02d14:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02d16:	20 32       	P4 = R0;
ffa02d18:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02d1c:	39 30       	R7 = R1;
ffa02d1e:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02d20:	ff e3 86 f5 	CALL 0xffa0182c <_htons>;
ffa02d24:	c0 42       	R0 = R0.L (Z);
ffa02d26:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02d2a:	08 08       	CC = R0 == R1;
ffa02d2c:	06 18       	IF CC JUMP 0xffa02d38 <_ARP_rx+0x24>;
ffa02d2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d30:	01 e8 00 00 	UNLINK;
ffa02d34:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02d36:	10 00       	RTS;
ffa02d38:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02d3a:	07 0a       	CC = R7 <= R0 (IU);
ffa02d3c:	f9 1f       	IF CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02d3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d40:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d42:	ff e3 75 f5 	CALL 0xffa0182c <_htons>;
ffa02d46:	c0 42       	R0 = R0.L (Z);
ffa02d48:	07 08       	CC = R7 == R0;
ffa02d4a:	f2 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02d4c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d50:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d52:	ff e3 6d f5 	CALL 0xffa0182c <_htons>;
ffa02d56:	c0 42       	R0 = R0.L (Z);
ffa02d58:	07 08       	CC = R7 == R0;
ffa02d5a:	ea 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02d5c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d5e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d62:	08 08       	CC = R0 == R1;
ffa02d64:	e5 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02d66:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d68:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d6a:	ff e3 61 f5 	CALL 0xffa0182c <_htons>;
ffa02d6e:	c0 42       	R0 = R0.L (Z);
ffa02d70:	07 08       	CC = R7 == R0;
ffa02d72:	0c 14       	IF !CC JUMP 0xffa02d8a <_ARP_rx+0x76> (BP);
ffa02d74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02d78:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02d7c:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02d80:	10 99       	R0 = B[P2] (Z);
ffa02d82:	01 08       	CC = R1 == R0;
ffa02d84:	ae 18       	IF CC JUMP 0xffa02ee0 <_ARP_rx+0x1cc>;
ffa02d86:	00 00       	NOP;
ffa02d88:	00 00       	NOP;
ffa02d8a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d8c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d8e:	ff e3 4f f5 	CALL 0xffa0182c <_htons>;
ffa02d92:	c0 42       	R0 = R0.L (Z);
ffa02d94:	07 08       	CC = R7 == R0;
ffa02d96:	cc 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02d98:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d9c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d9e:	ff e3 47 f5 	CALL 0xffa0182c <_htons>;
ffa02da2:	c0 42       	R0 = R0.L (Z);
ffa02da4:	07 08       	CC = R7 == R0;
ffa02da6:	c4 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02da8:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02daa:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02dae:	08 08       	CC = R0 == R1;
ffa02db0:	bf 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02db2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02db4:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02db6:	ff e3 3b f5 	CALL 0xffa0182c <_htons>;
ffa02dba:	c0 42       	R0 = R0.L (Z);
ffa02dbc:	07 08       	CC = R7 == R0;
ffa02dbe:	b8 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02dc0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02dc4:	07 e1 60 0c 	R7.L = 0xc60;		/* (3168)	R7=0xff900c60 <_NetOurIP>(-7336864) */
ffa02dc8:	17 32       	P2 = R7;
ffa02dca:	a1 a2       	R1 = [P4 + 0x28];
ffa02dcc:	10 91       	R0 = [P2];
ffa02dce:	01 08       	CC = R1 == R0;
ffa02dd0:	af 17       	IF !CC JUMP 0xffa02d2e <_ARP_rx+0x1a> (BP);
ffa02dd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02dd6:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02dda:	10 95       	R0 = W[P2] (Z);
ffa02ddc:	10 32       	P2 = R0;
ffa02dde:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c6c <_NetArpLut> */
ffa02de2:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02de6:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02de8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c6c <_NetArpLut> */
ffa02dec:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02dee:	52 91       	P2 = [P2];
ffa02df0:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02df4:	93 ad       	P3 = [P2 + 0x18];
ffa02df6:	18 97       	W[P3] = R0;
ffa02df8:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02dfc:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02e00:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02e04:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02e08:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02e0c:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02e10:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02e14:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02e18:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02e1c:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02e20:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02e24:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02e28:	68 99       	R0 = B[P5] (X);
ffa02e2a:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02e2e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02e32:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02e36:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02e3a:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02e3e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02e42:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02e46:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02e4a:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02e4e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02e52:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02e56:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e5a:	ff e3 e9 f4 	CALL 0xffa0182c <_htons>;
ffa02e5e:	d8 b5       	W[P3 + 0xe] = R0;
ffa02e60:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e62:	ff e3 e5 f4 	CALL 0xffa0182c <_htons>;
ffa02e66:	18 b6       	W[P3 + 0x10] = R0;
ffa02e68:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e6c:	ff e3 e0 f4 	CALL 0xffa0182c <_htons>;
ffa02e70:	58 b6       	W[P3 + 0x12] = R0;
ffa02e72:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02e74:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02e78:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e7a:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02e7e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02e80:	ff e3 d6 f4 	CALL 0xffa0182c <_htons>;
ffa02e84:	44 32       	P0 = P4;
ffa02e86:	d8 b6       	W[P3 + 0x16] = R0;
ffa02e88:	53 32       	P2 = P3;
ffa02e8a:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02e8c:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e8e:	b2 e0 08 10 	LSETUP(0xffa02e92 <_ARP_rx+0x17e>, 0xffa02e9e <_ARP_rx+0x18a>) LC1 = P1;
ffa02e92:	68 98       	R0 = B[P5++] (X);
ffa02e94:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02e98:	40 98       	R0 = B[P0++] (X);
ffa02e9a:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02e9e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02ea0:	17 32       	P2 = R7;
ffa02ea2:	50 99       	R0 = B[P2] (X);
ffa02ea4:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02ea8:	10 91       	R0 = [P2];
ffa02eaa:	40 4e       	R0 >>= 0x8;
ffa02eac:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02eb0:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02eb4:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02eb8:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02ebc:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02ec0:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02ec4:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02ec8:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02ecc:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02ed0:	f3 b0       	[SP + 0xc] = R3;
ffa02ed2:	ff e3 03 f4 	CALL 0xffa016d8 <_FormatIPAddress>;
ffa02ed6:	98 b2       	[P3 + 0x28] = R0;
ffa02ed8:	ff e3 54 f6 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa02edc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ede:	29 2f       	JUMP.S 0xffa02d30 <_ARP_rx+0x1c>;
ffa02ee0:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02ee4:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02ee8:	01 08       	CC = R1 == R0;
ffa02eea:	50 17       	IF !CC JUMP 0xffa02d8a <_ARP_rx+0x76> (BP);
ffa02eec:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02ef0:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02ef4:	01 08       	CC = R1 == R0;
ffa02ef6:	4a 17       	IF !CC JUMP 0xffa02d8a <_ARP_rx+0x76> (BP);
ffa02ef8:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02efc:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02f00:	01 08       	CC = R1 == R0;
ffa02f02:	44 17       	IF !CC JUMP 0xffa02d8a <_ARP_rx+0x76> (BP);
ffa02f04:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02f08:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02f0c:	01 08       	CC = R1 == R0;
ffa02f0e:	3e 17       	IF !CC JUMP 0xffa02d8a <_ARP_rx+0x76> (BP);
ffa02f10:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02f14:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02f18:	01 08       	CC = R1 == R0;
ffa02f1a:	38 17       	IF !CC JUMP 0xffa02d8a <_ARP_rx+0x76> (BP);
ffa02f1c:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02f1e:	44 30       	R0 = P4;
ffa02f20:	ff e3 a6 f4 	CALL 0xffa0186c <_pack4chars>;
ffa02f24:	38 30       	R7 = R0;
ffa02f26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02f2a:	0f 30       	R1 = R7;
ffa02f2c:	00 e1 a4 04 	R0.L = 0x4a4;		/* (1188)	R0=0xff9004a4(-7338844) */
ffa02f30:	ff e3 72 ee 	CALL 0xffa00c14 <_printf_ip>;
ffa02f34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004a4(-7338844) */
ffa02f38:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02f3c:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02f3e:	ff e3 07 ed 	CALL 0xffa0094c <_printf_str>;
ffa02f42:	07 30       	R0 = R7;
ffa02f44:	4c 30       	R1 = P4;
ffa02f46:	ff e3 81 fe 	CALL 0xffa02c48 <_ARP_lut_add>;
ffa02f4a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f4c:	f2 2e       	JUMP.S 0xffa02d30 <_ARP_rx+0x1c>;
	...

ffa02f50 <_ARP_tx>:
ffa02f50:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02f52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02f56:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f5a:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02f5e:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02f62:	10 95 00 00 
ffa02f66:	10 32       	P2 = R0;
ffa02f68:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f6c:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02f70:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02f72:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa02f76:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f78:	52 91       	P2 = [P2];
ffa02f7a:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02f7e:	94 ad       	P4 = [P2 + 0x18];
ffa02f80:	20 97       	W[P4] = R0;
ffa02f82:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02f84:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02f88:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02f8c:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02f90:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02f94:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02f98:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02f9c:	68 99       	R0 = B[P5] (X);
ffa02f9e:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02fa2:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02fa6:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02faa:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02fae:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02fb2:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02fb6:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02fba:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02fbe:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02fc2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02fc6:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02fca:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02fce:	ff e3 2f f4 	CALL 0xffa0182c <_htons>;
ffa02fd2:	e0 b5       	W[P4 + 0xe] = R0;
ffa02fd4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fd6:	ff e3 2b f4 	CALL 0xffa0182c <_htons>;
ffa02fda:	20 b6       	W[P4 + 0x10] = R0;
ffa02fdc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fe0:	ff e3 26 f4 	CALL 0xffa0182c <_htons>;
ffa02fe4:	60 b6       	W[P4 + 0x12] = R0;
ffa02fe6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02fe8:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02fec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02fee:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02ff2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ff4:	ff e3 1c f4 	CALL 0xffa0182c <_htons>;
ffa02ff8:	e0 b6       	W[P4 + 0x16] = R0;
ffa02ffa:	54 32       	P2 = P4;
ffa02ffc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ffe:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03000:	b2 e0 07 10 	LSETUP(0xffa03004 <_ARP_tx+0xb4>, 0xffa0300e <_ARP_tx+0xbe>) LC1 = P1;
ffa03004:	68 98       	R0 = B[P5++] (X);
ffa03006:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0300a:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa0300e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03010:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa03014:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa03018:	50 99       	R0 = B[P2] (X);
ffa0301a:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa0301e:	10 91       	R0 = [P2];
ffa03020:	40 4e       	R0 >>= 0x8;
ffa03022:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa03026:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0302a:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa0302e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03032:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa03036:	a7 b2       	[P4 + 0x28] = R7;
ffa03038:	01 e8 00 00 	UNLINK;
ffa0303c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0303e:	ff e2 a1 f5 	JUMP.L 0xffa01b80 <_bfin_EMAC_send_nocopy>;
	...

ffa03044 <_ARP_req>:
ffa03044:	ec 05       	[--SP] = (R7:5, P5:4);
ffa03046:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0304a:	38 30       	R7 = R0;
ffa0304c:	ff e3 3e fe 	CALL 0xffa02cc8 <_ARP_lu>;
ffa03050:	00 0c       	CC = R0 == 0x0;
ffa03052:	50 10       	IF !CC JUMP 0xffa030f2 <_ARP_req+0xae>;
ffa03054:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c60 */
ffa03058:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa0305c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa03060:	16 91       	R6 = [P2];
ffa03062:	0c e1 6c 0c 	P4.L = 0xc6c;		/* (3180)	P4=0xff900c6c <_NetArpLut> */
ffa03066:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0306a:	4c 32       	P1 = P4;
ffa0306c:	46 51       	R5 = R6 + R0;
ffa0306e:	6c 32       	P5 = P4;
ffa03070:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03072:	b2 e0 06 20 	LSETUP(0xffa03076 <_ARP_req+0x32>, 0xffa0307e <_ARP_req+0x3a>) LC1 = P2;
ffa03076:	08 91       	R0 = [P1];
ffa03078:	07 08       	CC = R7 == R0;
ffa0307a:	21 18       	IF CC JUMP 0xffa030bc <_ARP_req+0x78>;
ffa0307c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0307e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03080:	ff e3 be fd 	CALL 0xffa02bfc <_ARP_lut_find>;
ffa03084:	10 32       	P2 = R0;
ffa03086:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03088:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa0308c:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut_age> */
ffa03090:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa03092:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03094:	10 b1       	[P2 + 0x10] = R0;
ffa03096:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0309a:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0309e:	17 93 00 00 
ffa030a2:	d0 b0       	[P2 + 0xc] = R0;
ffa030a4:	48 95       	R0 = W[P1] (X);
ffa030a6:	08 64       	R0 += 0x1;		/* (  1) */
ffa030a8:	08 97       	W[P1] = R0;
ffa030aa:	50 b5       	W[P2 + 0xa] = R0;
ffa030ac:	07 30       	R0 = R7;
ffa030ae:	ff e3 51 ff 	CALL 0xffa02f50 <_ARP_tx>;
ffa030b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030b4:	01 e8 00 00 	UNLINK;
ffa030b8:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030ba:	10 00       	RTS;
ffa030bc:	08 a1       	R0 = [P1 + 0x10];
ffa030be:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa030c0:	de 1f       	IF CC JUMP 0xffa0307c <_ARP_req+0x38> (BP);
ffa030c2:	e8 a0       	R0 = [P5 + 0xc];
ffa030c4:	86 09       	CC = R6 < R0 (IU);
ffa030c6:	f6 1f       	IF CC JUMP 0xffa030b2 <_ARP_req+0x6e> (BP);
ffa030c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa030cc:	0f 30       	R1 = R7;
ffa030ce:	00 e1 c8 04 	R0.L = 0x4c8;		/* (1224)	R0=0xff9004c8(-7338808) */
ffa030d2:	ff e3 a1 ed 	CALL 0xffa00c14 <_printf_ip>;
ffa030d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c8(-7338808) */
ffa030da:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa030de:	ff e3 37 ec 	CALL 0xffa0094c <_printf_str>;
ffa030e2:	07 30       	R0 = R7;
ffa030e4:	ff e3 36 ff 	CALL 0xffa02f50 <_ARP_tx>;
ffa030e8:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa030ec:	ed b0 00 00 
ffa030f0:	e2 2f       	JUMP.S 0xffa030b4 <_ARP_req+0x70>;
ffa030f2:	01 e8 00 00 	UNLINK;
ffa030f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030f8:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030fa:	10 00       	RTS;

ffa030fc <_tcp_length>:
ffa030fc:	c5 04       	[--SP] = (P5:5);
ffa030fe:	28 32       	P5 = R0;
ffa03100:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03104:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa03106:	ff e3 93 f3 	CALL 0xffa0182c <_htons>;
ffa0310a:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa0310e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03110:	51 54       	R1 = R1 & R2;
ffa03112:	11 4f       	R1 <<= 0x2;
ffa03114:	c0 42       	R0 = R0.L (Z);
ffa03116:	08 52       	R0 = R0 - R1;
ffa03118:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa0311c:	11 4d       	R1 >>>= 0x2;
ffa0311e:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03120:	51 54       	R1 = R1 & R2;
ffa03122:	01 e8 00 00 	UNLINK;
ffa03126:	08 52       	R0 = R0 - R1;
ffa03128:	85 04       	(P5:5) = [SP++];
ffa0312a:	10 00       	RTS;

ffa0312c <_tcp_checksum_calc>:
ffa0312c:	08 32       	P1 = R0;
ffa0312e:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03130:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03134:	28 32       	P5 = R0;
ffa03136:	31 30       	R6 = R1;
ffa03138:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa0313a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0313c:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0313e:	b2 e0 03 20 	LSETUP(0xffa03142 <_tcp_checksum_calc+0x16>, 0xffa03144 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa03142:	08 94       	R0 = W[P1++] (Z);
ffa03144:	45 51       	R5 = R5 + R0;
ffa03146:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0314a:	10 4e       	R0 >>= 0x2;
ffa0314c:	06 50       	R0 = R6 + R0;
ffa0314e:	c0 42       	R0 = R0.L (Z);
ffa03150:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03154:	ff e3 6c f3 	CALL 0xffa0182c <_htons>;
ffa03158:	47 4f       	R7 <<= 0x8;
ffa0315a:	c0 42       	R0 = R0.L (Z);
ffa0315c:	c7 51       	R7 = R7 + R0;
ffa0315e:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03160:	ef 50       	R3 = R7 + R5;
ffa03162:	0d 1c       	IF CC JUMP 0xffa0317c <_tcp_checksum_calc+0x50> (BP);
ffa03164:	0e 32       	P1 = R6;
ffa03166:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0316a:	10 4e       	R0 >>= 0x2;
ffa0316c:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0316e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03170:	a9 5a       	P2 = P1 + P5;
ffa03172:	08 32       	P1 = R0;
ffa03174:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03176:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03178:	8a 5a       	P2 = P2 + P1;
ffa0317a:	10 9b       	B[P2] = R0;
ffa0317c:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03180:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03182:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03186:	71 50       	R1 = R1 + R6;
ffa03188:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0318c:	09 4d       	R1 >>>= 0x1;
ffa0318e:	18 4e       	R0 >>= 0x3;
ffa03190:	41 50       	R1 = R1 + R0;
ffa03192:	01 0d       	CC = R1 <= 0x0;
ffa03194:	09 18       	IF CC JUMP 0xffa031a6 <_tcp_checksum_calc+0x7a>;
ffa03196:	55 32       	P2 = P5;
ffa03198:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0319a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0319c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0319e:	10 94       	R0 = W[P2++] (Z);
ffa031a0:	0a 08       	CC = R2 == R1;
ffa031a2:	c3 50       	R3 = R3 + R0;
ffa031a4:	fc 17       	IF !CC JUMP 0xffa0319c <_tcp_checksum_calc+0x70> (BP);
ffa031a6:	d8 42       	R0 = R3.L (Z);
ffa031a8:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa031ac:	08 50       	R0 = R0 + R1;
ffa031ae:	c0 43       	R0 =~ R0;
ffa031b0:	01 e8 00 00 	UNLINK;
ffa031b4:	c0 42       	R0 = R0.L (Z);
ffa031b6:	ad 05       	(R7:5, P5:5) = [SP++];
ffa031b8:	10 00       	RTS;
	...

ffa031bc <_tcp_checksum_set>:
ffa031bc:	c5 04       	[--SP] = (P5:5);
ffa031be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa031c2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031c6:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa031ca:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa031ce:	10 95 00 00 
ffa031d2:	10 32       	P2 = R0;
ffa031d4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut_age> */
ffa031d8:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa031dc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031de:	52 91       	P2 = [P2];
ffa031e0:	95 ad       	P5 = [P2 + 0x18];
ffa031e2:	45 30       	R0 = P5;
ffa031e4:	ff e3 a4 ff 	CALL 0xffa0312c <_tcp_checksum_calc>;
ffa031e8:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa031ec:	01 e8 00 00 	UNLINK;
ffa031f0:	85 04       	(P5:5) = [SP++];
ffa031f2:	10 00       	RTS;

ffa031f4 <_tcp_checksum_check>:
ffa031f4:	10 32       	P2 = R0;
ffa031f6:	78 05       	[--SP] = (R7:7);
ffa031f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031fc:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03200:	ff e3 96 ff 	CALL 0xffa0312c <_tcp_checksum_calc>;
ffa03204:	0f 30       	R1 = R7;
ffa03206:	c7 42       	R7 = R0.L (Z);
ffa03208:	39 08       	CC = R1 == R7;
ffa0320a:	19 18       	IF CC JUMP 0xffa0323c <_tcp_checksum_check+0x48>;
ffa0320c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03210:	00 e1 e8 04 	R0.L = 0x4e8;		/* (1256)	R0=0xff9004e8(-7338776) */
ffa03214:	ff e3 02 ec 	CALL 0xffa00a18 <_printf_hex>;
ffa03218:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e8(-7338776) */
ffa0321c:	0f 30       	R1 = R7;
ffa0321e:	00 e1 04 05 	R0.L = 0x504;		/* (1284)	R0=0xff900504(-7338748) */
ffa03222:	ff e3 fb eb 	CALL 0xffa00a18 <_printf_hex>;
ffa03226:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900504(-7338748) */
ffa0322a:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0322e:	ff e3 8f eb 	CALL 0xffa0094c <_printf_str>;
ffa03232:	01 e8 00 00 	UNLINK;
ffa03236:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03238:	38 05       	(R7:7) = [SP++];
ffa0323a:	10 00       	RTS;
ffa0323c:	01 e8 00 00 	UNLINK;
ffa03240:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03242:	38 05       	(R7:7) = [SP++];
ffa03244:	10 00       	RTS;
	...

ffa03248 <_tcp_packet_setup>:
ffa03248:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0324a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0324e:	29 32       	P5 = R1;
ffa03250:	7f 30       	R7 = FP;
ffa03252:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03254:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03256:	f0 bb       	[FP -0x4] = R0;
ffa03258:	07 30       	R0 = R7;
ffa0325a:	2a 30       	R5 = R2;
ffa0325c:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03260:	ff e3 2c f7 	CALL 0xffa020b8 <_eth_header_setup>;
ffa03264:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03268:	68 99 00 00 
ffa0326c:	80 0c       	CC = R0 < 0x0;
ffa0326e:	14 18       	IF CC JUMP 0xffa03296 <_tcp_packet_setup+0x4e>;
ffa03270:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03272:	f0 b0       	[SP + 0xc] = R0;
ffa03274:	15 30       	R2 = R5;
ffa03276:	01 30       	R0 = R1;
ffa03278:	0f 30       	R1 = R7;
ffa0327a:	ff e3 0d f3 	CALL 0xffa01894 <_ip_header_setup>;
ffa0327e:	b9 a2       	R1 = [FP + 0x28];
ffa03280:	f1 b0       	[SP + 0xc] = R1;
ffa03282:	f9 a2       	R1 = [FP + 0x2c];
ffa03284:	31 b1       	[SP + 0x10] = R1;
ffa03286:	72 43       	R2 = R6.B (Z);
ffa03288:	0f 30       	R1 = R7;
ffa0328a:	ff e3 91 f3 	CALL 0xffa019ac <_tcp_header_setup>;
ffa0328e:	01 e8 00 00 	UNLINK;
ffa03292:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03294:	10 00       	RTS;
ffa03296:	01 e8 00 00 	UNLINK;
ffa0329a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0329c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0329e:	10 00       	RTS;

ffa032a0 <_tcp_burst>:
ffa032a0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa032a2:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa032a6:	78 b2       	[FP + 0x24] = R0;
ffa032a8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut_age> */
ffa032ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa032b0:	7a a2       	R2 = [FP + 0x24];
ffa032b2:	0b e1 54 0d 	P3.L = 0xd54;		/* (3412)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa032b6:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa032ba:	02 0d       	CC = R2 <= 0x0;
ffa032bc:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa032c0:	10 91 00 00 
ffa032c4:	19 91       	R1 = [P3];
ffa032c6:	7e 18       	IF CC JUMP 0xffa033c2 <_tcp_burst+0x122>;
ffa032c8:	41 50       	R1 = R1 + R0;
ffa032ca:	8f 09       	CC = R7 < R1 (IU);
ffa032cc:	21 32       	P4 = R1;
ffa032ce:	7a 10       	IF !CC JUMP 0xffa033c2 <_tcp_burst+0x122>;
ffa032d0:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa032d2:	38 20       	JUMP.S 0xffa03342 <_tcp_burst+0xa2>;
ffa032d4:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa032d6:	18 91       	R0 = [P3];
ffa032d8:	07 52       	R0 = R7 - R0;
ffa032da:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa032de:	08 50       	R0 = R0 + R1;
ffa032e0:	16 30       	R2 = R6;
ffa032e2:	0d 30       	R1 = R5;
ffa032e4:	ff e3 dc ec 	CALL 0xffa00c9c <_memcpy_>;
ffa032e8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa032ec:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa032f0:	08 91       	R0 = [P1];
ffa032f2:	f7 51       	R7 = R7 + R6;
ffa032f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa032f8:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa032fc:	07 50       	R0 = R7 + R0;
ffa032fe:	10 93       	[P2] = R0;
ffa03300:	26 50       	R0 = R6 + R4;
ffa03302:	ff e3 5d ff 	CALL 0xffa031bc <_tcp_checksum_set>;
ffa03306:	ff e3 3d f4 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa0330a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0330e:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa03312:	10 95       	R0 = W[P2] (Z);
ffa03314:	10 32       	P2 = R0;
ffa03316:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa0331a:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa0331e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03320:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03322:	52 91       	P2 = [P2];
ffa03324:	90 a2       	R0 = [P2 + 0x28];
ffa03326:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03328:	07 1c       	IF CC JUMP 0xffa03336 <_tcp_burst+0x96> (BP);
ffa0332a:	90 a2       	R0 = [P2 + 0x28];
ffa0332c:	4d 30       	R1 = P5;
ffa0332e:	7a a2       	R2 = [FP + 0x24];
ffa03330:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03332:	11 50       	R0 = R1 + R2;
ffa03334:	a8 06       	IF !CC P5 = R0;
ffa03336:	79 ae       	P1 = [FP + 0x24];
ffa03338:	69 09       	CC = P1 <= P5;
ffa0333a:	45 18       	IF CC JUMP 0xffa033c4 <_tcp_burst+0x124>;
ffa0333c:	44 30       	R0 = P4;
ffa0333e:	87 09       	CC = R7 < R0 (IU);
ffa03340:	42 10       	IF !CC JUMP 0xffa033c4 <_tcp_burst+0x124>;
ffa03342:	44 30       	R0 = P4;
ffa03344:	b8 52       	R2 = R0 - R7;
ffa03346:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0334a:	0a 09       	CC = R2 <= R1;
ffa0334c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0334e:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03350:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_rxbuf> */
ffa03354:	08 06       	IF !CC R1 = R0;
ffa03356:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa0335a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0335e:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03362:	08 91 00 00 
ffa03366:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa0336a:	07 50       	R0 = R7 + R0;
ffa0336c:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03370:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03374:	10 93       	[P2] = R0;
ffa03376:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqClient> */
ffa0337a:	f1 b0       	[SP + 0xc] = R1;
ffa0337c:	30 b1       	[SP + 0x10] = R0;
ffa0337e:	08 91       	R0 = [P1];
ffa03380:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03384:	70 b1       	[SP + 0x14] = R0;
ffa03386:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0338a:	4f 30       	R1 = FP;
ffa0338c:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03390:	12 91 00 00 
ffa03394:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03396:	ff e3 59 ff 	CALL 0xffa03248 <_tcp_packet_setup>;
ffa0339a:	28 30       	R5 = R0;
ffa0339c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa033a0:	00 0d       	CC = R0 <= 0x0;
ffa033a2:	ca 1b       	IF CC JUMP 0xffa03336 <_tcp_burst+0x96>;
ffa033a4:	18 91       	R0 = [P3];
ffa033a6:	38 0a       	CC = R0 <= R7 (IU);
ffa033a8:	96 1f       	IF CC JUMP 0xffa032d4 <_tcp_burst+0x34> (BP);
ffa033aa:	38 53       	R4 = R0 - R7;
ffa033ac:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa033b0:	07 50       	R0 = R7 + R0;
ffa033b2:	0d 30       	R1 = R5;
ffa033b4:	14 30       	R2 = R4;
ffa033b6:	ff e3 73 ec 	CALL 0xffa00c9c <_memcpy_>;
ffa033ba:	65 51       	R5 = R5 + R4;
ffa033bc:	a6 53       	R6 = R6 - R4;
ffa033be:	e7 51       	R7 = R7 + R4;
ffa033c0:	8b 2f       	JUMP.S 0xffa032d6 <_tcp_burst+0x36>;
ffa033c2:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa033c4:	01 e8 00 00 	UNLINK;
ffa033c8:	45 30       	R0 = P5;
ffa033ca:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033cc:	10 00       	RTS;
	...

ffa033d0 <_tcp_rx>:
ffa033d0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa033d2:	20 32       	P4 = R0;
ffa033d4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa033d8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa033dc:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa033de:	ff e3 27 f2 	CALL 0xffa0182c <_htons>;
ffa033e2:	c0 42       	R0 = R0.L (Z);
ffa033e4:	07 08       	CC = R7 == R0;
ffa033e6:	06 18       	IF CC JUMP 0xffa033f2 <_tcp_rx+0x22>;
ffa033e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033ea:	01 e8 00 00 	UNLINK;
ffa033ee:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033f0:	10 00       	RTS;
ffa033f2:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa033f6:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa033f8:	08 08       	CC = R0 == R1;
ffa033fa:	f7 17       	IF !CC JUMP 0xffa033e8 <_tcp_rx+0x18> (BP);
ffa033fc:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03400:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03404:	ff e3 14 f2 	CALL 0xffa0182c <_htons>;
ffa03408:	c0 42       	R0 = R0.L (Z);
ffa0340a:	07 08       	CC = R7 == R0;
ffa0340c:	ee 17       	IF !CC JUMP 0xffa033e8 <_tcp_rx+0x18> (BP);
ffa0340e:	44 30       	R0 = P4;
ffa03410:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03412:	ff e3 81 f2 	CALL 0xffa01914 <_ip_header_checksum>;
ffa03416:	40 43       	R0 = R0.B (Z);
ffa03418:	00 0c       	CC = R0 == 0x0;
ffa0341a:	e7 1f       	IF CC JUMP 0xffa033e8 <_tcp_rx+0x18> (BP);
ffa0341c:	4c 30       	R1 = P4;
ffa0341e:	41 64       	R1 += 0x8;		/* (  8) */
ffa03420:	e0 a1       	R0 = [P4 + 0x1c];
ffa03422:	ff e3 13 fc 	CALL 0xffa02c48 <_ARP_lut_add>;
ffa03426:	44 30       	R0 = P4;
ffa03428:	ff e3 6a fe 	CALL 0xffa030fc <_tcp_length>;
ffa0342c:	30 30       	R6 = R0;
ffa0342e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03432:	0e 30       	R1 = R6;
ffa03434:	00 e1 14 05 	R0.L = 0x514;		/* (1300)	R0=0xff900514(-7338732) */
ffa03438:	ff e3 4c eb 	CALL 0xffa00ad0 <_printf_int>;
ffa0343c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900514(-7338732) */
ffa03440:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03444:	ff e3 84 ea 	CALL 0xffa0094c <_printf_str>;
ffa03448:	44 30       	R0 = P4;
ffa0344a:	0e 30       	R1 = R6;
ffa0344c:	ff e3 d4 fe 	CALL 0xffa031f4 <_tcp_checksum_check>;
ffa03450:	40 43       	R0 = R0.B (Z);
ffa03452:	00 0c       	CC = R0 == 0x0;
ffa03454:	ca 1b       	IF CC JUMP 0xffa033e8 <_tcp_rx+0x18>;
ffa03456:	00 00       	NOP;
ffa03458:	00 00       	NOP;
ffa0345a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa0345c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03460:	48 43       	R0 = R1.B (Z);
ffa03462:	10 08       	CC = R0 == R2;
ffa03464:	f1 18       	IF CC JUMP 0xffa03646 <_tcp_rx+0x276>;
ffa03466:	10 0c       	CC = R0 == 0x2;
ffa03468:	0a 19       	IF CC JUMP 0xffa0367c <_tcp_rx+0x2ac>;
ffa0346a:	48 43       	R0 = R1.B (Z);
ffa0346c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0346e:	08 08       	CC = R0 == R1;
ffa03470:	85 18       	IF CC JUMP 0xffa0357a <_tcp_rx+0x1aa>;
ffa03472:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03474:	ab 10       	IF !CC JUMP 0xffa035ca <_tcp_rx+0x1fa>;
ffa03476:	00 00       	NOP;
ffa03478:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa0347c:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa03480:	00 00       	NOP;
ffa03482:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03486:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03488:	38 10       	IF !CC JUMP 0xffa034f8 <_tcp_rx+0x128>;
ffa0348a:	18 91       	R0 = [P3];
ffa0348c:	10 0c       	CC = R0 == 0x2;
ffa0348e:	ad 17       	IF !CC JUMP 0xffa033e8 <_tcp_rx+0x18> (BP);
ffa03490:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03494:	a0 a2       	R0 = [P4 + 0x28];
ffa03496:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa0349a:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0349e:	ff e3 d3 f1 	CALL 0xffa01844 <_htonl>;
ffa034a2:	14 32       	P2 = R4;
ffa034a4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa034a8:	30 50       	R0 = R0 + R6;
ffa034aa:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa034ae:	28 93       	[P5] = R0;
ffa034b0:	e0 a1       	R0 = [P4 + 0x1c];
ffa034b2:	10 93       	[P2] = R0;
ffa034b4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa034b8:	e0 a2       	R0 = [P4 + 0x2c];
ffa034ba:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa034be:	ff e3 c3 f1 	CALL 0xffa01844 <_htonl>;
ffa034c2:	19 91       	R1 = [P3];
ffa034c4:	c8 53       	R7 = R0 - R1;
ffa034c6:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa034ca:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa034cc:	1e 1d       	IF CC JUMP 0xffa03708 <_tcp_rx+0x338> (BP);
ffa034ce:	06 0c       	CC = R6 == 0x0;
ffa034d0:	1c 15       	IF !CC JUMP 0xffa03708 <_tcp_rx+0x338> (BP);
ffa034d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa034d6:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034da:	10 91       	R0 = [P2];
ffa034dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034e0:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa034e4:	11 91       	R1 = [P2];
ffa034e6:	08 50       	R0 = R0 + R1;
ffa034e8:	07 08       	CC = R7 == R0;
ffa034ea:	46 18       	IF CC JUMP 0xffa03576 <_tcp_rx+0x1a6>;
ffa034ec:	0f 30       	R1 = R7;
ffa034ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034f0:	ff e3 d8 fe 	CALL 0xffa032a0 <_tcp_burst>;
ffa034f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034f6:	7a 2f       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa034f8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa034fa:	1f 91       	R7 = [P3];
ffa034fc:	07 08       	CC = R7 == R0;
ffa034fe:	85 19       	IF CC JUMP 0xffa03808 <_tcp_rx+0x438>;
ffa03500:	07 0c       	CC = R7 == 0x0;
ffa03502:	c4 17       	IF !CC JUMP 0xffa0348a <_tcp_rx+0xba> (BP);
ffa03504:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03508:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa0350c:	ff e3 20 ea 	CALL 0xffa0094c <_printf_str>;
ffa03510:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03514:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03518:	17 93       	[P2] = R7;
ffa0351a:	a0 a2       	R0 = [P4 + 0x28];
ffa0351c:	ff e3 94 f1 	CALL 0xffa01844 <_htonl>;
ffa03520:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03524:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03528:	10 93       	[P2] = R0;
ffa0352a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0352e:	e2 a1       	R2 = [P4 + 0x1c];
ffa03530:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03534:	12 93       	[P2] = R2;
ffa03536:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0353a:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0353e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa03542:	11 97       	W[P2] = R1;
ffa03544:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03546:	f1 b0       	[SP + 0xc] = R1;
ffa03548:	4f 30       	R1 = FP;
ffa0354a:	30 b1       	[SP + 0x10] = R0;
ffa0354c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0354e:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03552:	77 b1 00 00 
ffa03556:	ff e3 79 fe 	CALL 0xffa03248 <_tcp_packet_setup>;
ffa0355a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0355e:	00 0d       	CC = R0 <= 0x0;
ffa03560:	95 1b       	IF CC JUMP 0xffa0348a <_tcp_rx+0xba>;
ffa03562:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa03566:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa0356a:	17 93       	[P2] = R7;
ffa0356c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0356e:	ff e3 27 fe 	CALL 0xffa031bc <_tcp_checksum_set>;
ffa03572:	ff e3 07 f3 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa03576:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03578:	39 2f       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa0357a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa0357e:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa03582:	18 91       	R0 = [P3];
ffa03584:	08 0c       	CC = R0 == 0x1;
ffa03586:	b9 17       	IF !CC JUMP 0xffa034f8 <_tcp_rx+0x128> (BP);
ffa03588:	e0 a2       	R0 = [P4 + 0x2c];
ffa0358a:	ff e3 5d f1 	CALL 0xffa01844 <_htonl>;
ffa0358e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03592:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03596:	11 91       	R1 = [P2];
ffa03598:	08 08       	CC = R0 == R1;
ffa0359a:	42 19       	IF CC JUMP 0xffa0381e <_tcp_rx+0x44e>;
ffa0359c:	00 00       	NOP;
ffa0359e:	00 00       	NOP;
ffa035a0:	00 00       	NOP;
ffa035a2:	e0 a2       	R0 = [P4 + 0x2c];
ffa035a4:	ff e3 50 f1 	CALL 0xffa01844 <_htonl>;
ffa035a8:	08 30       	R1 = R0;
ffa035aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035ae:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa035b2:	ff e3 31 eb 	CALL 0xffa00c14 <_printf_ip>;
ffa035b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035b8:	18 93       	[P3] = R0;
ffa035ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa035be:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa035c2:	ff e3 c5 e9 	CALL 0xffa0094c <_printf_str>;
ffa035c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035c8:	11 2f       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa035ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035ce:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa035d2:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035d6:	ff e3 bb e9 	CALL 0xffa0094c <_printf_str>;
ffa035da:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035de:	a0 a2       	R0 = [P4 + 0x28];
ffa035e0:	ff e3 32 f1 	CALL 0xffa01844 <_htonl>;
ffa035e4:	14 32       	P2 = R4;
ffa035e6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa035ea:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa035ee:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa035f2:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa035f6:	28 93       	[P5] = R0;
ffa035f8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa035fc:	18 91 00 00 
ffa03600:	e2 a1       	R2 = [P4 + 0x1c];
ffa03602:	09 64       	R1 += 0x1;		/* (  1) */
ffa03604:	10 0c       	CC = R0 == 0x2;
ffa03606:	12 93       	[P2] = R2;
ffa03608:	29 93       	[P5] = R1;
ffa0360a:	03 18       	IF CC JUMP 0xffa03610 <_tcp_rx+0x240>;
ffa0360c:	00 0c       	CC = R0 == 0x0;
ffa0360e:	c0 14       	IF !CC JUMP 0xffa0378e <_tcp_rx+0x3be> (BP);
ffa03610:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03612:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03616:	f0 b0       	[SP + 0xc] = R0;
ffa03618:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0361c:	10 91       	R0 = [P2];
ffa0361e:	71 b1       	[SP + 0x14] = R1;
ffa03620:	4f 30       	R1 = FP;
ffa03622:	30 b1       	[SP + 0x10] = R0;
ffa03624:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03626:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03628:	ff e3 10 fe 	CALL 0xffa03248 <_tcp_packet_setup>;
ffa0362c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03630:	00 0d       	CC = R0 <= 0x0;
ffa03632:	ae 18       	IF CC JUMP 0xffa0378e <_tcp_rx+0x3be>;
ffa03634:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03636:	18 93       	[P3] = R0;
ffa03638:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0363a:	ff e3 c1 fd 	CALL 0xffa031bc <_tcp_checksum_set>;
ffa0363e:	ff e3 a1 f2 	CALL 0xffa01b80 <_bfin_EMAC_send_nocopy>;
ffa03642:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03644:	d3 2e       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa03646:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0364a:	00 e1 28 05 	R0.L = 0x528;		/* (1320)	R0=0xff900528(-7338712) */
ffa0364e:	ff e3 7f e9 	CALL 0xffa0094c <_printf_str>;
ffa03652:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03656:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa0365a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0365c:	17 93       	[P2] = R7;
ffa0365e:	a0 a2       	R0 = [P4 + 0x28];
ffa03660:	ff e3 f2 f0 	CALL 0xffa01844 <_htonl>;
ffa03664:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03668:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa0366c:	10 93       	[P2] = R0;
ffa0366e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa03672:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03676:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03678:	17 93       	[P2] = R7;
ffa0367a:	b8 2e       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa0367c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03680:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa03684:	ff e3 64 e9 	CALL 0xffa0094c <_printf_str>;
ffa03688:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa0368c:	a0 a2       	R0 = [P4 + 0x28];
ffa0368e:	ff e3 db f0 	CALL 0xffa01844 <_htonl>;
ffa03692:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa03696:	28 93       	[P5] = R0;
ffa03698:	44 30       	R0 = P4;
ffa0369a:	ff e3 31 fd 	CALL 0xffa030fc <_tcp_length>;
ffa0369e:	29 91       	R1 = [P5];
ffa036a0:	09 64       	R1 += 0x1;		/* (  1) */
ffa036a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa036a6:	08 50       	R0 = R0 + R1;
ffa036a8:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa036ac:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa036b0:	11 97       	W[P2] = R1;
ffa036b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa036b6:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa036ba:	28 93 00 00 
ffa036be:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa036c2:	11 93       	[P2] = R1;
ffa036c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa036c8:	e2 a1       	R2 = [P4 + 0x1c];
ffa036ca:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa036ce:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa036d0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa036d4:	12 93       	[P2] = R2;
ffa036d6:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa036da:	f1 b0       	[SP + 0xc] = R1;
ffa036dc:	29 91       	R1 = [P5];
ffa036de:	31 b1       	[SP + 0x10] = R1;
ffa036e0:	4f 30       	R1 = FP;
ffa036e2:	70 b1       	[SP + 0x14] = R0;
ffa036e4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036e8:	ff e3 b0 fd 	CALL 0xffa03248 <_tcp_packet_setup>;
ffa036ec:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036f0:	00 0d       	CC = R0 <= 0x0;
ffa036f2:	93 18       	IF CC JUMP 0xffa03818 <_tcp_rx+0x448>;
ffa036f4:	28 91       	R0 = [P5];
ffa036f6:	08 64       	R0 += 0x1;		/* (  1) */
ffa036f8:	28 93       	[P5] = R0;
ffa036fa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa03700:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03704:	10 93       	[P2] = R0;
ffa03706:	33 2f       	JUMP.S 0xffa0356c <_tcp_rx+0x19c>;
ffa03708:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa0370c:	28 54       	R0 = R0 & R5;
ffa0370e:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03710:	10 4d       	R0 >>>= 0x2;
ffa03712:	54 30       	R2 = P4;
ffa03714:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03716:	02 50       	R0 = R2 + R0;
ffa03718:	5d 1c       	IF CC JUMP 0xffa037d2 <_tcp_rx+0x402> (BP);
ffa0371a:	0e 30       	R1 = R6;
ffa0371c:	00 e3 16 05 	CALL 0xffa04148 <_httpCollate>;
ffa03720:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa03724:	18 91       	R0 = [P3];
ffa03726:	07 50       	R0 = R7 + R0;
ffa03728:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa0372c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c6c <_NetArpLut> */
ffa03730:	28 93       	[P5] = R0;
ffa03732:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_g_httpRxed> */
ffa03736:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03738:	80 4f       	R0 <<= 0x10;
ffa0373a:	21 91       	R1 = [P4];
ffa0373c:	00 e3 dc 02 	CALL 0xffa03cf4 <_httpResp>;
ffa03740:	00 0c       	CC = R0 == 0x0;
ffa03742:	22 1c       	IF CC JUMP 0xffa03786 <_tcp_rx+0x3b6> (BP);
ffa03744:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03748:	28 91       	R0 = [P5];
ffa0374a:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa0374e:	10 93       	[P2] = R0;
ffa03750:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa03754:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03758:	11 91       	R1 = [P2];
ffa0375a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa0375e:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03762:	10 91       	R0 = [P2];
ffa03764:	41 50       	R1 = R1 + R0;
ffa03766:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0376a:	00 e1 ac 05 	R0.L = 0x5ac;		/* (1452)	R0=0xff9005ac(-7338580) */
ffa0376e:	ff e3 b1 e9 	CALL 0xffa00ad0 <_printf_int>;
ffa03772:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005ac(-7338580) */
ffa03776:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0377a:	ff e3 e9 e8 	CALL 0xffa0094c <_printf_str>;
ffa0377e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03780:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03782:	ff e3 8f fd 	CALL 0xffa032a0 <_tcp_burst>;
ffa03786:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03788:	20 93       	[P4] = R0;
ffa0378a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0378c:	2f 2e       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa0378e:	18 91       	R0 = [P3];
ffa03790:	18 0c       	CC = R0 == 0x3;
ffa03792:	77 16       	IF !CC JUMP 0xffa03480 <_tcp_rx+0xb0> (BP);
ffa03794:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03798:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0379a:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0379e:	10 93       	[P2] = R0;
ffa037a0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa037a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa037a6:	f0 b0       	[SP + 0xc] = R0;
ffa037a8:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa037ac:	10 91       	R0 = [P2];
ffa037ae:	14 32       	P2 = R4;
ffa037b0:	30 b1       	[SP + 0x10] = R0;
ffa037b2:	28 91       	R0 = [P5];
ffa037b4:	70 b1       	[SP + 0x14] = R0;
ffa037b6:	4f 30       	R1 = FP;
ffa037b8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037bc:	12 91 00 00 
ffa037c0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037c2:	ff e3 43 fd 	CALL 0xffa03248 <_tcp_packet_setup>;
ffa037c6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037ca:	00 0d       	CC = R0 <= 0x0;
ffa037cc:	5a 1a       	IF CC JUMP 0xffa03480 <_tcp_rx+0xb0>;
ffa037ce:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa037d0:	96 2f       	JUMP.S 0xffa036fc <_tcp_rx+0x32c>;
ffa037d2:	0e 30       	R1 = R6;
ffa037d4:	00 e3 ba 04 	CALL 0xffa04148 <_httpCollate>;
ffa037d8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa037da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa037de:	f0 b0       	[SP + 0xc] = R0;
ffa037e0:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa037e4:	10 91       	R0 = [P2];
ffa037e6:	14 32       	P2 = R4;
ffa037e8:	30 b1       	[SP + 0x10] = R0;
ffa037ea:	28 91       	R0 = [P5];
ffa037ec:	70 b1       	[SP + 0x14] = R0;
ffa037ee:	4f 30       	R1 = FP;
ffa037f0:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037f4:	12 91 00 00 
ffa037f8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037fa:	ff e3 27 fd 	CALL 0xffa03248 <_tcp_packet_setup>;
ffa037fe:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03802:	00 0d       	CC = R0 <= 0x0;
ffa03804:	b4 16       	IF !CC JUMP 0xffa0356c <_tcp_rx+0x19c> (BP);
ffa03806:	f1 2d       	JUMP.S 0xffa033e8 <_tcp_rx+0x18>;
ffa03808:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa0380c:	00 e1 7c 05 	R0.L = 0x57c;		/* (1404)	R0=0xff90057c(-7338628) */
ffa03810:	ff e3 9e e8 	CALL 0xffa0094c <_printf_str>;
ffa03814:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03816:	ea 2d       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
ffa03818:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa0381c:	27 2e       	JUMP.S 0xffa0346a <_tcp_rx+0x9a>;
ffa0381e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03820:	18 93       	[P3] = R0;
ffa03822:	a0 a2       	R0 = [P4 + 0x28];
ffa03824:	ff e3 10 f0 	CALL 0xffa01844 <_htonl>;
ffa03828:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0382c:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03830:	10 93       	[P2] = R0;
ffa03832:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03836:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa0383a:	ff e3 89 e8 	CALL 0xffa0094c <_printf_str>;
ffa0383e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03840:	d5 2d       	JUMP.S 0xffa033ea <_tcp_rx+0x1a>;
	...

ffa03844 <_htmlForm>:
ffa03844:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03848:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa0384c:	02 e1 c8 05 	R2.L = 0x5c8;		/* (1480)	R2=0xff9005c8(-7338552) */
ffa03850:	01 e8 00 00 	UNLINK;
ffa03854:	ff e2 54 ea 	JUMP.L 0xffa00cfc <_strcpy_>;

ffa03858 <_htmlDiv>:
ffa03858:	12 43       	R2 = R2.B (X);
ffa0385a:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0385e:	1a 08       	CC = R2 == R3;
ffa03860:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03864:	09 18       	IF CC JUMP 0xffa03876 <_htmlDiv+0x1e>;
ffa03866:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c8(-7338552) */
ffa0386a:	02 e1 1c 06 	R2.L = 0x61c;		/* (1564)	R2=0xff90061c(-7338468) */
ffa0386e:	01 e8 00 00 	UNLINK;
ffa03872:	ff e2 45 ea 	JUMP.L 0xffa00cfc <_strcpy_>;
ffa03876:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90061c(-7338468) */
ffa0387a:	02 e1 e8 05 	R2.L = 0x5e8;		/* (1512)	R2=0xff9005e8(-7338520) */
ffa0387e:	01 e8 00 00 	UNLINK;
ffa03882:	ff e2 3d ea 	JUMP.L 0xffa00cfc <_strcpy_>;
	...

ffa03888 <_html404>:
ffa03888:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0388c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0388e:	4f 30       	R1 = FP;
ffa03890:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e8(-7338520) */
ffa03894:	f0 bb       	[FP -0x4] = R0;
ffa03896:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03898:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0389c:	02 e1 50 06 	R2.L = 0x650;		/* (1616)	R2=0xff900650(-7338416) */
ffa038a0:	ff e3 2e ea 	CALL 0xffa00cfc <_strcpy_>;
ffa038a4:	f0 b9       	R0 = [FP -0x4];
ffa038a6:	01 e8 00 00 	UNLINK;
ffa038aa:	10 00       	RTS;

ffa038ac <_htmlCursorOption>:
ffa038ac:	68 05       	[--SP] = (R7:5);
ffa038ae:	2a 30       	R5 = R2;
ffa038b0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900650(-7338416) */
ffa038b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa038b8:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa038bc:	3f a2 00 00 
ffa038c0:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa038c4:	ff e3 1c ea 	CALL 0xffa00cfc <_strcpy_>;
ffa038c8:	0e 30       	R1 = R6;
ffa038ca:	15 30       	R2 = R5;
ffa038cc:	ff e3 7e eb 	CALL 0xffa00fc8 <_strprintf_int>;
ffa038d0:	3d 08       	CC = R5 == R7;
ffa038d2:	16 18       	IF CC JUMP 0xffa038fe <_htmlCursorOption+0x52>;
ffa038d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa038d8:	0e 30       	R1 = R6;
ffa038da:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa038de:	ff e3 0f ea 	CALL 0xffa00cfc <_strcpy_>;
ffa038e2:	0e 30       	R1 = R6;
ffa038e4:	15 30       	R2 = R5;
ffa038e6:	ff e3 71 eb 	CALL 0xffa00fc8 <_strprintf_int>;
ffa038ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa038ee:	01 e8 00 00 	UNLINK;
ffa038f2:	0e 30       	R1 = R6;
ffa038f4:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa038f8:	28 05       	(R7:5) = [SP++];
ffa038fa:	ff e2 01 ea 	JUMP.L 0xffa00cfc <_strcpy_>;
ffa038fe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa03902:	0e 30       	R1 = R6;
ffa03904:	02 e1 7c 06 	R2.L = 0x67c;		/* (1660)	R2=0xff90067c(-7338372) */
ffa03908:	ff e3 fa e9 	CALL 0xffa00cfc <_strcpy_>;
ffa0390c:	e4 2f       	JUMP.S 0xffa038d4 <_htmlCursorOption+0x28>;
	...

ffa03910 <_htmlCursorSelect>:
ffa03910:	60 05       	[--SP] = (R7:4);
ffa03912:	3a 30       	R7 = R2;
ffa03914:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90067c(-7338372) */
ffa03918:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0391c:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03920:	7e a2 00 00 
ffa03924:	02 e1 a4 06 	R2.L = 0x6a4;		/* (1700)	R2=0xff9006a4(-7338332) */
ffa03928:	bc a2       	R4 = [FP + 0x28];
ffa0392a:	ff e3 e9 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa0392e:	17 30       	R2 = R7;
ffa03930:	0d 30       	R1 = R5;
ffa03932:	ff e3 e5 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03936:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a4(-7338332) */
ffa0393a:	0d 30       	R1 = R5;
ffa0393c:	02 e1 b0 06 	R2.L = 0x6b0;		/* (1712)	R2=0xff9006b0(-7338320) */
ffa03940:	ff e3 de e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03944:	0d 30       	R1 = R5;
ffa03946:	16 30       	R2 = R6;
ffa03948:	ff e3 da e9 	CALL 0xffa00cfc <_strcpy_>;
ffa0394c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006b0(-7338320) */
ffa03950:	0d 30       	R1 = R5;
ffa03952:	02 e1 cc 06 	R2.L = 0x6cc;		/* (1740)	R2=0xff9006cc(-7338292) */
ffa03956:	ff e3 d3 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa0395a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0395c:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03960:	f4 b0 00 00 
ffa03964:	17 30       	R2 = R7;
ffa03966:	ff e3 a3 ff 	CALL 0xffa038ac <_htmlCursorOption>;
ffa0396a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0396c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0396e:	0f 08       	CC = R7 == R1;
ffa03970:	f6 17       	IF !CC JUMP 0xffa0395c <_htmlCursorSelect+0x4c> (BP);
ffa03972:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006cc(-7338292) */
ffa03976:	01 e8 00 00 	UNLINK;
ffa0397a:	0d 30       	R1 = R5;
ffa0397c:	02 e1 d0 06 	R2.L = 0x6d0;		/* (1744)	R2=0xff9006d0(-7338288) */
ffa03980:	20 05       	(R7:4) = [SP++];
ffa03982:	ff e2 bd e9 	JUMP.L 0xffa00cfc <_strcpy_>;
	...

ffa03988 <_htmlDefault>:
ffa03988:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0398a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0398e:	77 30       	R6 = FP;
ffa03990:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03992:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03994:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d0(-7338288) */
ffa03998:	f0 bb       	[FP -0x4] = R0;
ffa0399a:	0e 30       	R1 = R6;
ffa0399c:	02 e1 e8 06 	R2.L = 0x6e8;		/* (1768)	R2=0xff9006e8(-7338264) */
ffa039a0:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa039a4:	ff e3 ac e9 	CALL 0xffa00cfc <_strcpy_>;
ffa039a8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039ac:	0e 30       	R1 = R6;
ffa039ae:	ff e3 55 ff 	CALL 0xffa03858 <_htmlDiv>;
ffa039b2:	0e 30       	R1 = R6;
ffa039b4:	ff e3 48 ff 	CALL 0xffa03844 <_htmlForm>;
ffa039b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa039bc:	0e 30       	R1 = R6;
ffa039be:	02 e1 38 07 	R2.L = 0x738;		/* (1848)	R2=0xff900738(-7338184) */
ffa039c2:	ff e3 9d e9 	CALL 0xffa00cfc <_strcpy_>;
ffa039c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa039ca:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa039ce:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa039d2:	10 99 00 00 
ffa039d6:	00 0c       	CC = R0 == 0x0;
ffa039d8:	2c 1d       	IF CC JUMP 0xffa03c30 <_htmlDefault+0x2a8> (BP);
ffa039da:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900738(-7338184) */
ffa039de:	01 30       	R0 = R1;
ffa039e0:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa039e4:	0e 30       	R1 = R6;
ffa039e6:	ff e3 8b e9 	CALL 0xffa00cfc <_strcpy_>;
ffa039ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa039ee:	0e 30       	R1 = R6;
ffa039f0:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa039f4:	ff e3 84 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa039f8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039fc:	0e 30       	R1 = R6;
ffa039fe:	ff e3 2d ff 	CALL 0xffa03858 <_htmlDiv>;
ffa03a02:	0e 30       	R1 = R6;
ffa03a04:	ff e3 20 ff 	CALL 0xffa03844 <_htmlForm>;
ffa03a08:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a0c:	0e 30       	R1 = R6;
ffa03a0e:	02 e1 b4 07 	R2.L = 0x7b4;		/* (1972)	R2=0xff9007b4(-7338060) */
ffa03a12:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa03a16:	ff e3 73 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03a1a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03a1c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03a1e:	0d e1 64 0c 	P5.L = 0xc64;		/* (3172)	P5=0xff900c64 <_NetDataDestIP> */
ffa03a22:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b4(-7338060) */
ffa03a26:	0e 30       	R1 = R6;
ffa03a28:	02 e1 d0 07 	R2.L = 0x7d0;		/* (2000)	R2=0xff9007d0(-7338032) */
ffa03a2c:	ff e3 68 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03a30:	17 30       	R2 = R7;
ffa03a32:	0e 30       	R1 = R6;
ffa03a34:	ff e3 ca ea 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03a38:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d0(-7338032) */
ffa03a3c:	0e 30       	R1 = R6;
ffa03a3e:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03a42:	ff e3 5d e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03a46:	2a 91       	R2 = [P5];
ffa03a48:	6a 40       	R2 >>= R5;
ffa03a4a:	52 43       	R2 = R2.B (Z);
ffa03a4c:	0e 30       	R1 = R6;
ffa03a4e:	ff e3 bd ea 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03a52:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03a56:	0e 30       	R1 = R6;
ffa03a58:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03a5c:	ff e3 50 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03a60:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03a62:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03a64:	0f 08       	CC = R7 == R1;
ffa03a66:	45 64       	R5 += 0x8;		/* (  8) */
ffa03a68:	dd 17       	IF !CC JUMP 0xffa03a22 <_htmlDefault+0x9a> (BP);
ffa03a6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03a6e:	0e 30       	R1 = R6;
ffa03a70:	02 e1 08 08 	R2.L = 0x808;		/* (2056)	R2=0xff900808(-7337976) */
ffa03a74:	ff e3 44 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03a78:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900808(-7337976) */
ffa03a7c:	0e 30       	R1 = R6;
ffa03a7e:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03a82:	ff e3 3d e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03a86:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a8a:	0e 30       	R1 = R6;
ffa03a8c:	ff e3 e6 fe 	CALL 0xffa03858 <_htmlDiv>;
ffa03a90:	0e 30       	R1 = R6;
ffa03a92:	ff e3 d9 fe 	CALL 0xffa03844 <_htmlForm>;
ffa03a96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a9a:	0e 30       	R1 = R6;
ffa03a9c:	02 e1 2c 08 	R2.L = 0x82c;		/* (2092)	R2=0xff90082c(-7337940) */
ffa03aa0:	ff e3 2e e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03aa4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03aa8:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03aac:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03ab0:	10 99 00 00 
ffa03ab4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03ab6:	c6 1c       	IF CC JUMP 0xffa03c42 <_htmlDefault+0x2ba> (BP);
ffa03ab8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90082c(-7337940) */
ffa03abc:	01 30       	R0 = R1;
ffa03abe:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03ac2:	0e 30       	R1 = R6;
ffa03ac4:	ff e3 1c e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03ac8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03acc:	0e 30       	R1 = R6;
ffa03ace:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03ad2:	ff e3 15 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03ad6:	0e 30       	R1 = R6;
ffa03ad8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03adc:	ff e3 be fe 	CALL 0xffa03858 <_htmlDiv>;
ffa03ae0:	0e 30       	R1 = R6;
ffa03ae2:	ff e3 b1 fe 	CALL 0xffa03844 <_htmlForm>;
ffa03ae6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03aea:	0e 30       	R1 = R6;
ffa03aec:	02 e1 6c 08 	R2.L = 0x86c;		/* (2156)	R2=0xff90086c(-7337876) */
ffa03af0:	ff e3 06 e9 	CALL 0xffa00cfc <_strcpy_>;
ffa03af4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03af8:	01 e1 9c 08 	R1.L = 0x89c;		/* (2204)	R1=0xff90089c(-7337828) */
ffa03afc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90086c(-7337876) */
ffa03b00:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03b04:	f1 b0 00 00 
ffa03b08:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa03b0c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b10:	37 b1 00 00 
ffa03b14:	ff e3 fe fe 	CALL 0xffa03910 <_htmlCursorSelect>;
ffa03b18:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90089c(-7337828) */
ffa03b1c:	01 e1 b4 08 	R1.L = 0x8b4;		/* (2228)	R1=0xff9008b4(-7337804) */
ffa03b20:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa03b24:	f1 b0       	[SP + 0xc] = R1;
ffa03b26:	02 e1 a8 08 	R2.L = 0x8a8;		/* (2216)	R2=0xff9008a8(-7337816) */
ffa03b2a:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b2e:	37 b1 00 00 
ffa03b32:	ff e3 ef fe 	CALL 0xffa03910 <_htmlCursorSelect>;
ffa03b36:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008b4(-7337804) */
ffa03b3a:	01 e1 cc 08 	R1.L = 0x8cc;		/* (2252)	R1=0xff9008cc(-7337780) */
ffa03b3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a8(-7337816) */
ffa03b42:	f1 b0       	[SP + 0xc] = R1;
ffa03b44:	02 e1 c0 08 	R2.L = 0x8c0;		/* (2240)	R2=0xff9008c0(-7337792) */
ffa03b48:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b4c:	37 b1 00 00 
ffa03b50:	ff e3 e0 fe 	CALL 0xffa03910 <_htmlCursorSelect>;
ffa03b54:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008cc(-7337780) */
ffa03b58:	01 e1 e0 08 	R1.L = 0x8e0;		/* (2272)	R1=0xff9008e0(-7337760) */
ffa03b5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c0(-7337792) */
ffa03b60:	f1 b0       	[SP + 0xc] = R1;
ffa03b62:	02 e1 d8 08 	R2.L = 0x8d8;		/* (2264)	R2=0xff9008d8(-7337768) */
ffa03b66:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b6a:	37 b1 00 00 
ffa03b6e:	ff e3 d1 fe 	CALL 0xffa03910 <_htmlCursorSelect>;
ffa03b72:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d8(-7337768) */
ffa03b76:	0e 30       	R1 = R6;
ffa03b78:	02 e1 ec 08 	R2.L = 0x8ec;		/* (2284)	R2=0xff9008ec(-7337748) */
ffa03b7c:	ff e3 c0 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03b80:	0e 30       	R1 = R6;
ffa03b82:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03b86:	ff e3 69 fe 	CALL 0xffa03858 <_htmlDiv>;
ffa03b8a:	0e 30       	R1 = R6;
ffa03b8c:	ff e3 5c fe 	CALL 0xffa03844 <_htmlForm>;
ffa03b90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03b94:	0e 30       	R1 = R6;
ffa03b96:	02 e1 28 09 	R2.L = 0x928;		/* (2344)	R2=0xff900928(-7337688) */
ffa03b9a:	ff e3 b1 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03b9e:	0e 30       	R1 = R6;
ffa03ba0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03ba4:	ff e3 5a fe 	CALL 0xffa03858 <_htmlDiv>;
ffa03ba8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03bac:	0e 30       	R1 = R6;
ffa03bae:	02 e1 80 09 	R2.L = 0x980;		/* (2432)	R2=0xff900980(-7337600) */
ffa03bb2:	ff e3 a5 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03bb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900980(-7337600) */
ffa03bba:	0e 30       	R1 = R6;
ffa03bbc:	02 e1 a8 09 	R2.L = 0x9a8;		/* (2472)	R2=0xff9009a8(-7337560) */
ffa03bc0:	ff e3 9e e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03bc4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a8(-7337560) */
ffa03bc8:	0e 30       	R1 = R6;
ffa03bca:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03bce:	ff e3 97 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03bd2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007a0(-7338080) */
ffa03bd6:	0e 30       	R1 = R6;
ffa03bd8:	02 e1 f0 09 	R2.L = 0x9f0;		/* (2544)	R2=0xff9009f0(-7337488) */
ffa03bdc:	ff e3 90 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03be0:	0e 30       	R1 = R6;
ffa03be2:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03be6:	ff e3 f1 e9 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03bea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03bee:	0e 30       	R1 = R6;
ffa03bf0:	02 e1 6c 00 	R2.L = 0x6c;		/* (108)	R2=0xff90006c(-7339924) */
ffa03bf4:	ff e3 84 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03bf8:	0e 30       	R1 = R6;
ffa03bfa:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03bfc:	ff e3 e6 e9 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03c00:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03c04:	0e 30       	R1 = R6;
ffa03c06:	02 e1 44 00 	R2.L = 0x44;		/* ( 68)	R2=0xff900044(-7339964) */
ffa03c0a:	ff e3 79 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c0e:	0e 30       	R1 = R6;
ffa03c10:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03c14:	ff e3 da e9 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03c18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03c1c:	0e 30       	R1 = R6;
ffa03c1e:	02 e1 fc 09 	R2.L = 0x9fc;		/* (2556)	R2=0xff9009fc(-7337476) */
ffa03c22:	ff e3 6d e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c26:	f0 b9       	R0 = [FP -0x4];
ffa03c28:	01 e8 00 00 	UNLINK;
ffa03c2c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03c2e:	10 00       	RTS;
ffa03c30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009fc(-7337476) */
ffa03c34:	01 30       	R0 = R1;
ffa03c36:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03c3a:	0e 30       	R1 = R6;
ffa03c3c:	ff e3 60 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c40:	d5 2e       	JUMP.S 0xffa039ea <_htmlDefault+0x62>;
ffa03c42:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03c46:	01 30       	R0 = R1;
ffa03c48:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa03c4c:	0e 30       	R1 = R6;
ffa03c4e:	ff e3 57 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c52:	3b 2f       	JUMP.S 0xffa03ac8 <_htmlDefault+0x140>;

ffa03c54 <_httpHeader>:
ffa03c54:	78 05       	[--SP] = (R7:7);
ffa03c56:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c5a:	7f 30       	R7 = FP;
ffa03c5c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa03c64:	f0 bb       	[FP -0x4] = R0;
ffa03c66:	0f 30       	R1 = R7;
ffa03c68:	02 e1 14 0a 	R2.L = 0xa14;		/* (2580)	R2=0xff900a14(-7337452) */
ffa03c6c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03c70:	ff e3 46 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a14(-7337452) */
ffa03c78:	0f 30       	R1 = R7;
ffa03c7a:	02 e1 28 0a 	R2.L = 0xa28;		/* (2600)	R2=0xff900a28(-7337432) */
ffa03c7e:	ff e3 3f e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c82:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a28(-7337432) */
ffa03c86:	0f 30       	R1 = R7;
ffa03c88:	02 e1 3c 0a 	R2.L = 0xa3c;		/* (2620)	R2=0xff900a3c(-7337412) */
ffa03c8c:	ff e3 38 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03c90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03c94:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c98:	12 91       	R2 = [P2];
ffa03c9a:	0f 30       	R1 = R7;
ffa03c9c:	ff e3 96 e9 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03ca0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a3c(-7337412) */
ffa03ca4:	0f 30       	R1 = R7;
ffa03ca6:	02 e1 50 0a 	R2.L = 0xa50;		/* (2640)	R2=0xff900a50(-7337392) */
ffa03caa:	ff e3 29 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03cae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03cb2:	f0 b9       	R0 = [FP -0x4];
ffa03cb4:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03cb8:	10 93       	[P2] = R0;
ffa03cba:	01 e8 00 00 	UNLINK;
ffa03cbe:	38 05       	(R7:7) = [SP++];
ffa03cc0:	10 00       	RTS;
	...

ffa03cc4 <_htmlGeneric>:
ffa03cc4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03cc8:	10 30       	R2 = R0;
ffa03cca:	4f 30       	R1 = FP;
ffa03ccc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cce:	f0 bb       	[FP -0x4] = R0;
ffa03cd0:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03cd2:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03cd6:	ff e3 13 e8 	CALL 0xffa00cfc <_strcpy_>;
ffa03cda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03cde:	f0 b9       	R0 = [FP -0x4];
ffa03ce0:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03ce4:	10 93       	[P2] = R0;
ffa03ce6:	ff e3 b7 ff 	CALL 0xffa03c54 <_httpHeader>;
ffa03cea:	f0 b9       	R0 = [FP -0x4];
ffa03cec:	01 e8 00 00 	UNLINK;
ffa03cf0:	10 00       	RTS;
	...

ffa03cf4 <_httpResp>:
ffa03cf4:	60 05       	[--SP] = (R7:4);
ffa03cf6:	30 30       	R6 = R0;
ffa03cf8:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03cfa:	01 09       	CC = R1 <= R0;
ffa03cfc:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03d00:	39 30       	R7 = R1;
ffa03d02:	21 10       	IF !CC JUMP 0xffa03d44 <_httpResp+0x50>;
ffa03d04:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03d06:	0f 09       	CC = R7 <= R1;
ffa03d08:	34 10       	IF !CC JUMP 0xffa03d70 <_httpResp+0x7c>;
ffa03d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03d0e:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03d12:	0e 30       	R1 = R6;
ffa03d14:	17 30       	R2 = R7;
ffa03d16:	ff e3 61 e8 	CALL 0xffa00dd8 <_substr>;
ffa03d1a:	00 0c       	CC = R0 == 0x0;
ffa03d1c:	06 10       	IF !CC JUMP 0xffa03d28 <_httpResp+0x34>;
ffa03d1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d20:	01 e8 00 00 	UNLINK;
ffa03d24:	20 05       	(R7:4) = [SP++];
ffa03d26:	10 00       	RTS;
ffa03d28:	ff e3 b0 fd 	CALL 0xffa03888 <_html404>;
ffa03d2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d30:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d34:	10 93       	[P2] = R0;
ffa03d36:	ff e3 8f ff 	CALL 0xffa03c54 <_httpHeader>;
ffa03d3a:	01 e8 00 00 	UNLINK;
ffa03d3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d40:	20 05       	(R7:4) = [SP++];
ffa03d42:	10 00       	RTS;
ffa03d44:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03d48:	06 30       	R0 = R6;
ffa03d4a:	01 e1 70 0a 	R1.L = 0xa70;		/* (2672)	R1=0xff900a70(-7337360) */
ffa03d4e:	ff e3 17 e8 	CALL 0xffa00d7c <_strcmp>;
ffa03d52:	00 0c       	CC = R0 == 0x0;
ffa03d54:	d8 1f       	IF CC JUMP 0xffa03d04 <_httpResp+0x10> (BP);
ffa03d56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d5a:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03d5e:	0e 30       	R1 = R6;
ffa03d60:	17 30       	R2 = R7;
ffa03d62:	ff e3 3b e8 	CALL 0xffa00dd8 <_substr>;
ffa03d66:	00 0c       	CC = R0 == 0x0;
ffa03d68:	db 1f       	IF CC JUMP 0xffa03d1e <_httpResp+0x2a> (BP);
ffa03d6a:	ff e3 0f fe 	CALL 0xffa03988 <_htmlDefault>;
ffa03d6e:	df 2f       	JUMP.S 0xffa03d2c <_httpResp+0x38>;
ffa03d70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a0c(-7337460) */
ffa03d74:	00 e1 7c 0a 	R0.L = 0xa7c;		/* (2684)	R0=0xff900a7c(-7337348) */
ffa03d78:	0e 30       	R1 = R6;
ffa03d7a:	17 30       	R2 = R7;
ffa03d7c:	ff e3 2e e8 	CALL 0xffa00dd8 <_substr>;
ffa03d80:	00 0c       	CC = R0 == 0x0;
ffa03d82:	3c 1c       	IF CC JUMP 0xffa03dfa <_httpResp+0x106> (BP);
ffa03d84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a7c(-7337348) */
ffa03d88:	00 e1 88 0a 	R0.L = 0xa88;		/* (2696)	R0=0xff900a88(-7337336) */
ffa03d8c:	0e 30       	R1 = R6;
ffa03d8e:	17 30       	R2 = R7;
ffa03d90:	ff e3 24 e8 	CALL 0xffa00dd8 <_substr>;
ffa03d94:	00 0c       	CC = R0 == 0x0;
ffa03d96:	c4 1f       	IF CC JUMP 0xffa03d1e <_httpResp+0x2a> (BP);
ffa03d98:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03d9a:	06 50       	R0 = R6 + R0;
ffa03d9c:	ff e3 3e e9 	CALL 0xffa01018 <_atoi>;
ffa03da0:	08 30       	R1 = R0;
ffa03da2:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03da6:	00 67       	R0 += -0x20;		/* (-32) */
ffa03da8:	10 0a       	CC = R0 <= R2 (IU);
ffa03daa:	24 11       	IF !CC JUMP 0xffa03ff2 <_httpResp+0x2fe>;
ffa03dac:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03db0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa03db4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03db8:	02 0d       	CC = R2 <= 0x0;
ffa03dba:	13 91       	R3 = [P2];
ffa03dbc:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03dc0:	14 18       	IF CC JUMP 0xffa03de8 <_httpResp+0xf4>;
ffa03dc2:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03dc6:	28 4f       	R0 <<= 0x5;
ffa03dc8:	03 54       	R0 = R3 & R0;
ffa03dca:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03dcc:	38 52       	R0 = R0 - R7;
ffa03dce:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03dd2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03dd4:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03dd8:	18 54       	R0 = R0 & R3;
ffa03dda:	10 32       	P2 = R0;
ffa03ddc:	09 64       	R1 += 0x1;		/* (  1) */
ffa03dde:	0a 08       	CC = R2 == R1;
ffa03de0:	10 90       	R0 = [P2++];
ffa03de2:	08 92       	[P1++] = R0;
ffa03de4:	42 30       	R0 = P2;
ffa03de6:	f9 17       	IF !CC JUMP 0xffa03dd8 <_httpResp+0xe4> (BP);
ffa03de8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03dec:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03df0:	17 93       	[P2] = R7;
ffa03df2:	ff e3 31 ff 	CALL 0xffa03c54 <_httpHeader>;
ffa03df6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03df8:	94 2f       	JUMP.S 0xffa03d20 <_httpResp+0x2c>;
ffa03dfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03dfe:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03e02:	0e 30       	R1 = R6;
ffa03e04:	17 30       	R2 = R7;
ffa03e06:	ff e3 e9 e7 	CALL 0xffa00dd8 <_substr>;
ffa03e0a:	00 0c       	CC = R0 == 0x0;
ffa03e0c:	7f 1f       	IF CC JUMP 0xffa03d0a <_httpResp+0x16> (BP);
ffa03e0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03e12:	0e 30       	R1 = R6;
ffa03e14:	17 30       	R2 = R7;
ffa03e16:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03e1a:	ff e3 df e7 	CALL 0xffa00dd8 <_substr>;
ffa03e1e:	86 51       	R6 = R6 + R0;
ffa03e20:	47 53       	R5 = R7 - R0;
ffa03e22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03e26:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03e2a:	0e 30       	R1 = R6;
ffa03e2c:	15 30       	R2 = R5;
ffa03e2e:	ff e3 d5 e7 	CALL 0xffa00dd8 <_substr>;
ffa03e32:	00 0c       	CC = R0 == 0x0;
ffa03e34:	10 11       	IF !CC JUMP 0xffa04054 <_httpResp+0x360>;
ffa03e36:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03e38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa03e3c:	00 e1 e8 0a 	R0.L = 0xae8;		/* (2792)	R0=0xff900ae8(-7337240) */
ffa03e40:	0e 30       	R1 = R6;
ffa03e42:	15 30       	R2 = R5;
ffa03e44:	ff e3 ca e7 	CALL 0xffa00dd8 <_substr>;
ffa03e48:	00 0c       	CC = R0 == 0x0;
ffa03e4a:	e2 10       	IF !CC JUMP 0xffa0400e <_httpResp+0x31a>;
ffa03e4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae8(-7337240) */
ffa03e50:	0e 30       	R1 = R6;
ffa03e52:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03e56:	15 30       	R2 = R5;
ffa03e58:	ff e3 c0 e7 	CALL 0xffa00dd8 <_substr>;
ffa03e5c:	00 0c       	CC = R0 == 0x0;
ffa03e5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03e62:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e64:	0e 30       	R1 = R6;
ffa03e66:	15 30       	R2 = R5;
ffa03e68:	00 e1 00 0b 	R0.L = 0xb00;		/* (2816)	R0=0xff900b00(-7337216) */
ffa03e6c:	27 06       	IF !CC R4 = R7;
ffa03e6e:	ff e3 b5 e7 	CALL 0xffa00dd8 <_substr>;
ffa03e72:	00 0c       	CC = R0 == 0x0;
ffa03e74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b00(-7337216) */
ffa03e78:	0e 30       	R1 = R6;
ffa03e7a:	15 30       	R2 = R5;
ffa03e7c:	00 e1 0c 0b 	R0.L = 0xb0c;		/* (2828)	R0=0xff900b0c(-7337204) */
ffa03e80:	27 06       	IF !CC R4 = R7;
ffa03e82:	ff e3 ab e7 	CALL 0xffa00dd8 <_substr>;
ffa03e86:	00 0c       	CC = R0 == 0x0;
ffa03e88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b0c(-7337204) */
ffa03e8c:	0e 30       	R1 = R6;
ffa03e8e:	15 30       	R2 = R5;
ffa03e90:	00 e1 18 0b 	R0.L = 0xb18;		/* (2840)	R0=0xff900b18(-7337192) */
ffa03e94:	27 06       	IF !CC R4 = R7;
ffa03e96:	ff e3 a1 e7 	CALL 0xffa00dd8 <_substr>;
ffa03e9a:	00 0c       	CC = R0 == 0x0;
ffa03e9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b18(-7337192) */
ffa03ea0:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03ea4:	0e 30       	R1 = R6;
ffa03ea6:	15 30       	R2 = R5;
ffa03ea8:	27 06       	IF !CC R4 = R7;
ffa03eaa:	ff e3 97 e7 	CALL 0xffa00dd8 <_substr>;
ffa03eae:	00 0c       	CC = R0 == 0x0;
ffa03eb0:	15 11       	IF !CC JUMP 0xffa040da <_httpResp+0x3e6>;
ffa03eb2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03eb6:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03eba:	0e 30       	R1 = R6;
ffa03ebc:	15 30       	R2 = R5;
ffa03ebe:	ff e3 8d e7 	CALL 0xffa00dd8 <_substr>;
ffa03ec2:	00 0c       	CC = R0 == 0x0;
ffa03ec4:	f6 10       	IF !CC JUMP 0xffa040b0 <_httpResp+0x3bc>;
ffa03ec6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03eca:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03ece:	0e 30       	R1 = R6;
ffa03ed0:	15 30       	R2 = R5;
ffa03ed2:	ff e3 83 e7 	CALL 0xffa00dd8 <_substr>;
ffa03ed6:	00 0c       	CC = R0 == 0x0;
ffa03ed8:	13 11       	IF !CC JUMP 0xffa040fe <_httpResp+0x40a>;
ffa03eda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03ede:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03ee2:	0e 30       	R1 = R6;
ffa03ee4:	15 30       	R2 = R5;
ffa03ee6:	ff e3 79 e7 	CALL 0xffa00dd8 <_substr>;
ffa03eea:	00 0c       	CC = R0 == 0x0;
ffa03eec:	d1 10       	IF !CC JUMP 0xffa0408e <_httpResp+0x39a>;
ffa03eee:	20 43       	R0 = R4.B (X);
ffa03ef0:	00 0c       	CC = R0 == 0x0;
ffa03ef2:	3c 17       	IF !CC JUMP 0xffa03d6a <_httpResp+0x76> (BP);
ffa03ef4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b3c(-7337156) */
ffa03ef8:	00 e1 44 0b 	R0.L = 0xb44;		/* (2884)	R0=0xff900b44(-7337148) */
ffa03efc:	0e 30       	R1 = R6;
ffa03efe:	15 30       	R2 = R5;
ffa03f00:	ff e3 6c e7 	CALL 0xffa00dd8 <_substr>;
ffa03f04:	00 0c       	CC = R0 == 0x0;
ffa03f06:	0c 1b       	IF CC JUMP 0xffa03d1e <_httpResp+0x2a>;
ffa03f08:	7f 30       	R7 = FP;
ffa03f0a:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f0e:	57 5a       	P1 = FP + P2;
ffa03f10:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03f12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f14:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03f16:	b2 e0 02 20 	LSETUP(0xffa03f1a <_httpResp+0x226>, 0xffa03f1a <_httpResp+0x226>) LC1 = P2;
ffa03f1a:	08 92       	[P1++] = R0;
ffa03f1c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03f20:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03f24:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03f28:	29 4f       	R1 <<= 0x5;
ffa03f2a:	10 91       	R0 = [P2];
ffa03f2c:	08 54       	R0 = R0 & R1;
ffa03f2e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f30:	81 4f       	R1 <<= 0x10;
ffa03f32:	08 50       	R0 = R0 + R1;
ffa03f34:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f36:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03f3a:	88 54       	R2 = R0 & R1;
ffa03f3c:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03f40:	b2 e0 12 10 	LSETUP(0xffa03f44 <_httpResp+0x250>, 0xffa03f64 <_httpResp+0x270>) LC1 = P1;
ffa03f44:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f48:	97 5a       	P2 = FP + P2;
ffa03f4a:	02 32       	P0 = R2;
ffa03f4c:	11 91       	R1 = [P2];
ffa03f4e:	12 64       	R2 += 0x2;		/* (  2) */
ffa03f50:	00 94       	R0 = W[P0++] (Z);
ffa03f52:	41 50       	R1 = R1 + R0;
ffa03f54:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f56:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03f5a:	11 92       	[P2++] = R1;
ffa03f5c:	82 54       	R2 = R2 & R0;
ffa03f5e:	42 30       	R0 = P2;
ffa03f60:	38 08       	CC = R0 == R7;
ffa03f62:	f4 17       	IF !CC JUMP 0xffa03f4a <_httpResp+0x256> (BP);
ffa03f64:	00 00       	NOP;
ffa03f66:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f6a:	97 5a       	P2 = FP + P2;
ffa03f6c:	00 00       	NOP;
ffa03f6e:	10 91       	R0 = [P2];
ffa03f70:	58 4d       	R0 >>>= 0xb;
ffa03f72:	10 92       	[P2++] = R0;
ffa03f74:	4a 30       	R1 = P2;
ffa03f76:	39 08       	CC = R1 == R7;
ffa03f78:	fa 17       	IF !CC JUMP 0xffa03f6c <_httpResp+0x278> (BP);
ffa03f7a:	ff e3 07 fd 	CALL 0xffa03988 <_htmlDefault>;
ffa03f7e:	68 67       	R0 += -0x13;		/* (-19) */
ffa03f80:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03f84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03f88:	f0 bb       	[FP -0x4] = R0;
ffa03f8a:	02 e1 54 0b 	R2.L = 0xb54;		/* (2900)	R2=0xff900b54(-7337132) */
ffa03f8e:	08 50       	R0 = R0 + R1;
ffa03f90:	0f 30       	R1 = R7;
ffa03f92:	ff e3 b5 e6 	CALL 0xffa00cfc <_strcpy_>;
ffa03f96:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03f9a:	f5 b8 00 00 
ffa03f9e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b54(-7337132) */
ffa03fa2:	0f 30       	R1 = R7;
ffa03fa4:	02 e1 60 0b 	R2.L = 0xb60;		/* (2912)	R2=0xff900b60(-7337120) */
ffa03fa8:	ff e3 aa e6 	CALL 0xffa00cfc <_strcpy_>;
ffa03fac:	16 30       	R2 = R6;
ffa03fae:	0f 30       	R1 = R7;
ffa03fb0:	ff e3 0c e8 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03fb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b60(-7337120) */
ffa03fb8:	0f 30       	R1 = R7;
ffa03fba:	02 e1 74 0b 	R2.L = 0xb74;		/* (2932)	R2=0xff900b74(-7337100) */
ffa03fbe:	ff e3 9f e6 	CALL 0xffa00cfc <_strcpy_>;
ffa03fc2:	0f 30       	R1 = R7;
ffa03fc4:	15 30       	R2 = R5;
ffa03fc6:	ff e3 01 e8 	CALL 0xffa00fc8 <_strprintf_int>;
ffa03fca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b74(-7337100) */
ffa03fce:	02 e1 84 0b 	R2.L = 0xb84;		/* (2948)	R2=0xff900b84(-7337084) */
ffa03fd2:	0f 30       	R1 = R7;
ffa03fd4:	ff e3 94 e6 	CALL 0xffa00cfc <_strcpy_>;
ffa03fd8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03fda:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03fdc:	16 08       	CC = R6 == R2;
ffa03fde:	e0 17       	IF !CC JUMP 0xffa03f9e <_httpResp+0x2aa> (BP);
ffa03fe0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03fe4:	0f 30       	R1 = R7;
ffa03fe6:	02 e1 90 0b 	R2.L = 0xb90;		/* (2960)	R2=0xff900b90(-7337072) */
ffa03fea:	ff e3 89 e6 	CALL 0xffa00cfc <_strcpy_>;
ffa03fee:	f0 b9       	R0 = [FP -0x4];
ffa03ff0:	9e 2e       	JUMP.S 0xffa03d2c <_httpResp+0x38>;
ffa03ff2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ff4:	4f 30       	R1 = FP;
ffa03ff6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b90(-7337072) */
ffa03ffa:	f0 bb       	[FP -0x4] = R0;
ffa03ffc:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03ffe:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04002:	02 e1 90 0a 	R2.L = 0xa90;		/* (2704)	R2=0xff900a90(-7337328) */
ffa04006:	ff e3 7b e6 	CALL 0xffa00cfc <_strcpy_>;
ffa0400a:	f0 b9       	R0 = [FP -0x4];
ffa0400c:	90 2e       	JUMP.S 0xffa03d2c <_httpResp+0x38>;
ffa0400e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa04012:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04016:	0e 30       	R1 = R6;
ffa04018:	15 30       	R2 = R5;
ffa0401a:	ff e3 df e6 	CALL 0xffa00dd8 <_substr>;
ffa0401e:	00 0c       	CC = R0 == 0x0;
ffa04020:	08 1c       	IF CC JUMP 0xffa04030 <_httpResp+0x33c> (BP);
ffa04022:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa04026:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04028:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa0402c:	10 9b       	B[P2] = R0;
ffa0402e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04030:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04034:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa04038:	0e 30       	R1 = R6;
ffa0403a:	15 30       	R2 = R5;
ffa0403c:	ff e3 ce e6 	CALL 0xffa00dd8 <_substr>;
ffa04040:	00 0c       	CC = R0 == 0x0;
ffa04042:	05 1f       	IF CC JUMP 0xffa03e4c <_httpResp+0x158> (BP);
ffa04044:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa04048:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0404a:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa0404e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04050:	10 9b       	B[P2] = R0;
ffa04052:	fd 2e       	JUMP.S 0xffa03e4c <_httpResp+0x158>;
ffa04054:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04058:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa0405c:	0e 30       	R1 = R6;
ffa0405e:	15 30       	R2 = R5;
ffa04060:	ff e3 bc e6 	CALL 0xffa00dd8 <_substr>;
ffa04064:	00 0c       	CC = R0 == 0x0;
ffa04066:	61 14       	IF !CC JUMP 0xffa04128 <_httpResp+0x434> (BP);
ffa04068:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0406a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa0406e:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa04072:	0e 30       	R1 = R6;
ffa04074:	15 30       	R2 = R5;
ffa04076:	ff e3 b1 e6 	CALL 0xffa00dd8 <_substr>;
ffa0407a:	00 0c       	CC = R0 == 0x0;
ffa0407c:	de 1e       	IF CC JUMP 0xffa03e38 <_httpResp+0x144> (BP);
ffa0407e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa04082:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04084:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04088:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0408a:	10 9b       	B[P2] = R0;
ffa0408c:	d6 2e       	JUMP.S 0xffa03e38 <_httpResp+0x144>;
ffa0408e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04090:	06 50       	R0 = R6 + R0;
ffa04092:	ff e3 c3 e7 	CALL 0xffa01018 <_atoi>;
ffa04096:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_streamEnabled> */
ffa0409a:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0409e:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa040a0:	11 91       	R1 = [P2];
ffa040a2:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa040a6:	51 54       	R1 = R1 & R2;
ffa040a8:	c0 4f       	R0 <<= 0x18;
ffa040aa:	41 50       	R1 = R1 + R0;
ffa040ac:	11 93       	[P2] = R1;
ffa040ae:	5e 2e       	JUMP.S 0xffa03d6a <_httpResp+0x76>;
ffa040b0:	86 51       	R6 = R6 + R0;
ffa040b2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040b4:	45 53       	R5 = R5 - R0;
ffa040b6:	06 30       	R0 = R6;
ffa040b8:	ff e3 b0 e7 	CALL 0xffa01018 <_atoi>;
ffa040bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040c0:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040c4:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa040c6:	11 91       	R1 = [P2];
ffa040c8:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa040cc:	40 43       	R0 = R0.B (Z);
ffa040ce:	51 54       	R1 = R1 & R2;
ffa040d0:	40 4f       	R0 <<= 0x8;
ffa040d2:	41 50       	R1 = R1 + R0;
ffa040d4:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040d6:	11 93       	[P2] = R1;
ffa040d8:	f7 2e       	JUMP.S 0xffa03ec6 <_httpResp+0x1d2>;
ffa040da:	86 51       	R6 = R6 + R0;
ffa040dc:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040de:	45 53       	R5 = R5 - R0;
ffa040e0:	06 30       	R0 = R6;
ffa040e2:	ff e3 9b e7 	CALL 0xffa01018 <_atoi>;
ffa040e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040ea:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040ee:	11 91       	R1 = [P2];
ffa040f0:	41 4d       	R1 >>>= 0x8;
ffa040f2:	41 4f       	R1 <<= 0x8;
ffa040f4:	40 43       	R0 = R0.B (Z);
ffa040f6:	08 50       	R0 = R0 + R1;
ffa040f8:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040fa:	10 93       	[P2] = R0;
ffa040fc:	db 2e       	JUMP.S 0xffa03eb2 <_httpResp+0x1be>;
ffa040fe:	86 51       	R6 = R6 + R0;
ffa04100:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04102:	45 53       	R5 = R5 - R0;
ffa04104:	06 30       	R0 = R6;
ffa04106:	ff e3 89 e7 	CALL 0xffa01018 <_atoi>;
ffa0410a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0410e:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa04112:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04114:	11 91       	R1 = [P2];
ffa04116:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0411a:	40 43       	R0 = R0.B (Z);
ffa0411c:	51 54       	R1 = R1 & R2;
ffa0411e:	80 4f       	R0 <<= 0x10;
ffa04120:	41 50       	R1 = R1 + R0;
ffa04122:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04124:	11 93       	[P2] = R1;
ffa04126:	da 2e       	JUMP.S 0xffa03eda <_httpResp+0x1e6>;
ffa04128:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0412c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0412e:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04132:	10 9b       	B[P2] = R0;
ffa04134:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa04138:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa0413c:	10 91       	R0 = [P2];
ffa0413e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04140:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04142:	10 93       	[P2] = R0;
ffa04144:	93 2f       	JUMP.S 0xffa0406a <_httpResp+0x376>;
	...

ffa04148 <_httpCollate>:
ffa04148:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0414a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c64 <_NetDataDestIP> */
ffa0414e:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_g_httpRxed> */
ffa04152:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04154:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04158:	29 91 00 00 
ffa0415c:	82 4f       	R2 <<= 0x10;
ffa0415e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04162:	51 50       	R1 = R1 + R2;
ffa04164:	17 30       	R2 = R7;
ffa04166:	ff e3 9b e5 	CALL 0xffa00c9c <_memcpy_>;
ffa0416a:	28 91       	R0 = [P5];
ffa0416c:	38 50       	R0 = R0 + R7;
ffa0416e:	01 e8 00 00 	UNLINK;
ffa04172:	28 93       	[P5] = R0;
ffa04174:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04176:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04178:	10 00       	RTS;
	...

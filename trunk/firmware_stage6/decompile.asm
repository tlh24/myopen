
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
ffa001be:	00 e3 0b 08 	CALL 0xffa011d4 <_spi_write_byte>;
ffa001c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa001c4:	00 e3 08 08 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa00200:	00 e3 ea 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00204:	27 97       	W[P4] = R7;
ffa00206:	24 00       	SSYNC;
ffa00208:	2f 97       	W[P5] = R7;
ffa0020a:	24 00       	SSYNC;
ffa0020c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0020e:	00 e3 e3 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00212:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00214:	00 e3 e0 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00218:	27 97       	W[P4] = R7;
ffa0021a:	24 00       	SSYNC;
ffa0021c:	2f 97       	W[P5] = R7;
ffa0021e:	24 00       	SSYNC;
ffa00220:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00222:	00 e3 d9 07 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa00250:	00 e3 c2 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00254:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa00258:	40 43       	R0 = R0.B (Z);
ffa0025a:	00 e3 bd 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0025e:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa00262:	40 43       	R0 = R0.B (Z);
ffa00264:	7f 43       	R7 = R7.B (Z);
ffa00266:	00 e3 b7 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0026a:	07 30       	R0 = R7;
ffa0026c:	00 e3 b4 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00270:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00272:	00 e3 b1 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00276:	47 43       	R7 = R0.B (Z);
ffa00278:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0027a:	00 e3 ad 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0027e:	40 43       	R0 = R0.B (Z);
ffa00280:	47 4f       	R7 <<= 0x8;
ffa00282:	c7 51       	R7 = R7 + R0;
ffa00284:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00286:	00 e3 a7 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0028a:	40 43       	R0 = R0.B (Z);
ffa0028c:	47 4f       	R7 <<= 0x8;
ffa0028e:	c7 51       	R7 = R7 + R0;
ffa00290:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00292:	00 e3 a1 07 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa002d0:	00 e3 82 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa002d4:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa002d8:	40 43       	R0 = R0.B (Z);
ffa002da:	00 e3 7d 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa002de:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa002e2:	40 43       	R0 = R0.B (Z);
ffa002e4:	7f 43       	R7 = R7.B (Z);
ffa002e6:	00 e3 77 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa002ea:	07 30       	R0 = R7;
ffa002ec:	00 e3 74 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa002f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002f2:	00 e3 71 07 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa0032a:	00 e3 55 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0032e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00330:	00 e3 52 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00334:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa00338:	00 e3 4e 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0033c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0033e:	00 e3 4b 07 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa00372:	00 e3 31 07 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa00398:	00 e3 1e 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa0039c:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa003a0:	47 4e       	R7 >>= 0x8;
ffa003a2:	7f 43       	R7 = R7.B (Z);
ffa003a4:	40 43       	R0 = R0.B (Z);
ffa003a6:	00 e3 17 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa003aa:	07 30       	R0 = R7;
ffa003ac:	00 e3 14 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa003b0:	70 43       	R0 = R6.B (Z);
ffa003b2:	00 e3 11 07 	CALL 0xffa011d4 <_spi_write_byte>;
ffa003b6:	20 98       	R0 = B[P4++] (Z);
ffa003b8:	00 e3 0e 07 	CALL 0xffa011d4 <_spi_write_byte>;
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
ffa003ee:	00 e3 c1 02 	CALL 0xffa00970 <_printf_hex_byte>;
ffa003f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003f6:	21 99       	R1 = B[P4] (Z);
ffa003f8:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa003fc:	00 e3 ba 02 	CALL 0xffa00970 <_printf_hex_byte>;
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
ffa0041c:	00 e2 9a 02 	JUMP.L 0xffa00950 <_printf_str>;
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
ffa0043a:	00 e3 1b 13 	CALL 0xffa02a70 <_bfin_EMAC_recv>;
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
ffa00458:	00 e3 e8 09 	CALL 0xffa01828 <_htons>;
ffa0045c:	c0 42       	R0 = R0.L (Z);
ffa0045e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00462:	08 08       	CC = R0 == R1;
ffa00464:	e6 17       	IF !CC JUMP 0xffa00430 <_eth_listen+0x8> (BP);
ffa00466:	f0 b9       	R0 = [FP -0x4];
ffa00468:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0046c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0046e:	01 e1 b9 0b 	R1.L = 0xbb9;		/* (3001)	R1=0xff900bb9 <_g_outpkt>(-7337031) */
ffa00472:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00474:	00 e3 16 04 	CALL 0xffa00ca0 <_memcpy_>;
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
ffa00528:	00 e3 d6 02 	CALL 0xffa00ad4 <_printf_int>;
ffa0052c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900038(-7339976) */
ffa00530:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00534:	00 e3 0e 02 	CALL 0xffa00950 <_printf_str>;
ffa00538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa0053c:	00 e1 48 00 	R0.L = 0x48;		/* ( 72)	R0=0xff900048(-7339960) */
ffa00540:	00 e3 08 02 	CALL 0xffa00950 <_printf_str>;
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
ffa00588:	00 e3 4a 02 	CALL 0xffa00a1c <_printf_hex>;
ffa0058c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00590:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00594:	0f 30       	R1 = R7;
ffa00596:	00 e3 43 02 	CALL 0xffa00a1c <_printf_hex>;
ffa0059a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa0059e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa005a2:	00 e3 d7 01 	CALL 0xffa00950 <_printf_str>;
ffa005a6:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa005a8:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa005ac:	08 08       	CC = R0 == R1;
ffa005ae:	08 18       	IF CC JUMP 0xffa005be <_main+0x142>;
ffa005b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa005b4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005b8:	0e 30       	R1 = R6;
ffa005ba:	00 e3 31 02 	CALL 0xffa00a1c <_printf_hex>;
ffa005be:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa005c0:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa005c4:	08 08       	CC = R0 == R1;
ffa005c6:	08 18       	IF CC JUMP 0xffa005d6 <_main+0x15a>;
ffa005c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005cc:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005d0:	0e 30       	R1 = R6;
ffa005d2:	00 e3 25 02 	CALL 0xffa00a1c <_printf_hex>;
ffa005d6:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa005d8:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa005dc:	08 08       	CC = R0 == R1;
ffa005de:	08 18       	IF CC JUMP 0xffa005ee <_main+0x172>;
ffa005e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005e4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005e8:	0e 30       	R1 = R6;
ffa005ea:	00 e3 19 02 	CALL 0xffa00a1c <_printf_hex>;
ffa005ee:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa005f2:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa005f6:	55 08       	CC = P5 == P2;
ffa005f8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa005fa:	bc 17       	IF !CC JUMP 0xffa00572 <_main+0xf6> (BP);
ffa005fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00600:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00604:	00 e3 a6 01 	CALL 0xffa00950 <_printf_str>;
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
ffa0064a:	00 e3 cf 0f 	CALL 0xffa025e8 <_bfin_EMAC_init>;
ffa0064e:	00 0c       	CC = R0 == 0x0;
ffa00650:	d0 bb       	[FP -0xc] = R0;
ffa00652:	03 14       	IF !CC JUMP 0xffa00658 <_main+0x1dc> (BP);
ffa00654:	00 e3 9c 11 	CALL 0xffa0298c <_DHCP_req>;
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
ffa006ec:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa006f0:	00 e3 72 07 	CALL 0xffa015d4 <_radio_init>;
ffa006f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa006f8:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa006fc:	00 e3 2a 01 	CALL 0xffa00950 <_printf_str>;
ffa00700:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00702:	00 e3 a5 06 	CALL 0xffa0144c <_radio_set_rx>;
ffa00706:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa00708:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0070a:	e0 bb       	[FP -0x8] = R0;
ffa0070c:	d0 b9       	R0 = [FP -0xc];
ffa0070e:	ff e3 8d fe 	CALL 0xffa00428 <_eth_listen>;
ffa00712:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00716:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0071a:	50 95       	R0 = W[P2] (X);
ffa0071c:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0071e:	44 18       	IF CC JUMP 0xffa007a6 <_main+0x32a>;
ffa00720:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa00724:	05 0a       	CC = R5 <= R0 (IU);
ffa00726:	1b 1c       	IF CC JUMP 0xffa0075c <_main+0x2e0> (BP);
ffa00728:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0072c:	00 e3 54 05 	CALL 0xffa011d4 <_spi_write_byte>;
ffa00730:	4f 30       	R1 = FP;
ffa00732:	20 e1 04 01 	R0 = 0x104 (X);		/*		R0=0x104(260) */
ffa00736:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00738:	00 e3 b0 0d 	CALL 0xffa02298 <_udp_packet_setup>;
ffa0073c:	10 32       	P2 = R0;
ffa0073e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00742:	00 0d       	CC = R0 <= 0x0;
ffa00744:	6c 18       	IF CC JUMP 0xffa0081c <_main+0x3a0>;
ffa00746:	14 92       	[P2++] = R4;
ffa00748:	4a 30       	R1 = P2;
ffa0074a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0074c:	22 e1 00 01 	R2 = 0x100 (X);		/*		R2=0x100(256) */
ffa00750:	00 e3 a8 02 	CALL 0xffa00ca0 <_memcpy_>;
ffa00754:	0c 64       	R4 += 0x1;		/* (  1) */
ffa00756:	00 e3 13 0a 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa0075a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0075c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff801500 */
ffa00760:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00764:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620000(274857984) */
ffa00768:	11 91       	R1 = [P2];
ffa0076a:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa0076e:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa00772:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00776:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa0077a:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa0077e:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00782:	0b c4 00 80 	A0 += A1;
ffa00786:	8b c0 00 38 	R0 = A0 (FU);
ffa0078a:	82 ce d0 83 	R1 = R0 >> 0x6 || R0 = [FP -0x8] || NOP;
ffa0078e:	e0 b9 00 00 
ffa00792:	08 08       	CC = R0 == R1;
ffa00794:	bc 1b       	IF CC JUMP 0xffa0070c <_main+0x290>;
ffa00796:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa0079a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0079c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa007a0:	10 97       	W[P2] = R0;
ffa007a2:	e1 bb       	[FP -0x8] = R1;
ffa007a4:	b4 2f       	JUMP.S 0xffa0070c <_main+0x290>;
ffa007a6:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa007aa:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa007ac:	00 e3 94 04 	CALL 0xffa010d4 <_spi_write_register>;
ffa007b0:	24 00       	SSYNC;
ffa007b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa007b6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa007ba:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa007be:	10 97       	W[P2] = R0;
ffa007c0:	24 00       	SSYNC;
ffa007c2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00730(-4192464) */
ffa007c6:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa007ca:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa007ce:	28 97       	W[P5] = R0;
ffa007d0:	75 30       	R6 = P5;
ffa007d2:	00 e3 67 04 	CALL 0xffa010a0 <_spi_delay>;
ffa007d6:	1d 32       	P3 = R5;
ffa007d8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa007da:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa007dc:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa007de:	16 32       	P2 = R6;
ffa007e0:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa007e2:	17 97       	W[P2] = R7;
ffa007e4:	00 e3 5e 04 	CALL 0xffa010a0 <_spi_delay>;
ffa007e8:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa007ea:	68 95       	R0 = W[P5] (X);
ffa007ec:	54 08       	CC = P4 == P2;
ffa007ee:	18 9a       	B[P3++] = R0;
ffa007f0:	f7 17       	IF !CC JUMP 0xffa007de <_main+0x362> (BP);
ffa007f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa007f6:	27 e1 00 06 	R7 = 0x600 (X);		/*		R7=0x600(1536) */
ffa007fa:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007fe:	17 97       	W[P2] = R7;
ffa00800:	24 00       	SSYNC;
ffa00802:	15 32       	P2 = R5;
ffa00804:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00806:	90 e5 1b 00 	R0 = B[P2 + 0x1b] (X);
ffa0080a:	08 54       	R0 = R0 & R1;
ffa0080c:	08 08       	CC = R0 == R1;
ffa0080e:	0a 18       	IF CC JUMP 0xffa00822 <_main+0x3a6>;
ffa00810:	0d 30       	R1 = R5;
ffa00812:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00814:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00818:	41 55       	R5 = R1 & R0;
ffa0081a:	83 2f       	JUMP.S 0xffa00720 <_main+0x2a4>;
ffa0081c:	0c 64       	R4 += 0x1;		/* (  1) */
ffa0081e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00820:	9e 2f       	JUMP.S 0xffa0075c <_main+0x2e0>;
ffa00822:	00 e3 43 06 	CALL 0xffa014a8 <_radio_set_tx>;
ffa00826:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0082a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0082e:	17 97       	W[P2] = R7;
ffa00830:	24 00       	SSYNC;
ffa00832:	16 32       	P2 = R6;
ffa00834:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00838:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0083c:	0d e1 b9 0b 	P5.L = 0xbb9;		/* (3001)	P5=0xff900bb9 <_g_outpkt> */
ffa00840:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0f000(-4132864) */
ffa00844:	10 97       	W[P2] = R0;
ffa00846:	65 32       	P4 = P5;
ffa00848:	00 e3 2c 04 	CALL 0xffa010a0 <_spi_delay>;
ffa0084c:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa00850:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa00852:	00 00       	NOP;
ffa00854:	28 98       	R0 = B[P5++] (Z);
ffa00856:	18 97       	W[P3] = R0;
ffa00858:	00 e3 24 04 	CALL 0xffa010a0 <_spi_delay>;
ffa0085c:	65 08       	CC = P5 == P4;
ffa0085e:	fa 17       	IF !CC JUMP 0xffa00852 <_main+0x3d6> (BP);
ffa00860:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00864:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00868:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0086c:	10 97       	W[P2] = R0;
ffa0086e:	24 00       	SSYNC;
ffa00870:	d0 b9       	R0 = [FP -0xc];
ffa00872:	ff e3 db fd 	CALL 0xffa00428 <_eth_listen>;
ffa00876:	03 20       	JUMP.S 0xffa0087c <_main+0x400>;
ffa00878:	00 00       	NOP;
ffa0087a:	00 00       	NOP;
ffa0087c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00880:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa00884:	50 95       	R0 = W[P2] (X);
ffa00886:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa00888:	f8 17       	IF !CC JUMP 0xffa00878 <_main+0x3fc> (BP);
ffa0088a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0088e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00890:	00 e3 22 04 	CALL 0xffa010d4 <_spi_write_register>;
ffa00894:	00 e3 dc 05 	CALL 0xffa0144c <_radio_set_rx>;
ffa00898:	48 2f       	JUMP.S 0xffa00728 <_main+0x2ac>;
	...

ffa0089c <_uart_str>:
ffa0089c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa008a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa008a4:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa008a8:	08 32       	P1 = R0;
ffa008aa:	50 95       	R0 = W[P2] (X);
ffa008ac:	c0 42       	R0 = R0.L (Z);
ffa008ae:	08 0c       	CC = R0 == 0x1;
ffa008b0:	06 18       	IF CC JUMP 0xffa008bc <_uart_str+0x20>;
ffa008b2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa008b4:	02 30       	R0 = R2;
ffa008b6:	01 e8 00 00 	UNLINK;
ffa008ba:	10 00       	RTS;
ffa008bc:	48 99       	R0 = B[P1] (X);
ffa008be:	01 43       	R1 = R0.B (X);
ffa008c0:	01 0c       	CC = R1 == 0x0;
ffa008c2:	f8 1b       	IF CC JUMP 0xffa008b2 <_uart_str+0x16>;
ffa008c4:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa008c8:	09 6c       	P1 += 0x1;		/* (  1) */
ffa008ca:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa008cc:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa008d0:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa008d4:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa008d6:	b2 e0 1c 00 	LSETUP(0xffa008da <_uart_str+0x3e>, 0xffa0090e <_uart_str+0x72>) LC1 = P0;
ffa008da:	19 08       	CC = R1 == R3;
ffa008dc:	1b 18       	IF CC JUMP 0xffa00912 <_uart_str+0x76>;
ffa008de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa008e2:	00 43       	R0 = R0.B (X);
ffa008e4:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa008e8:	10 97       	W[P2] = R0;
ffa008ea:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa008ec:	50 95       	R0 = W[P2] (X);
ffa008ee:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008f0:	0a 10       	IF !CC JUMP 0xffa00904 <_uart_str+0x68>;
ffa008f2:	00 00       	NOP;
ffa008f4:	00 00       	NOP;
ffa008f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa008fa:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008fe:	50 95       	R0 = W[P2] (X);
ffa00900:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00902:	f9 1f       	IF CC JUMP 0xffa008f4 <_uart_str+0x58> (BP);
ffa00904:	48 99       	R0 = B[P1] (X);
ffa00906:	01 43       	R1 = R0.B (X);
ffa00908:	01 0c       	CC = R1 == 0x0;
ffa0090a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0090c:	d4 1b       	IF CC JUMP 0xffa008b4 <_uart_str+0x18>;
ffa0090e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00910:	d2 2f       	JUMP.S 0xffa008b4 <_uart_str+0x18>;
ffa00912:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00914:	20 9f       	W[I0] = R0.L;
ffa00916:	02 20       	JUMP.S 0xffa0091a <_uart_str+0x7e>;
ffa00918:	00 00       	NOP;
ffa0091a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0091e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00922:	50 95       	R0 = W[P2] (X);
ffa00924:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00926:	f9 1f       	IF CC JUMP 0xffa00918 <_uart_str+0x7c> (BP);
ffa00928:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0092c:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0092e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00932:	10 97       	W[P2] = R0;
ffa00934:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00936:	50 95       	R0 = W[P2] (X);
ffa00938:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0093a:	e5 13       	IF !CC JUMP 0xffa00904 <_uart_str+0x68>;
ffa0093c:	00 00       	NOP;
ffa0093e:	00 00       	NOP;
ffa00940:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00944:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00948:	50 95       	R0 = W[P2] (X);
ffa0094a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0094c:	f9 1f       	IF CC JUMP 0xffa0093e <_uart_str+0xa2> (BP);
ffa0094e:	db 2f       	JUMP.S 0xffa00904 <_uart_str+0x68>;

ffa00950 <_printf_str>:
ffa00950:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00954:	01 e8 00 00 	UNLINK;
ffa00958:	ff e2 a2 ff 	JUMP.L 0xffa0089c <_uart_str>;

ffa0095c <_printf_newline>:
ffa0095c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00960:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00964:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00968:	01 e8 00 00 	UNLINK;
ffa0096c:	ff e2 98 ff 	JUMP.L 0xffa0089c <_uart_str>;

ffa00970 <_printf_hex_byte>:
ffa00970:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00972:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00976:	28 32       	P5 = R0;
ffa00978:	39 30       	R7 = R1;
ffa0097a:	00 e3 b1 01 	CALL 0xffa00cdc <_strlen_>;
ffa0097e:	10 30       	R2 = R0;
ffa00980:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00984:	02 09       	CC = R2 <= R0;
ffa00986:	41 10       	IF !CC JUMP 0xffa00a08 <_printf_hex_byte+0x98>;
ffa00988:	02 0d       	CC = R2 <= 0x0;
ffa0098a:	44 18       	IF CC JUMP 0xffa00a12 <_printf_hex_byte+0xa2>;
ffa0098c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00990:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00992:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00996:	09 32       	P1 = R1;
ffa00998:	42 91       	P2 = [P0];
ffa0099a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0099c:	68 98       	R0 = B[P5++] (X);
ffa0099e:	0a 08       	CC = R2 == R1;
ffa009a0:	8a 5a       	P2 = P2 + P1;
ffa009a2:	10 9b       	B[P2] = R0;
ffa009a4:	f9 17       	IF !CC JUMP 0xffa00996 <_printf_hex_byte+0x26> (BP);
ffa009a6:	0a 32       	P1 = R2;
ffa009a8:	42 91       	P2 = [P0];
ffa009aa:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa009ac:	22 32       	P4 = R2;
ffa009ae:	79 43       	R1 = R7.B (Z);
ffa009b0:	8a 5a       	P2 = P2 + P1;
ffa009b2:	10 9b       	B[P2] = R0;
ffa009b4:	42 91       	P2 = [P0];
ffa009b6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa009b8:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa009bc:	11 6c       	P1 += 0x2;		/* (  2) */
ffa009be:	a2 5a       	P2 = P2 + P4;
ffa009c0:	10 9b       	B[P2] = R0;
ffa009c2:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa009c4:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa009c6:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa009c8:	01 30       	R0 = R1;
ffa009ca:	10 40       	R0 >>>= R2;
ffa009cc:	18 54       	R0 = R0 & R3;
ffa009ce:	38 09       	CC = R0 <= R7;
ffa009d0:	1a 1c       	IF CC JUMP 0xffa00a04 <_printf_hex_byte+0x94> (BP);
ffa009d2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa009d4:	42 91       	P2 = [P0];
ffa009d6:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa009d8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900bb9 <_g_outpkt> */
ffa009dc:	22 0c       	CC = R2 == -0x4;
ffa009de:	8a 5a       	P2 = P2 + P1;
ffa009e0:	0d e1 e0 0b 	P5.L = 0xbe0;		/* (3040)	P5=0xff900be0 <_printf_out> */
ffa009e4:	10 9b       	B[P2] = R0;
ffa009e6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa009e8:	f0 17       	IF !CC JUMP 0xffa009c8 <_printf_hex_byte+0x58> (BP);
ffa009ea:	6a 91       	P2 = [P5];
ffa009ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009ee:	94 5a       	P2 = P4 + P2;
ffa009f0:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa009f4:	28 91       	R0 = [P5];
ffa009f6:	ff e3 53 ff 	CALL 0xffa0089c <_uart_str>;
ffa009fa:	01 e8 00 00 	UNLINK;
ffa009fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a00:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00a02:	10 00       	RTS;
ffa00a04:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00a06:	e7 2f       	JUMP.S 0xffa009d4 <_printf_hex_byte+0x64>;
ffa00a08:	01 e8 00 00 	UNLINK;
ffa00a0c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a0e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00a10:	10 00       	RTS;
ffa00a12:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00a16:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00a1a:	c6 2f       	JUMP.S 0xffa009a6 <_printf_hex_byte+0x36>;

ffa00a1c <_printf_hex>:
ffa00a1c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00a1e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00a22:	28 32       	P5 = R0;
ffa00a24:	39 30       	R7 = R1;
ffa00a26:	00 e3 5b 01 	CALL 0xffa00cdc <_strlen_>;
ffa00a2a:	10 30       	R2 = R0;
ffa00a2c:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00a30:	02 09       	CC = R2 <= R0;
ffa00a32:	47 10       	IF !CC JUMP 0xffa00ac0 <_printf_hex+0xa4>;
ffa00a34:	02 0d       	CC = R2 <= 0x0;
ffa00a36:	4a 18       	IF CC JUMP 0xffa00aca <_printf_hex+0xae>;
ffa00a38:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff901530 */
ffa00a3c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a3e:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00a42:	01 32       	P0 = R1;
ffa00a44:	4a 91       	P2 = [P1];
ffa00a46:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a48:	68 98       	R0 = B[P5++] (X);
ffa00a4a:	0a 08       	CC = R2 == R1;
ffa00a4c:	82 5a       	P2 = P2 + P0;
ffa00a4e:	10 9b       	B[P2] = R0;
ffa00a50:	f9 17       	IF !CC JUMP 0xffa00a42 <_printf_hex+0x26> (BP);
ffa00a52:	02 32       	P0 = R2;
ffa00a54:	4a 91       	P2 = [P1];
ffa00a56:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a58:	1a 32       	P3 = R2;
ffa00a5a:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00a5c:	82 5a       	P2 = P2 + P0;
ffa00a5e:	10 9b       	B[P2] = R0;
ffa00a60:	4a 91       	P2 = [P1];
ffa00a62:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00a64:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00a68:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00a6a:	9a 5a       	P2 = P2 + P3;
ffa00a6c:	10 9b       	B[P2] = R0;
ffa00a6e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00a70:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00a72:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00a74:	b2 e0 10 50 	LSETUP(0xffa00a78 <_printf_hex+0x5c>, 0xffa00a94 <_printf_hex+0x78>) LC1 = P5;
ffa00a78:	07 30       	R0 = R7;
ffa00a7a:	08 40       	R0 >>>= R1;
ffa00a7c:	10 54       	R0 = R0 & R2;
ffa00a7e:	18 09       	CC = R0 <= R3;
ffa00a80:	1e 1c       	IF CC JUMP 0xffa00abc <_printf_hex+0xa0> (BP);
ffa00a82:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00a84:	4a 91       	P2 = [P1];
ffa00a86:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa00a8a:	0c e1 e0 0b 	P4.L = 0xbe0;		/* (3040)	P4=0xff900be0 <_printf_out> */
ffa00a8e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00a90:	82 5a       	P2 = P2 + P0;
ffa00a92:	10 9b       	B[P2] = R0;
ffa00a94:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00a96:	62 91       	P2 = [P4];
ffa00a98:	4b 32       	P1 = P3;
ffa00a9a:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00a9c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00a9e:	8a 5a       	P2 = P2 + P1;
ffa00aa0:	10 9b       	B[P2] = R0;
ffa00aa2:	62 91       	P2 = [P4];
ffa00aa4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00aa6:	8a 5a       	P2 = P2 + P1;
ffa00aa8:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00aac:	20 91       	R0 = [P4];
ffa00aae:	ff e3 f7 fe 	CALL 0xffa0089c <_uart_str>;
ffa00ab2:	01 e8 00 00 	UNLINK;
ffa00ab6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ab8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00aba:	10 00       	RTS;
ffa00abc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00abe:	e3 2f       	JUMP.S 0xffa00a84 <_printf_hex+0x68>;
ffa00ac0:	01 e8 00 00 	UNLINK;
ffa00ac4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ac6:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00ac8:	10 00       	RTS;
ffa00aca:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900be0 <_printf_out> */
ffa00ace:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00ad2:	c0 2f       	JUMP.S 0xffa00a52 <_printf_hex+0x36>;

ffa00ad4 <_printf_int>:
ffa00ad4:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00ad6:	01 0c       	CC = R1 == 0x0;
ffa00ad8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00adc:	28 32       	P5 = R0;
ffa00ade:	39 30       	R7 = R1;
ffa00ae0:	41 14       	IF !CC JUMP 0xffa00b62 <_printf_int+0x8e> (BP);
ffa00ae2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00ae6:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00aea:	5a 91       	P2 = [P3];
ffa00aec:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00aee:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00af0:	10 9b       	B[P2] = R0;
ffa00af2:	45 30       	R0 = P5;
ffa00af4:	00 e3 f4 00 	CALL 0xffa00cdc <_strlen_>;
ffa00af8:	c6 50       	R3 = R6 + R0;
ffa00afa:	10 30       	R2 = R0;
ffa00afc:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00b00:	03 09       	CC = R3 <= R0;
ffa00b02:	4e 10       	IF !CC JUMP 0xffa00b9e <_printf_int+0xca>;
ffa00b04:	02 0d       	CC = R2 <= 0x0;
ffa00b06:	79 18       	IF CC JUMP 0xffa00bf8 <_printf_int+0x124>;
ffa00b08:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00b0c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b0e:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00b12:	09 32       	P1 = R1;
ffa00b14:	42 91       	P2 = [P0];
ffa00b16:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b18:	68 98       	R0 = B[P5++] (X);
ffa00b1a:	0a 08       	CC = R2 == R1;
ffa00b1c:	8a 5a       	P2 = P2 + P1;
ffa00b1e:	10 9b       	B[P2] = R0;
ffa00b20:	f9 17       	IF !CC JUMP 0xffa00b12 <_printf_int+0x3e> (BP);
ffa00b22:	06 0d       	CC = R6 <= 0x0;
ffa00b24:	12 18       	IF CC JUMP 0xffa00b48 <_printf_int+0x74>;
ffa00b26:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b28:	00 91       	R0 = [P0];
ffa00b2a:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00b2e:	5a 91 00 00 
ffa00b32:	08 50       	R0 = R0 + R1;
ffa00b34:	08 32       	P1 = R0;
ffa00b36:	0e 52       	R0 = R6 - R1;
ffa00b38:	28 32       	P5 = R0;
ffa00b3a:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b3c:	0e 08       	CC = R6 == R1;
ffa00b3e:	aa 5a       	P2 = P2 + P5;
ffa00b40:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00b44:	08 9b       	B[P1] = R0;
ffa00b46:	f1 17       	IF !CC JUMP 0xffa00b28 <_printf_int+0x54> (BP);
ffa00b48:	0b 32       	P1 = R3;
ffa00b4a:	42 91       	P2 = [P0];
ffa00b4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b4e:	91 5a       	P2 = P1 + P2;
ffa00b50:	10 9b       	B[P2] = R0;
ffa00b52:	00 91       	R0 = [P0];
ffa00b54:	ff e3 a4 fe 	CALL 0xffa0089c <_uart_str>;
ffa00b58:	01 e8 00 00 	UNLINK;
ffa00b5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b5e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b60:	10 00       	RTS;
ffa00b62:	01 0d       	CC = R1 <= 0x0;
ffa00b64:	22 18       	IF CC JUMP 0xffa00ba8 <_printf_int+0xd4>;
ffa00b66:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00b6a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00b6c:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00b70:	05 20       	JUMP.S 0xffa00b7a <_printf_int+0xa6>;
ffa00b72:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00b76:	06 08       	CC = R6 == R0;
ffa00b78:	bd 1b       	IF CC JUMP 0xffa00af2 <_printf_int+0x1e>;
ffa00b7a:	07 30       	R0 = R7;
ffa00b7c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b7e:	00 e3 83 00 	CALL 0xffa00c84 <_mod>;
ffa00b82:	0e 32       	P1 = R6;
ffa00b84:	5a 91       	P2 = [P3];
ffa00b86:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b88:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b8a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b8c:	8a 5a       	P2 = P2 + P1;
ffa00b8e:	10 9b       	B[P2] = R0;
ffa00b90:	07 30       	R0 = R7;
ffa00b92:	00 e3 6b 00 	CALL 0xffa00c68 <_div>;
ffa00b96:	00 0d       	CC = R0 <= 0x0;
ffa00b98:	38 30       	R7 = R0;
ffa00b9a:	ec 17       	IF !CC JUMP 0xffa00b72 <_printf_int+0x9e> (BP);
ffa00b9c:	ab 2f       	JUMP.S 0xffa00af2 <_printf_int+0x1e>;
ffa00b9e:	01 e8 00 00 	UNLINK;
ffa00ba2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ba4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00ba6:	10 00       	RTS;
ffa00ba8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00baa:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa00bac:	f8 4f       	R0 <<= 0x1f;
ffa00bae:	f8 53       	R7 = R0 - R7;
ffa00bb0:	07 0d       	CC = R7 <= 0x0;
ffa00bb2:	2c 18       	IF CC JUMP 0xffa00c0a <_printf_int+0x136>;
ffa00bb4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00bb8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00bba:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00bbe:	05 20       	JUMP.S 0xffa00bc8 <_printf_int+0xf4>;
ffa00bc0:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00bc4:	4c 08       	CC = P4 == P1;
ffa00bc6:	1e 18       	IF CC JUMP 0xffa00c02 <_printf_int+0x12e>;
ffa00bc8:	07 30       	R0 = R7;
ffa00bca:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00bcc:	00 e3 5c 00 	CALL 0xffa00c84 <_mod>;
ffa00bd0:	5a 91       	P2 = [P3];
ffa00bd2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00bd4:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00bd6:	a2 5a       	P2 = P2 + P4;
ffa00bd8:	10 9b       	B[P2] = R0;
ffa00bda:	07 30       	R0 = R7;
ffa00bdc:	00 e3 46 00 	CALL 0xffa00c68 <_div>;
ffa00be0:	00 0d       	CC = R0 <= 0x0;
ffa00be2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00be4:	38 30       	R7 = R0;
ffa00be6:	ed 17       	IF !CC JUMP 0xffa00bc0 <_printf_int+0xec> (BP);
ffa00be8:	74 30       	R6 = P4;
ffa00bea:	4c 32       	P1 = P4;
ffa00bec:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00bee:	5a 91       	P2 = [P3];
ffa00bf0:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00bf2:	8a 5a       	P2 = P2 + P1;
ffa00bf4:	10 9b       	B[P2] = R0;
ffa00bf6:	7e 2f       	JUMP.S 0xffa00af2 <_printf_int+0x1e>;
ffa00bf8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00bfc:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00c00:	91 2f       	JUMP.S 0xffa00b22 <_printf_int+0x4e>;
ffa00c02:	4c 32       	P1 = P4;
ffa00c04:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00c08:	f3 2f       	JUMP.S 0xffa00bee <_printf_int+0x11a>;
ffa00c0a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00c0e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00c10:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00c12:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00c16:	ec 2f       	JUMP.S 0xffa00bee <_printf_int+0x11a>;

ffa00c18 <_printf_ip>:
ffa00c18:	70 05       	[--SP] = (R7:6);
ffa00c1a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c1e:	39 30       	R7 = R1;
ffa00c20:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00c24:	49 43       	R1 = R1.B (Z);
ffa00c26:	ff e3 57 ff 	CALL 0xffa00ad4 <_printf_int>;
ffa00c2a:	06 e1 44 00 	R6.L = 0x44;		/* ( 68)	R6=0xff900044(-7339964) */
ffa00c2e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00c32:	49 43       	R1 = R1.B (Z);
ffa00c34:	06 30       	R0 = R6;
ffa00c36:	ff e3 4f ff 	CALL 0xffa00ad4 <_printf_int>;
ffa00c3a:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00c3e:	49 43       	R1 = R1.B (Z);
ffa00c40:	06 30       	R0 = R6;
ffa00c42:	c7 4e       	R7 >>= 0x18;
ffa00c44:	ff e3 48 ff 	CALL 0xffa00ad4 <_printf_int>;
ffa00c48:	0f 30       	R1 = R7;
ffa00c4a:	06 30       	R0 = R6;
ffa00c4c:	ff e3 44 ff 	CALL 0xffa00ad4 <_printf_int>;
ffa00c50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00c54:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa00c58:	ff e3 7c fe 	CALL 0xffa00950 <_printf_str>;
ffa00c5c:	01 e8 00 00 	UNLINK;
ffa00c60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c62:	30 05       	(R7:6) = [SP++];
ffa00c64:	10 00       	RTS;
	...

ffa00c68 <_div>:
ffa00c68:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c6c:	08 4f       	R0 <<= 0x1;
ffa00c6e:	48 42       	DIVS (R0, R1);
ffa00c70:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa00c72:	b2 e0 03 20 	LSETUP(0xffa00c76 <_div+0xe>, 0xffa00c78 <_div+0x10>) LC1 = P2;
ffa00c76:	08 42       	DIVQ (R0, R1);
ffa00c78:	00 00       	NOP;
ffa00c7a:	80 42       	R0 = R0.L (X);
ffa00c7c:	01 e8 00 00 	UNLINK;
ffa00c80:	10 00       	RTS;
	...

ffa00c84 <_mod>:
ffa00c84:	70 05       	[--SP] = (R7:6);
ffa00c86:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c8a:	30 30       	R6 = R0;
ffa00c8c:	39 30       	R7 = R1;
ffa00c8e:	ff e3 ed ff 	CALL 0xffa00c68 <_div>;
ffa00c92:	c7 40       	R7 *= R0;
ffa00c94:	01 e8 00 00 	UNLINK;
ffa00c98:	be 53       	R6 = R6 - R7;
ffa00c9a:	06 30       	R0 = R6;
ffa00c9c:	30 05       	(R7:6) = [SP++];
ffa00c9e:	10 00       	RTS;

ffa00ca0 <_memcpy_>:
ffa00ca0:	02 0d       	CC = R2 <= 0x0;
ffa00ca2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ca6:	08 32       	P1 = R0;
ffa00ca8:	11 32       	P2 = R1;
ffa00caa:	08 18       	IF CC JUMP 0xffa00cba <_memcpy_+0x1a>;
ffa00cac:	00 00       	NOP;
ffa00cae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cb0:	09 64       	R1 += 0x1;		/* (  1) */
ffa00cb2:	48 98       	R0 = B[P1++] (X);
ffa00cb4:	0a 08       	CC = R2 == R1;
ffa00cb6:	10 9a       	B[P2++] = R0;
ffa00cb8:	fc 17       	IF !CC JUMP 0xffa00cb0 <_memcpy_+0x10> (BP);
ffa00cba:	01 e8 00 00 	UNLINK;
ffa00cbe:	10 00       	RTS;

ffa00cc0 <_memset_>:
ffa00cc0:	02 0d       	CC = R2 <= 0x0;
ffa00cc2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cc6:	10 32       	P2 = R0;
ffa00cc8:	06 18       	IF CC JUMP 0xffa00cd4 <_memset_+0x14>;
ffa00cca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ccc:	08 64       	R0 += 0x1;		/* (  1) */
ffa00cce:	02 08       	CC = R2 == R0;
ffa00cd0:	11 9a       	B[P2++] = R1;
ffa00cd2:	fd 17       	IF !CC JUMP 0xffa00ccc <_memset_+0xc> (BP);
ffa00cd4:	01 e8 00 00 	UNLINK;
ffa00cd8:	10 00       	RTS;
	...

ffa00cdc <_strlen_>:
ffa00cdc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ce0:	10 32       	P2 = R0;
ffa00ce2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ce4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00ce8:	b2 e0 06 10 	LSETUP(0xffa00cec <_strlen_+0x10>, 0xffa00cf4 <_strlen_+0x18>) LC1 = P1;
ffa00cec:	50 99       	R0 = B[P2] (X);
ffa00cee:	00 0c       	CC = R0 == 0x0;
ffa00cf0:	04 18       	IF CC JUMP 0xffa00cf8 <_strlen_+0x1c>;
ffa00cf2:	09 64       	R1 += 0x1;		/* (  1) */
ffa00cf4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cf6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cf8:	01 30       	R0 = R1;
ffa00cfa:	01 e8 00 00 	UNLINK;
ffa00cfe:	10 00       	RTS;

ffa00d00 <_strcpy_>:
ffa00d00:	12 32       	P2 = R2;
ffa00d02:	c5 04       	[--SP] = (P5:5);
ffa00d04:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d08:	29 32       	P5 = R1;
ffa00d0a:	00 32       	P0 = R0;
ffa00d0c:	51 99       	R1 = B[P2] (X);
ffa00d0e:	08 43       	R0 = R1.B (X);
ffa00d10:	00 0c       	CC = R0 == 0x0;
ffa00d12:	17 18       	IF CC JUMP 0xffa00d40 <_strcpy_+0x40>;
ffa00d14:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d16:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d18:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00d1c:	b2 e0 09 10 	LSETUP(0xffa00d20 <_strcpy_+0x20>, 0xffa00d2e <_strcpy_+0x2e>) LC1 = P1;
ffa00d20:	01 9a       	B[P0++] = R1;
ffa00d22:	51 99       	R1 = B[P2] (X);
ffa00d24:	08 43       	R0 = R1.B (X);
ffa00d26:	00 0c       	CC = R0 == 0x0;
ffa00d28:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00d2a:	03 18       	IF CC JUMP 0xffa00d30 <_strcpy_+0x30>;
ffa00d2c:	00 00       	NOP;
ffa00d2e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d30:	01 e8 00 00 	UNLINK;
ffa00d34:	28 91       	R0 = [P5];
ffa00d36:	10 50       	R0 = R0 + R2;
ffa00d38:	28 93       	[P5] = R0;
ffa00d3a:	40 30       	R0 = P0;
ffa00d3c:	85 04       	(P5:5) = [SP++];
ffa00d3e:	10 00       	RTS;
ffa00d40:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d42:	f7 2f       	JUMP.S 0xffa00d30 <_strcpy_+0x30>;

ffa00d44 <_strprepend>:
ffa00d44:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00d46:	21 32       	P4 = R1;
ffa00d48:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d4c:	38 30       	R7 = R0;
ffa00d4e:	02 30       	R0 = R2;
ffa00d50:	2a 32       	P5 = R2;
ffa00d52:	ff e3 c5 ff 	CALL 0xffa00cdc <_strlen_>;
ffa00d56:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00d5a:	20 91 00 00 
ffa00d5e:	02 0d       	CC = R2 <= 0x0;
ffa00d60:	0a 18       	IF CC JUMP 0xffa00d74 <_strprepend+0x30>;
ffa00d62:	07 52       	R0 = R7 - R0;
ffa00d64:	10 32       	P2 = R0;
ffa00d66:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d68:	09 64       	R1 += 0x1;		/* (  1) */
ffa00d6a:	68 98       	R0 = B[P5++] (X);
ffa00d6c:	0a 08       	CC = R2 == R1;
ffa00d6e:	10 9a       	B[P2++] = R0;
ffa00d70:	fc 17       	IF !CC JUMP 0xffa00d68 <_strprepend+0x24> (BP);
ffa00d72:	20 91       	R0 = [P4];
ffa00d74:	01 e8 00 00 	UNLINK;
ffa00d78:	07 52       	R0 = R7 - R0;
ffa00d7a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00d7c:	10 00       	RTS;
	...

ffa00d80 <_strcmp>:
ffa00d80:	10 32       	P2 = R0;
ffa00d82:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d86:	01 32       	P0 = R1;
ffa00d88:	51 99       	R1 = B[P2] (X);
ffa00d8a:	01 0c       	CC = R1 == 0x0;
ffa00d8c:	1b 18       	IF CC JUMP 0xffa00dc2 <_strcmp+0x42>;
ffa00d8e:	00 00       	NOP;
ffa00d90:	00 00       	NOP;
ffa00d92:	00 00       	NOP;
ffa00d94:	40 99       	R0 = B[P0] (X);
ffa00d96:	00 0c       	CC = R0 == 0x0;
ffa00d98:	15 18       	IF CC JUMP 0xffa00dc2 <_strcmp+0x42>;
ffa00d9a:	01 08       	CC = R1 == R0;
ffa00d9c:	1c 10       	IF !CC JUMP 0xffa00dd4 <_strcmp+0x54>;
ffa00d9e:	4a 32       	P1 = P2;
ffa00da0:	50 32       	P2 = P0;
ffa00da2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00da4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00da6:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00daa:	49 99       	R1 = B[P1] (X);
ffa00dac:	01 0c       	CC = R1 == 0x0;
ffa00dae:	0a 18       	IF CC JUMP 0xffa00dc2 <_strcmp+0x42>;
ffa00db0:	00 00       	NOP;
ffa00db2:	00 00       	NOP;
ffa00db4:	00 00       	NOP;
ffa00db6:	50 99       	R0 = B[P2] (X);
ffa00db8:	00 0c       	CC = R0 == 0x0;
ffa00dba:	04 18       	IF CC JUMP 0xffa00dc2 <_strcmp+0x42>;
ffa00dbc:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00dbe:	40 0c       	CC = P0 == 0x0;
ffa00dc0:	05 10       	IF !CC JUMP 0xffa00dca <_strcmp+0x4a>;
ffa00dc2:	01 e8 00 00 	UNLINK;
ffa00dc6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00dc8:	10 00       	RTS;
ffa00dca:	01 08       	CC = R1 == R0;
ffa00dcc:	04 10       	IF !CC JUMP 0xffa00dd4 <_strcmp+0x54>;
ffa00dce:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00dd0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00dd2:	ec 2f       	JUMP.S 0xffa00daa <_strcmp+0x2a>;
ffa00dd4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dd6:	01 e8 00 00 	UNLINK;
ffa00dda:	10 00       	RTS;

ffa00ddc <_substr>:
ffa00ddc:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00dde:	20 32       	P4 = R0;
ffa00de0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00de4:	11 32       	P2 = R1;
ffa00de6:	32 30       	R6 = R2;
ffa00de8:	61 99       	R1 = B[P4] (X);
ffa00dea:	01 0c       	CC = R1 == 0x0;
ffa00dec:	14 18       	IF CC JUMP 0xffa00e14 <_substr+0x38>;
ffa00dee:	00 00       	NOP;
ffa00df0:	00 00       	NOP;
ffa00df2:	00 00       	NOP;
ffa00df4:	50 99       	R0 = B[P2] (X);
ffa00df6:	00 0c       	CC = R0 == 0x0;
ffa00df8:	0e 18       	IF CC JUMP 0xffa00e14 <_substr+0x38>;
ffa00dfa:	02 0d       	CC = R2 <= 0x0;
ffa00dfc:	0c 18       	IF CC JUMP 0xffa00e14 <_substr+0x38>;
ffa00dfe:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00e00:	01 08       	CC = R1 == R0;
ffa00e02:	0f 18       	IF CC JUMP 0xffa00e20 <_substr+0x44>;
ffa00e04:	00 00       	NOP;
ffa00e06:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00e08:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00e0a:	50 99       	R0 = B[P2] (X);
ffa00e0c:	00 0c       	CC = R0 == 0x0;
ffa00e0e:	03 18       	IF CC JUMP 0xffa00e14 <_substr+0x38>;
ffa00e10:	1e 09       	CC = R6 <= R3;
ffa00e12:	f7 17       	IF !CC JUMP 0xffa00e00 <_substr+0x24> (BP);
ffa00e14:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00e16:	01 e8 00 00 	UNLINK;
ffa00e1a:	40 30       	R0 = P0;
ffa00e1c:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e1e:	10 00       	RTS;
ffa00e20:	52 30       	R2 = P2;
ffa00e22:	3b 30       	R7 = R3;
ffa00e24:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00e26:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00e28:	12 32       	P2 = R2;
ffa00e2a:	07 32       	P0 = R7;
ffa00e2c:	4c 32       	P1 = P4;
ffa00e2e:	6c 32       	P5 = P4;
ffa00e30:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e32:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00e34:	02 20       	JUMP.S 0xffa00e38 <_substr+0x5c>;
ffa00e36:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00e38:	4b 99       	R3 = B[P1] (X);
ffa00e3a:	50 99       	R0 = B[P2] (X);
ffa00e3c:	03 08       	CC = R3 == R0;
ffa00e3e:	0e 10       	IF !CC JUMP 0xffa00e5a <_substr+0x7e>;
ffa00e40:	03 0c       	CC = R3 == 0x0;
ffa00e42:	0c 18       	IF CC JUMP 0xffa00e5a <_substr+0x7e>;
ffa00e44:	00 00       	NOP;
ffa00e46:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e48:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00e4a:	68 98       	R0 = B[P5++] (X);
ffa00e4c:	00 0c       	CC = R0 == 0x0;
ffa00e4e:	f4 17       	IF !CC JUMP 0xffa00e36 <_substr+0x5a> (BP);
ffa00e50:	01 e8 00 00 	UNLINK;
ffa00e54:	40 30       	R0 = P0;
ffa00e56:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e58:	10 00       	RTS;
ffa00e5a:	12 32       	P2 = R2;
ffa00e5c:	1f 30       	R3 = R7;
ffa00e5e:	d6 2f       	JUMP.S 0xffa00e0a <_substr+0x2e>;

ffa00e60 <_sprintf_int>:
ffa00e60:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00e62:	01 0c       	CC = R1 == 0x0;
ffa00e64:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e68:	00 34       	I0 = R0;
ffa00e6a:	11 30       	R2 = R1;
ffa00e6c:	1a 14       	IF !CC JUMP 0xffa00ea0 <_sprintf_int+0x40> (BP);
ffa00e6e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00e72:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00e76:	5a 91       	P2 = [P3];
ffa00e78:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e7a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00e7c:	10 9b       	B[P2] = R0;
ffa00e7e:	88 32       	P1 = I0;
ffa00e80:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e82:	0b 52       	R0 = R3 - R1;
ffa00e84:	00 32       	P0 = R0;
ffa00e86:	5a 91       	P2 = [P3];
ffa00e88:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e8a:	99 08       	CC = R1 < R3;
ffa00e8c:	82 5a       	P2 = P2 + P0;
ffa00e8e:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00e92:	08 9a       	B[P1++] = R0;
ffa00e94:	f7 1f       	IF CC JUMP 0xffa00e82 <_sprintf_int+0x22> (BP);
ffa00e96:	01 e8 00 00 	UNLINK;
ffa00e9a:	03 30       	R0 = R3;
ffa00e9c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00e9e:	10 00       	RTS;
ffa00ea0:	01 0d       	CC = R1 <= 0x0;
ffa00ea2:	2d 18       	IF CC JUMP 0xffa00efc <_sprintf_int+0x9c>;
ffa00ea4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00ea8:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00eac:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00eae:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00eb2:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00eb6:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00eb8:	b2 e0 20 50 	LSETUP(0xffa00ebc <_sprintf_int+0x5c>, 0xffa00ef8 <_sprintf_int+0x98>) LC1 = P5;
ffa00ebc:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00ec0:	59 91 00 00 
ffa00ec4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00ec8:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00ecc:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00ed0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00ed4:	0b c4 00 00 	R0 = (A0 += A1);
ffa00ed8:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00edc:	10 4d       	R0 >>>= 0x2;
ffa00ede:	08 52       	R0 = R0 - R1;
ffa00ee0:	00 32       	P0 = R0;
ffa00ee2:	13 32       	P2 = R3;
ffa00ee4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00ee6:	40 0d       	CC = P0 <= 0x0;
ffa00ee8:	51 5a       	P1 = P1 + P2;
ffa00eea:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00eec:	92 5a       	P2 = P2 << 0x1;
ffa00eee:	4a 30       	R1 = P2;
ffa00ef0:	0a 52       	R0 = R2 - R1;
ffa00ef2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ef4:	08 9b       	B[P1] = R0;
ffa00ef6:	39 18       	IF CC JUMP 0xffa00f68 <_sprintf_int+0x108>;
ffa00ef8:	50 30       	R2 = P0;
ffa00efa:	c2 2f       	JUMP.S 0xffa00e7e <_sprintf_int+0x1e>;
ffa00efc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00efe:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00f00:	f8 4f       	R0 <<= 0x1f;
ffa00f02:	90 52       	R2 = R0 - R2;
ffa00f04:	02 0d       	CC = R2 <= 0x0;
ffa00f06:	3c 18       	IF CC JUMP 0xffa00f7e <_sprintf_int+0x11e>;
ffa00f08:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00f0c:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00f10:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00f12:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00f16:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00f1a:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00f1c:	b2 e0 1f 50 	LSETUP(0xffa00f20 <_sprintf_int+0xc0>, 0xffa00f5a <_sprintf_int+0xfa>) LC1 = P5;
ffa00f20:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00f24:	59 91 00 00 
ffa00f28:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00f2c:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00f30:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00f34:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00f38:	0b c4 00 00 	R0 = (A0 += A1);
ffa00f3c:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00f40:	10 4d       	R0 >>>= 0x2;
ffa00f42:	08 52       	R0 = R0 - R1;
ffa00f44:	00 32       	P0 = R0;
ffa00f46:	61 5a       	P1 = P1 + P4;
ffa00f48:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00f4a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00f4c:	92 5a       	P2 = P2 << 0x1;
ffa00f4e:	4a 30       	R1 = P2;
ffa00f50:	0a 52       	R0 = R2 - R1;
ffa00f52:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f54:	40 0d       	CC = P0 <= 0x0;
ffa00f56:	08 9b       	B[P1] = R0;
ffa00f58:	0f 18       	IF CC JUMP 0xffa00f76 <_sprintf_int+0x116>;
ffa00f5a:	50 30       	R2 = P0;
ffa00f5c:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00f5e:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00f60:	5a 91       	P2 = [P3];
ffa00f62:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00f64:	8a 5a       	P2 = P2 + P1;
ffa00f66:	10 9b       	B[P2] = R0;
ffa00f68:	03 0d       	CC = R3 <= 0x0;
ffa00f6a:	8a 17       	IF !CC JUMP 0xffa00e7e <_sprintf_int+0x1e> (BP);
ffa00f6c:	01 e8 00 00 	UNLINK;
ffa00f70:	03 30       	R0 = R3;
ffa00f72:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f74:	10 00       	RTS;
ffa00f76:	5c 30       	R3 = P4;
ffa00f78:	4c 32       	P1 = P4;
ffa00f7a:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00f7c:	f2 2f       	JUMP.S 0xffa00f60 <_sprintf_int+0x100>;
ffa00f7e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00f82:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00f84:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00f86:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00f8a:	eb 2f       	JUMP.S 0xffa00f60 <_sprintf_int+0x100>;

ffa00f8c <_sprintf_hex>:
ffa00f8c:	10 32       	P2 = R0;
ffa00f8e:	78 05       	[--SP] = (R7:7);
ffa00f90:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f92:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f96:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00f98:	10 9b       	B[P2] = R0;
ffa00f9a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f9e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00fa2:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00fa4:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00fa6:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00fa8:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00faa:	b2 e0 09 10 	LSETUP(0xffa00fae <_sprintf_hex+0x22>, 0xffa00fbc <_sprintf_hex+0x30>) LC1 = P1;
ffa00fae:	01 30       	R0 = R1;
ffa00fb0:	10 40       	R0 >>>= R2;
ffa00fb2:	18 54       	R0 = R0 & R3;
ffa00fb4:	38 09       	CC = R0 <= R7;
ffa00fb6:	09 1c       	IF CC JUMP 0xffa00fc8 <_sprintf_hex+0x3c> (BP);
ffa00fb8:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fba:	10 9a       	B[P2++] = R0;
ffa00fbc:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00fbe:	01 e8 00 00 	UNLINK;
ffa00fc2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00fc4:	38 05       	(R7:7) = [SP++];
ffa00fc6:	10 00       	RTS;
ffa00fc8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00fca:	f8 2f       	JUMP.S 0xffa00fba <_sprintf_hex+0x2e>;

ffa00fcc <_strprintf_int>:
ffa00fcc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00fce:	29 32       	P5 = R1;
ffa00fd0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fd4:	0a 30       	R1 = R2;
ffa00fd6:	38 30       	R7 = R0;
ffa00fd8:	ff e3 44 ff 	CALL 0xffa00e60 <_sprintf_int>;
ffa00fdc:	29 91       	R1 = [P5];
ffa00fde:	41 50       	R1 = R1 + R0;
ffa00fe0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fe4:	29 93 00 00 
ffa00fe8:	01 e8 00 00 	UNLINK;
ffa00fec:	07 30       	R0 = R7;
ffa00fee:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00ff0:	10 00       	RTS;
	...

ffa00ff4 <_strprintf_hex>:
ffa00ff4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00ff6:	29 32       	P5 = R1;
ffa00ff8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ffc:	0a 30       	R1 = R2;
ffa00ffe:	38 30       	R7 = R0;
ffa01000:	ff e3 c6 ff 	CALL 0xffa00f8c <_sprintf_hex>;
ffa01004:	29 91       	R1 = [P5];
ffa01006:	41 50       	R1 = R1 + R0;
ffa01008:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0100c:	29 93 00 00 
ffa01010:	01 e8 00 00 	UNLINK;
ffa01014:	07 30       	R0 = R7;
ffa01016:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01018:	10 00       	RTS;
	...

ffa0101c <_atoi>:
ffa0101c:	08 32       	P1 = R0;
ffa0101e:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa01020:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01022:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01026:	48 99       	R0 = B[P1] (X);
ffa01028:	10 08       	CC = R0 == R2;
ffa0102a:	25 18       	IF CC JUMP 0xffa01074 <_atoi+0x58>;
ffa0102c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0102e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01030:	41 32       	P0 = P1;
ffa01032:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01034:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01036:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01038:	12 20       	JUMP.S 0xffa0105c <_atoi+0x40>;
ffa0103a:	8b 08       	CC = R3 < R1;
ffa0103c:	16 10       	IF !CC JUMP 0xffa01068 <_atoi+0x4c>;
ffa0103e:	10 43       	R0 = R2.B (X);
ffa01040:	28 32       	P5 = R0;
ffa01042:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01044:	40 99       	R0 = B[P0] (X);
ffa01046:	80 66       	R0 += -0x30;		/* (-48) */
ffa01048:	40 43       	R0 = R0.B (Z);
ffa0104a:	aa 5a       	P2 = P2 + P5;
ffa0104c:	10 0a       	CC = R0 <= R2 (IU);
ffa0104e:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01050:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01052:	03 14       	IF !CC JUMP 0xffa01058 <_atoi+0x3c> (BP);
ffa01054:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01056:	92 5a       	P2 = P2 << 0x1;
ffa01058:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0105a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0105c:	4a 99       	R2 = B[P1] (X);
ffa0105e:	02 30       	R0 = R2;
ffa01060:	80 66       	R0 += -0x30;		/* (-48) */
ffa01062:	40 43       	R0 = R0.B (Z);
ffa01064:	30 0a       	CC = R0 <= R6 (IU);
ffa01066:	ea 1f       	IF CC JUMP 0xffa0103a <_atoi+0x1e> (BP);
ffa01068:	42 30       	R0 = P2;
ffa0106a:	f8 40       	R0 *= R7;
ffa0106c:	01 e8 00 00 	UNLINK;
ffa01070:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01072:	10 00       	RTS;
ffa01074:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01076:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01078:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0107a:	db 2f       	JUMP.S 0xffa01030 <_atoi+0x14>;

ffa0107c <_udelay>:
ffa0107c:	00 0d       	CC = R0 <= 0x0;
ffa0107e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01082:	0b 18       	IF CC JUMP 0xffa01098 <_udelay+0x1c>;
ffa01084:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01086:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0108a:	b2 e0 03 20 	LSETUP(0xffa0108e <_udelay+0x12>, 0xffa01090 <_udelay+0x14>) LC1 = P2;
ffa0108e:	00 00       	NOP;
ffa01090:	00 00       	NOP;
ffa01092:	09 64       	R1 += 0x1;		/* (  1) */
ffa01094:	08 08       	CC = R0 == R1;
ffa01096:	f8 17       	IF !CC JUMP 0xffa01086 <_udelay+0xa> (BP);
ffa01098:	01 e8 00 00 	UNLINK;
ffa0109c:	10 00       	RTS;
	...

ffa010a0 <_spi_delay>:
ffa010a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa010a4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa010a8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa010ac:	00 00       	NOP;
ffa010ae:	50 95       	R0 = W[P2] (X);
ffa010b0:	c0 42       	R0 = R0.L (Z);
ffa010b2:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa010b4:	fc 17       	IF !CC JUMP 0xffa010ac <_spi_delay+0xc> (BP);
ffa010b6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa010b8:	0a 10       	IF !CC JUMP 0xffa010cc <_spi_delay+0x2c>;
ffa010ba:	00 00       	NOP;
ffa010bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa010c0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa010c4:	00 00       	NOP;
ffa010c6:	50 95       	R0 = W[P2] (X);
ffa010c8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa010ca:	fd 1f       	IF CC JUMP 0xffa010c4 <_spi_delay+0x24> (BP);
ffa010cc:	01 e8 00 00 	UNLINK;
ffa010d0:	10 00       	RTS;
	...

ffa010d4 <_spi_write_register>:
ffa010d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa010d8:	ed 05       	[--SP] = (R7:5, P5:5);
ffa010da:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010de:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa010e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010e6:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa010ea:	15 97 00 00 
ffa010ee:	24 00       	SSYNC;
ffa010f0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa010f4:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa010f6:	40 43       	R0 = R0.B (Z);
ffa010f8:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa010fc:	28 97       	W[P5] = R0;
ffa010fe:	ff e3 d1 ff 	CALL 0xffa010a0 <_spi_delay>;
ffa01102:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01106:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0110a:	76 43       	R6 = R6.B (Z);
ffa0110c:	57 95       	R7 = W[P2] (X);
ffa0110e:	2e 97       	W[P5] = R6;
ffa01110:	ff e3 c8 ff 	CALL 0xffa010a0 <_spi_delay>;
ffa01114:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01118:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0111c:	15 97       	W[P2] = R5;
ffa0111e:	24 00       	SSYNC;
ffa01120:	7f 43       	R7 = R7.B (Z);
ffa01122:	01 e8 00 00 	UNLINK;
ffa01126:	07 30       	R0 = R7;
ffa01128:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0112a:	10 00       	RTS;

ffa0112c <_spi_read_register>:
ffa0112c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01130:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01132:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01136:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa0113a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0113e:	17 97       	W[P2] = R7;
ffa01140:	24 00       	SSYNC;
ffa01142:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa01146:	40 43       	R0 = R0.B (Z);
ffa01148:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0114c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01150:	20 97       	W[P4] = R0;
ffa01152:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa01156:	ff e3 a5 ff 	CALL 0xffa010a0 <_spi_delay>;
ffa0115a:	68 95       	R0 = W[P5] (X);
ffa0115c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0115e:	20 97       	W[P4] = R0;
ffa01160:	ff e3 a0 ff 	CALL 0xffa010a0 <_spi_delay>;
ffa01164:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01168:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0116c:	68 95       	R0 = W[P5] (X);
ffa0116e:	17 97       	W[P2] = R7;
ffa01170:	24 00       	SSYNC;
ffa01172:	01 e8 00 00 	UNLINK;
ffa01176:	40 43       	R0 = R0.B (Z);
ffa01178:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0117a:	10 00       	RTS;

ffa0117c <_spi_read_register_status>:
ffa0117c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01180:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01182:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01186:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa0118a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0118e:	19 32       	P3 = R1;
ffa01190:	16 97       	W[P2] = R6;
ffa01192:	24 00       	SSYNC;
ffa01194:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa01198:	40 43       	R0 = R0.B (Z);
ffa0119a:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0119e:	20 97       	W[P4] = R0;
ffa011a0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa011a4:	ff e3 7e ff 	CALL 0xffa010a0 <_spi_delay>;
ffa011a8:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa011ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011ae:	6f 95       	R7 = W[P5] (X);
ffa011b0:	20 97       	W[P4] = R0;
ffa011b2:	ff e3 77 ff 	CALL 0xffa010a0 <_spi_delay>;
ffa011b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011ba:	68 95       	R0 = W[P5] (X);
ffa011bc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011c0:	18 9b       	B[P3] = R0;
ffa011c2:	16 97       	W[P2] = R6;
ffa011c4:	24 00       	SSYNC;
ffa011c6:	7f 43       	R7 = R7.B (Z);
ffa011c8:	01 e8 00 00 	UNLINK;
ffa011cc:	07 30       	R0 = R7;
ffa011ce:	b3 05       	(R7:6, P5:3) = [SP++];
ffa011d0:	10 00       	RTS;
	...

ffa011d4 <_spi_write_byte>:
ffa011d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011d8:	78 05       	[--SP] = (R7:7);
ffa011da:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011de:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa011e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011e6:	17 97       	W[P2] = R7;
ffa011e8:	24 00       	SSYNC;
ffa011ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011ee:	40 43       	R0 = R0.B (Z);
ffa011f0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa011f4:	10 97       	W[P2] = R0;
ffa011f6:	ff e3 55 ff 	CALL 0xffa010a0 <_spi_delay>;
ffa011fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa011fe:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01202:	50 95       	R0 = W[P2] (X);
ffa01204:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01208:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0120c:	17 97       	W[P2] = R7;
ffa0120e:	24 00       	SSYNC;
ffa01210:	01 e8 00 00 	UNLINK;
ffa01214:	40 43       	R0 = R0.B (Z);
ffa01216:	38 05       	(R7:7) = [SP++];
ffa01218:	10 00       	RTS;
	...

ffa0121c <_spi_write_packet>:
ffa0121c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01220:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01222:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01226:	38 30       	R7 = R0;
ffa01228:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0122c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01230:	10 97       	W[P2] = R0;
ffa01232:	24 00       	SSYNC;
ffa01234:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01238:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0123c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01240:	10 97       	W[P2] = R0;
ffa01242:	ff e3 2f ff 	CALL 0xffa010a0 <_spi_delay>;
ffa01246:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0124a:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0124e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01252:	10 97       	W[P2] = R0;
ffa01254:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01258:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0125a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0125e:	10 97       	W[P2] = R0;
ffa01260:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01262:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01264:	10 97       	W[P2] = R0;
ffa01266:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01268:	17 93       	[P2] = R7;
ffa0126a:	24 00       	SSYNC;
ffa0126c:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01270:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01272:	10 97       	W[P2] = R0;
ffa01274:	01 20       	JUMP.S 0xffa01276 <_spi_write_packet+0x5a>;
	...
ffa0127e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa01282:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa01286:	68 95       	R0 = W[P5] (X);
ffa01288:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0128a:	f6 1f       	IF CC JUMP 0xffa01276 <_spi_write_packet+0x5a> (BP);
ffa0128c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01290:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01294:	50 95       	R0 = W[P2] (X);
ffa01296:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01298:	ef 17       	IF !CC JUMP 0xffa01276 <_spi_write_packet+0x5a> (BP);
ffa0129a:	69 95       	R1 = W[P5] (X);
ffa0129c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0129e:	08 54       	R0 = R0 & R1;
ffa012a0:	00 0c       	CC = R0 == 0x0;
ffa012a2:	ea 17       	IF !CC JUMP 0xffa01276 <_spi_write_packet+0x5a> (BP);
ffa012a4:	ff e3 fe fe 	CALL 0xffa010a0 <_spi_delay>;
ffa012a8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa012aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa012ae:	28 97       	W[P5] = R0;
ffa012b0:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa012b4:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa012b8:	10 97       	W[P2] = R0;
ffa012ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa012be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012c0:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa012c4:	10 97       	W[P2] = R0;
ffa012c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa012ca:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012ce:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012d2:	10 97       	W[P2] = R0;
ffa012d4:	24 00       	SSYNC;
ffa012d6:	01 e8 00 00 	UNLINK;
ffa012da:	bd 05       	(R7:7, P5:5) = [SP++];
ffa012dc:	10 00       	RTS;
	...

ffa012e0 <_spi_write_packet_noDMA>:
ffa012e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa012e4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa012e6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa012ea:	38 30       	R7 = R0;
ffa012ec:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012f4:	10 97       	W[P2] = R0;
ffa012f6:	24 00       	SSYNC;
ffa012f8:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa012fc:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01300:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01304:	28 97       	W[P5] = R0;
ffa01306:	27 32       	P4 = R7;
ffa01308:	ff e3 cc fe 	CALL 0xffa010a0 <_spi_delay>;
ffa0130c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0130e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01310:	60 98       	R0 = B[P4++] (X);
ffa01312:	28 97       	W[P5] = R0;
ffa01314:	ff e3 c6 fe 	CALL 0xffa010a0 <_spi_delay>;
ffa01318:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0131a:	07 08       	CC = R7 == R0;
ffa0131c:	f9 17       	IF !CC JUMP 0xffa0130e <_spi_write_packet_noDMA+0x2e> (BP);
ffa0131e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01322:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01326:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0132a:	10 97       	W[P2] = R0;
ffa0132c:	24 00       	SSYNC;
ffa0132e:	01 e8 00 00 	UNLINK;
ffa01332:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01334:	10 00       	RTS;
	...

ffa01338 <_spi_read_packet>:
ffa01338:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0133a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0133e:	20 32       	P4 = R0;
ffa01340:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01344:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01346:	ff e3 c7 fe 	CALL 0xffa010d4 <_spi_write_register>;
ffa0134a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0134e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01352:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01356:	10 97       	W[P2] = R0;
ffa01358:	24 00       	SSYNC;
ffa0135a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0135e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01362:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01366:	28 97       	W[P5] = R0;
ffa01368:	5d 32       	P3 = P5;
ffa0136a:	ff e3 9b fe 	CALL 0xffa010a0 <_spi_delay>;
ffa0136e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01370:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01372:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa01374:	1e 97       	W[P3] = R6;
ffa01376:	ff e3 95 fe 	CALL 0xffa010a0 <_spi_delay>;
ffa0137a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0137c:	68 95       	R0 = W[P5] (X);
ffa0137e:	20 9a       	B[P4++] = R0;
ffa01380:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01382:	78 43       	R0 = R7.B (Z);
ffa01384:	08 08       	CC = R0 == R1;
ffa01386:	f7 17       	IF !CC JUMP 0xffa01374 <_spi_read_packet+0x3c> (BP);
ffa01388:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0138c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01390:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01394:	10 97       	W[P2] = R0;
ffa01396:	24 00       	SSYNC;
ffa01398:	01 e8 00 00 	UNLINK;
ffa0139c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0139e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa013a0:	10 00       	RTS;
	...

ffa013a4 <_spi_read_packet_nocheck>:
ffa013a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa013a8:	78 05       	[--SP] = (R7:7);
ffa013aa:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa013ae:	38 30       	R7 = R0;
ffa013b0:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa013b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013b8:	10 97       	W[P2] = R0;
ffa013ba:	24 00       	SSYNC;
ffa013bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa013c0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa013c4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa013c8:	10 97       	W[P2] = R0;
ffa013ca:	ff e3 6b fe 	CALL 0xffa010a0 <_spi_delay>;
ffa013ce:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa013d2:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa013d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa013dc:	08 97       	W[P1] = R0;
ffa013de:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa013e2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa013e4:	10 97       	W[P2] = R0;
ffa013e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa013e8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013ea:	10 97       	W[P2] = R0;
ffa013ec:	82 6f       	P2 += -0x10;		/* (-16) */
ffa013ee:	17 93       	[P2] = R7;
ffa013f0:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa013f4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013f6:	10 97       	W[P2] = R0;
ffa013f8:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa013fc:	08 97       	W[P1] = R0;
	...
ffa01406:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa0140a:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa0140e:	48 95       	R0 = W[P1] (X);
ffa01410:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01412:	f6 1f       	IF CC JUMP 0xffa013fe <_spi_read_packet_nocheck+0x5a> (BP);
ffa01414:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01418:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0141a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0141e:	10 97       	W[P2] = R0;
ffa01420:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01422:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01426:	08 97       	W[P1] = R0;
ffa01428:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0142c:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01430:	10 97       	W[P2] = R0;
ffa01432:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01436:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0143a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0143e:	10 97       	W[P2] = R0;
ffa01440:	24 00       	SSYNC;
ffa01442:	01 e8 00 00 	UNLINK;
ffa01446:	38 05       	(R7:7) = [SP++];
ffa01448:	10 00       	RTS;
	...

ffa0144c <_radio_set_rx>:
ffa0144c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01450:	78 05       	[--SP] = (R7:7);
ffa01452:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01456:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa0145a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0145e:	17 97       	W[P2] = R7;
ffa01460:	24 00       	SSYNC;
ffa01462:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01464:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01466:	ff e3 37 fe 	CALL 0xffa010d4 <_spi_write_register>;
ffa0146a:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0146e:	ff e3 b3 fe 	CALL 0xffa011d4 <_spi_write_byte>;
ffa01472:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa01474:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01476:	ff e3 2f fe 	CALL 0xffa010d4 <_spi_write_register>;
ffa0147a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0147e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01480:	ff e3 2a fe 	CALL 0xffa010d4 <_spi_write_register>;
ffa01484:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01488:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0148a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0148e:	10 97       	W[P2] = R0;
ffa01490:	24 00       	SSYNC;
ffa01492:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01496:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0149a:	17 97       	W[P2] = R7;
ffa0149c:	24 00       	SSYNC;
ffa0149e:	01 e8 00 00 	UNLINK;
ffa014a2:	38 05       	(R7:7) = [SP++];
ffa014a4:	10 00       	RTS;
	...

ffa014a8 <_radio_set_tx>:
ffa014a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa014ac:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa014b0:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa014b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014b8:	10 97       	W[P2] = R0;
ffa014ba:	24 00       	SSYNC;
ffa014bc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014c0:	ff e3 0a fe 	CALL 0xffa010d4 <_spi_write_register>;
ffa014c4:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa014c8:	ff e3 86 fe 	CALL 0xffa011d4 <_spi_write_byte>;
ffa014cc:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa014d0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa014d2:	ff e3 01 fe 	CALL 0xffa010d4 <_spi_write_register>;
ffa014d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014d8:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa014da:	ff e3 fd fd 	CALL 0xffa010d4 <_spi_write_register>;
ffa014de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa014e2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa014e4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa014e8:	10 97       	W[P2] = R0;
ffa014ea:	01 e8 00 00 	UNLINK;
ffa014ee:	10 00       	RTS;

ffa014f0 <_radio_wait_irq>:
ffa014f0:	78 05       	[--SP] = (R7:7);
ffa014f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa014f6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014fa:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014fe:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa01502:	50 95 00 00 
ffa01506:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01508:	25 18       	IF CC JUMP 0xffa01552 <_radio_wait_irq+0x62>;
ffa0150a:	01 0d       	CC = R1 <= 0x0;
ffa0150c:	25 18       	IF CC JUMP 0xffa01556 <_radio_wait_irq+0x66>;
ffa0150e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01510:	04 20       	JUMP.S 0xffa01518 <_radio_wait_irq+0x28>;
ffa01512:	39 08       	CC = R1 == R7;
ffa01514:	10 18       	IF CC JUMP 0xffa01534 <_radio_wait_irq+0x44>;
	...
ffa0151e:	00 00       	NOP;
ffa01520:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01524:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa01528:	50 95       	R0 = W[P2] (X);
ffa0152a:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0152c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0152e:	f2 17       	IF !CC JUMP 0xffa01512 <_radio_wait_irq+0x22> (BP);
ffa01530:	39 09       	CC = R1 <= R7;
ffa01532:	06 10       	IF !CC JUMP 0xffa0153e <_radio_wait_irq+0x4e>;
ffa01534:	01 e8 00 00 	UNLINK;
ffa01538:	07 30       	R0 = R7;
ffa0153a:	38 05       	(R7:7) = [SP++];
ffa0153c:	10 00       	RTS;
ffa0153e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01540:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01544:	ff e3 c8 fd 	CALL 0xffa010d4 <_spi_write_register>;
ffa01548:	01 e8 00 00 	UNLINK;
ffa0154c:	07 30       	R0 = R7;
ffa0154e:	38 05       	(R7:7) = [SP++];
ffa01550:	10 00       	RTS;
ffa01552:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01554:	ee 2f       	JUMP.S 0xffa01530 <_radio_wait_irq+0x40>;
ffa01556:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01558:	ee 2f       	JUMP.S 0xffa01534 <_radio_wait_irq+0x44>;
	...

ffa0155c <_spi_write_register_ver>:
ffa0155c:	68 05       	[--SP] = (R7:5);
ffa0155e:	47 43       	R7 = R0.B (Z);
ffa01560:	4e 43       	R6 = R1.B (Z);
ffa01562:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01566:	0e 30       	R1 = R6;
ffa01568:	07 30       	R0 = R7;
ffa0156a:	ff e3 b5 fd 	CALL 0xffa010d4 <_spi_write_register>;
ffa0156e:	07 30       	R0 = R7;
ffa01570:	ff e3 de fd 	CALL 0xffa0112c <_spi_read_register>;
ffa01574:	45 43       	R5 = R0.B (Z);
ffa01576:	2e 08       	CC = R6 == R5;
ffa01578:	29 18       	IF CC JUMP 0xffa015ca <_spi_write_register_ver+0x6e>;
ffa0157a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa0157e:	0f 30       	R1 = R7;
ffa01580:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa01584:	ff e3 a8 fa 	CALL 0xffa00ad4 <_printf_int>;
ffa01588:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa0158c:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa01590:	ff e3 86 f9 	CALL 0xffa0089c <_uart_str>;
ffa01594:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa01598:	0e 30       	R1 = R6;
ffa0159a:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa0159e:	ff e3 e9 f9 	CALL 0xffa00970 <_printf_hex_byte>;
ffa015a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa015a6:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa015aa:	ff e3 79 f9 	CALL 0xffa0089c <_uart_str>;
ffa015ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa015b2:	00 e1 bc 00 	R0.L = 0xbc;		/* (188)	R0=0xff9000bc(-7339844) */
ffa015b6:	0d 30       	R1 = R5;
ffa015b8:	ff e3 dc f9 	CALL 0xffa00970 <_printf_hex_byte>;
ffa015bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000bc(-7339844) */
ffa015c0:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa015c4:	35 30       	R6 = R5;
ffa015c6:	ff e3 6b f9 	CALL 0xffa0089c <_uart_str>;
ffa015ca:	01 e8 00 00 	UNLINK;
ffa015ce:	06 30       	R0 = R6;
ffa015d0:	28 05       	(R7:5) = [SP++];
ffa015d2:	10 00       	RTS;

ffa015d4 <_radio_init>:
ffa015d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa015d8:	78 05       	[--SP] = (R7:7);
ffa015da:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa015dc:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa015e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015e4:	11 97       	W[P2] = R1;
ffa015e6:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa015ea:	62 6f       	P2 += -0x14;		/* (-20) */
ffa015ec:	11 97       	W[P2] = R1;
ffa015ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015f0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa015f2:	11 97       	W[P2] = R1;
ffa015f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa015f8:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa015fc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01600:	11 97       	W[P2] = R1;
ffa01602:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa01604:	51 95       	R1 = W[P2] (X);
ffa01606:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa01608:	11 97       	W[P2] = R1;
ffa0160a:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0160c:	51 95       	R1 = W[P2] (X);
ffa0160e:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa01610:	11 97       	W[P2] = R1;
ffa01612:	52 95       	R2 = W[P2] (X);
ffa01614:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa01618:	51 56       	R1 = R1 | R2;
ffa0161a:	11 97       	W[P2] = R1;
ffa0161c:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01620:	41 43       	R1 = R0.B (Z);
ffa01622:	11 0a       	CC = R1 <= R2 (IU);
ffa01624:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa01628:	01 06       	IF !CC R0 = R1;
ffa0162a:	47 43       	R7 = R0.B (Z);
ffa0162c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01630:	0f 30       	R1 = R7;
ffa01632:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa01636:	ff e3 4f fa 	CALL 0xffa00ad4 <_printf_int>;
ffa0163a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa0163e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01642:	ff e3 2d f9 	CALL 0xffa0089c <_uart_str>;
ffa01646:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01648:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0164a:	ff e3 45 fd 	CALL 0xffa010d4 <_spi_write_register>;
ffa0164e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01650:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01652:	ff e3 85 ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa01656:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01658:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0165a:	ff e3 81 ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa0165e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01660:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01662:	ff e3 7d ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa01666:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01668:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0166a:	ff e3 79 ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa0166e:	0f 30       	R1 = R7;
ffa01670:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01672:	ff e3 75 ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa01676:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa01678:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0167a:	ff e3 71 ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa0167e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01682:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01684:	ff e3 6c ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa01688:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0168a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0168c:	ff e3 68 ff 	CALL 0xffa0155c <_spi_write_register_ver>;
ffa01690:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01694:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01698:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0169a:	10 97       	W[P2] = R0;
ffa0169c:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa016a0:	ff e3 9a fd 	CALL 0xffa011d4 <_spi_write_byte>;
ffa016a4:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa016a8:	ff e3 96 fd 	CALL 0xffa011d4 <_spi_write_byte>;
ffa016ac:	01 e8 00 00 	UNLINK;
ffa016b0:	40 43       	R0 = R0.B (Z);
ffa016b2:	38 05       	(R7:7) = [SP++];
ffa016b4:	10 00       	RTS;
	...

ffa016b8 <_bfin_EMAC_send_check>:
ffa016b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa016bc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016c0:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa016c4:	50 95       	R0 = W[P2] (X);
ffa016c6:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa016c8:	00 02       	R0 = CC;
ffa016ca:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa016cc:	01 e8 00 00 	UNLINK;
ffa016d0:	10 00       	RTS;
	...

ffa016d4 <_FormatIPAddress>:
ffa016d4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016d8:	18 30       	R3 = R0;
ffa016da:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa016de:	40 4f       	R0 <<= 0x8;
ffa016e0:	52 43       	R2 = R2.B (Z);
ffa016e2:	10 56       	R0 = R0 | R2;
ffa016e4:	40 4f       	R0 <<= 0x8;
ffa016e6:	49 43       	R1 = R1.B (Z);
ffa016e8:	08 56       	R0 = R0 | R1;
ffa016ea:	40 4f       	R0 <<= 0x8;
ffa016ec:	5b 43       	R3 = R3.B (Z);
ffa016ee:	18 56       	R0 = R0 | R3;
ffa016f0:	01 e8 00 00 	UNLINK;
ffa016f4:	10 00       	RTS;
	...

ffa016f8 <_bfin_EMAC_halt>:
ffa016f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa016fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016fe:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01702:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01706:	10 93       	[P2] = R0;
ffa01708:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa0170c:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01710:	10 97       	W[P2] = R0;
ffa01712:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa01716:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0171a:	10 97       	W[P2] = R0;
ffa0171c:	01 e8 00 00 	UNLINK;
ffa01720:	10 00       	RTS;
	...

ffa01724 <_PollMdcDone>:
ffa01724:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01728:	02 20       	JUMP.S 0xffa0172c <_PollMdcDone+0x8>;
ffa0172a:	00 00       	NOP;
ffa0172c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01730:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01734:	10 91       	R0 = [P2];
ffa01736:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01738:	f9 17       	IF !CC JUMP 0xffa0172a <_PollMdcDone+0x6> (BP);
ffa0173a:	01 e8 00 00 	UNLINK;
ffa0173e:	10 00       	RTS;

ffa01740 <_WrPHYReg>:
ffa01740:	68 05       	[--SP] = (R7:5);
ffa01742:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01746:	28 30       	R5 = R0;
ffa01748:	31 30       	R6 = R1;
ffa0174a:	3a 30       	R7 = R2;
ffa0174c:	ff e3 ec ff 	CALL 0xffa01724 <_PollMdcDone>;
ffa01750:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01752:	b0 55       	R6 = R0 & R6;
ffa01754:	28 54       	R0 = R0 & R5;
ffa01756:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0175a:	58 4f       	R0 <<= 0xb;
ffa0175c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0175e:	ff 42       	R7 = R7.L (Z);
ffa01760:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01764:	36 4f       	R6 <<= 0x6;
ffa01766:	08 56       	R0 = R0 | R1;
ffa01768:	17 93       	[P2] = R7;
ffa0176a:	86 57       	R6 = R6 | R0;
ffa0176c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0176e:	16 93       	[P2] = R6;
ffa01770:	01 e8 00 00 	UNLINK;
ffa01774:	28 05       	(R7:5) = [SP++];
ffa01776:	10 00       	RTS;

ffa01778 <_RdPHYReg>:
ffa01778:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0177a:	29 32       	P5 = R1;
ffa0177c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01780:	38 30       	R7 = R0;
ffa01782:	ff e3 d1 ff 	CALL 0xffa01724 <_PollMdcDone>;
ffa01786:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0178a:	45 30       	R0 = P5;
ffa0178c:	c0 42       	R0 = R0.L (Z);
ffa0178e:	28 32       	P5 = R0;
ffa01790:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01792:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01796:	55 30       	R2 = P5;
ffa01798:	42 54       	R1 = R2 & R0;
ffa0179a:	38 54       	R0 = R0 & R7;
ffa0179c:	58 4f       	R0 <<= 0xb;
ffa0179e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa017a0:	31 4f       	R1 <<= 0x6;
ffa017a2:	41 56       	R1 = R1 | R0;
ffa017a4:	11 93       	[P2] = R1;
ffa017a6:	ff e3 bf ff 	CALL 0xffa01724 <_PollMdcDone>;
ffa017aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa017ae:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa017b2:	10 91       	R0 = [P2];
ffa017b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa017b8:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_PHYregs> */
ffa017bc:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa017be:	10 97       	W[P2] = R0;
ffa017c0:	01 e8 00 00 	UNLINK;
ffa017c4:	c0 42       	R0 = R0.L (Z);
ffa017c6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017c8:	10 00       	RTS;
	...

ffa017cc <_SoftResetPHY>:
ffa017cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017ce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017d0:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa017d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017d8:	ff e3 b4 ff 	CALL 0xffa01740 <_WrPHYReg>;
ffa017dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017de:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017e0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017e2:	ff e3 af ff 	CALL 0xffa01740 <_WrPHYReg>;
ffa017e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017e8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017ea:	ff e3 c7 ff 	CALL 0xffa01778 <_RdPHYReg>;
ffa017ee:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa017f0:	fb 1f       	IF CC JUMP 0xffa017e6 <_SoftResetPHY+0x1a> (BP);
ffa017f2:	01 e8 00 00 	UNLINK;
ffa017f6:	10 00       	RTS;

ffa017f8 <_NetCksum>:
ffa017f8:	01 0d       	CC = R1 <= 0x0;
ffa017fa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017fe:	10 18       	IF CC JUMP 0xffa0181e <_NetCksum+0x26>;
ffa01800:	10 32       	P2 = R0;
ffa01802:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01804:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01806:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01808:	10 94       	R0 = W[P2++] (Z);
ffa0180a:	0a 08       	CC = R2 == R1;
ffa0180c:	c3 50       	R3 = R3 + R0;
ffa0180e:	fc 17       	IF !CC JUMP 0xffa01806 <_NetCksum+0xe> (BP);
ffa01810:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01814:	03 50       	R0 = R3 + R0;
ffa01816:	c0 42       	R0 = R0.L (Z);
ffa01818:	01 e8 00 00 	UNLINK;
ffa0181c:	10 00       	RTS;
ffa0181e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01820:	01 e8 00 00 	UNLINK;
ffa01824:	10 00       	RTS;
	...

ffa01828 <_htons>:
ffa01828:	08 30       	R1 = R0;
ffa0182a:	c0 42       	R0 = R0.L (Z);
ffa0182c:	40 4e       	R0 >>= 0x8;
ffa0182e:	41 4f       	R1 <<= 0x8;
ffa01830:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01834:	08 56       	R0 = R0 | R1;
ffa01836:	c0 42       	R0 = R0.L (Z);
ffa01838:	01 e8 00 00 	UNLINK;
ffa0183c:	10 00       	RTS;
	...

ffa01840 <_htonl>:
ffa01840:	10 30       	R2 = R0;
ffa01842:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01846:	40 43       	R0 = R0.B (Z);
ffa01848:	49 43       	R1 = R1.B (Z);
ffa0184a:	40 4f       	R0 <<= 0x8;
ffa0184c:	08 56       	R0 = R0 | R1;
ffa0184e:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01852:	40 4f       	R0 <<= 0x8;
ffa01854:	49 43       	R1 = R1.B (Z);
ffa01856:	08 56       	R0 = R0 | R1;
ffa01858:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0185c:	40 4f       	R0 <<= 0x8;
ffa0185e:	c2 4e       	R2 >>= 0x18;
ffa01860:	10 56       	R0 = R0 | R2;
ffa01862:	01 e8 00 00 	UNLINK;
ffa01866:	10 00       	RTS;

ffa01868 <_pack4chars>:
ffa01868:	08 32       	P1 = R0;
ffa0186a:	10 32       	P2 = R0;
ffa0186c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01870:	01 e8 00 00 	UNLINK;
ffa01874:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01878:	10 98       	R0 = B[P2++] (Z);
ffa0187a:	41 4f       	R1 <<= 0x8;
ffa0187c:	08 50       	R0 = R0 + R1;
ffa0187e:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01882:	81 4f       	R1 <<= 0x10;
ffa01884:	08 50       	R0 = R0 + R1;
ffa01886:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0188a:	c1 4f       	R1 <<= 0x18;
ffa0188c:	08 50       	R0 = R0 + R1;
ffa0188e:	10 00       	RTS;

ffa01890 <_ip_header_setup>:
ffa01890:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01892:	28 32       	P5 = R0;
ffa01894:	21 32       	P4 = R1;
ffa01896:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0189a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0189e:	32 30       	R6 = R2;
ffa018a0:	28 9b       	B[P5] = R0;
ffa018a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018a4:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa018a8:	27 91       	R7 = [P4];
ffa018aa:	f8 42       	R0 = R7.L (Z);
ffa018ac:	ff e3 be ff 	CALL 0xffa01828 <_htons>;
ffa018b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be4 <_PHYregs> */
ffa018b4:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa018b8:	68 b4       	W[P5 + 0x2] = R0;
ffa018ba:	10 95       	R0 = W[P2] (Z);
ffa018bc:	08 30       	R1 = R0;
ffa018be:	09 64       	R1 += 0x1;		/* (  1) */
ffa018c0:	67 67       	R7 += -0x14;		/* (-20) */
ffa018c2:	11 97       	W[P2] = R1;
ffa018c4:	27 93       	[P4] = R7;
ffa018c6:	ff e3 b1 ff 	CALL 0xffa01828 <_htons>;
ffa018ca:	a8 b4       	W[P5 + 0x4] = R0;
ffa018cc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa018d0:	ff e3 ac ff 	CALL 0xffa01828 <_htons>;
ffa018d4:	e8 b4       	W[P5 + 0x6] = R0;
ffa018d6:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa018da:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa018de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa018e2:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa018e6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa018ea:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa018ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018f0:	68 b5       	W[P5 + 0xa] = R0;
ffa018f2:	10 91       	R0 = [P2];
ffa018f4:	e8 b0       	[P5 + 0xc] = R0;
ffa018f6:	2e b1       	[P5 + 0x10] = R6;
ffa018f8:	45 30       	R0 = P5;
ffa018fa:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa018fc:	ff e3 7e ff 	CALL 0xffa017f8 <_NetCksum>;
ffa01900:	c0 43       	R0 =~ R0;
ffa01902:	68 b5       	W[P5 + 0xa] = R0;
ffa01904:	01 e8 00 00 	UNLINK;
ffa01908:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0190a:	45 30       	R0 = P5;
ffa0190c:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0190e:	10 00       	RTS;

ffa01910 <_ip_header_checksum>:
ffa01910:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01914:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01916:	ff e3 71 ff 	CALL 0xffa017f8 <_NetCksum>;
ffa0191a:	08 02       	CC = R0;
ffa0191c:	00 02       	R0 = CC;
ffa0191e:	01 e8 00 00 	UNLINK;
ffa01922:	10 00       	RTS;

ffa01924 <_icmp_header_setup>:
ffa01924:	00 32       	P0 = R0;
ffa01926:	c5 04       	[--SP] = (P5:5);
ffa01928:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0192a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0192e:	29 32       	P5 = R1;
ffa01930:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01934:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01936:	40 b4       	W[P0 + 0x2] = R0;
ffa01938:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0193a:	80 b4       	W[P0 + 0x4] = R0;
ffa0193c:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa0193e:	02 9b       	B[P0] = R2;
ffa01940:	c0 b4       	W[P0 + 0x6] = R0;
ffa01942:	48 32       	P1 = P0;
ffa01944:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01946:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01948:	b2 e0 03 20 	LSETUP(0xffa0194c <_icmp_header_setup+0x28>, 0xffa0194e <_icmp_header_setup+0x2a>) LC1 = P2;
ffa0194c:	08 94       	R0 = W[P1++] (Z);
ffa0194e:	41 50       	R1 = R1 + R0;
ffa01950:	c8 42       	R0 = R1.L (Z);
ffa01952:	81 4e       	R1 >>= 0x10;
ffa01954:	08 50       	R0 = R0 + R1;
ffa01956:	c0 43       	R0 =~ R0;
ffa01958:	40 b4       	W[P0 + 0x2] = R0;
ffa0195a:	28 91       	R0 = [P5];
ffa0195c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0195e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01960:	01 e8 00 00 	UNLINK;
ffa01964:	28 93       	[P5] = R0;
ffa01966:	40 30       	R0 = P0;
ffa01968:	85 04       	(P5:5) = [SP++];
ffa0196a:	10 00       	RTS;

ffa0196c <_udp_header_setup>:
ffa0196c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0196e:	28 32       	P5 = R0;
ffa01970:	21 32       	P4 = R1;
ffa01972:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01976:	d0 42       	R0 = R2.L (Z);
ffa01978:	ff e3 58 ff 	CALL 0xffa01828 <_htons>;
ffa0197c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01980:	28 97       	W[P5] = R0;
ffa01982:	07 30       	R0 = R7;
ffa01984:	ff e3 52 ff 	CALL 0xffa01828 <_htons>;
ffa01988:	27 91       	R7 = [P4];
ffa0198a:	68 b4       	W[P5 + 0x2] = R0;
ffa0198c:	f8 42       	R0 = R7.L (Z);
ffa0198e:	ff e3 4d ff 	CALL 0xffa01828 <_htons>;
ffa01992:	a8 b4       	W[P5 + 0x4] = R0;
ffa01994:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01996:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01998:	e8 b4       	W[P5 + 0x6] = R0;
ffa0199a:	01 e8 00 00 	UNLINK;
ffa0199e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa019a0:	45 30       	R0 = P5;
ffa019a2:	27 93       	[P4] = R7;
ffa019a4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa019a6:	10 00       	RTS;

ffa019a8 <_tcp_header_setup>:
ffa019a8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa019aa:	28 32       	P5 = R0;
ffa019ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019b0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa019b4:	21 32       	P4 = R1;
ffa019b6:	3a 30       	R7 = R2;
ffa019b8:	ff e3 38 ff 	CALL 0xffa01828 <_htons>;
ffa019bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa019c0:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa019c4:	28 97       	W[P5] = R0;
ffa019c6:	50 95       	R0 = W[P2] (X);
ffa019c8:	68 b4       	W[P5 + 0x2] = R0;
ffa019ca:	38 a2       	R0 = [FP + 0x20];
ffa019cc:	ff e3 3a ff 	CALL 0xffa01840 <_htonl>;
ffa019d0:	68 b0       	[P5 + 0x4] = R0;
ffa019d2:	78 a2       	R0 = [FP + 0x24];
ffa019d4:	ff e3 36 ff 	CALL 0xffa01840 <_htonl>;
ffa019d8:	a8 b0       	[P5 + 0x8] = R0;
ffa019da:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa019de:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa019e2:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa019e6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa019ea:	ff e3 1f ff 	CALL 0xffa01828 <_htons>;
ffa019ee:	e8 b5       	W[P5 + 0xe] = R0;
ffa019f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019f2:	28 b6       	W[P5 + 0x10] = R0;
ffa019f4:	68 b6       	W[P5 + 0x12] = R0;
ffa019f6:	20 91       	R0 = [P4];
ffa019f8:	60 67       	R0 += -0x14;		/* (-20) */
ffa019fa:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa019fc:	01 e8 00 00 	UNLINK;
ffa01a00:	20 93       	[P4] = R0;
ffa01a02:	45 30       	R0 = P5;
ffa01a04:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01a06:	10 00       	RTS;

ffa01a08 <_DHCP_parse>:
ffa01a08:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01a0a:	09 0d       	CC = R1 <= 0x1;
ffa01a0c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a10:	10 32       	P2 = R0;
ffa01a12:	33 18       	IF CC JUMP 0xffa01a78 <_DHCP_parse+0x70>;
ffa01a14:	00 00       	NOP;
ffa01a16:	31 30       	R6 = R1;
ffa01a18:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a1a:	11 98       	R1 = B[P2++] (Z);
ffa01a1c:	01 0c       	CC = R1 == 0x0;
ffa01a1e:	2b 1c       	IF CC JUMP 0xffa01a74 <_DHCP_parse+0x6c> (BP);
ffa01a20:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01a24:	01 08       	CC = R1 == R0;
ffa01a26:	57 99       	R7 = B[P2] (X);
ffa01a28:	28 18       	IF CC JUMP 0xffa01a78 <_DHCP_parse+0x70>;
ffa01a2a:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01a2c:	6a 32       	P5 = P2;
ffa01a2e:	01 0a       	CC = R1 <= R0 (IU);
ffa01a30:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01a32:	09 14       	IF !CC JUMP 0xffa01a44 <_DHCP_parse+0x3c> (BP);
ffa01a34:	09 32       	P1 = R1;
ffa01a36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa01a3a:	0a e1 b0 03 	P2.L = 0x3b0;		/* (944)	P2=0xff9003b0 */
ffa01a3e:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01a40:	52 91       	P2 = [P2];
ffa01a42:	52 00       	JUMP (P2);
ffa01a44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01a48:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa01a4c:	ff e3 44 f8 	CALL 0xffa00ad4 <_printf_int>;
ffa01a50:	7f 43       	R7 = R7.B (Z);
ffa01a52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa01a56:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01a5a:	0f 30       	R1 = R7;
ffa01a5c:	ff e3 3c f8 	CALL 0xffa00ad4 <_printf_int>;
ffa01a60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa01a64:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01a68:	ff e3 74 f7 	CALL 0xffa00950 <_printf_str>;
ffa01a6c:	0f 32       	P1 = R7;
ffa01a6e:	be 53       	R6 = R6 - R7;
ffa01a70:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a72:	8d 5a       	P2 = P5 + P1;
ffa01a74:	0e 0d       	CC = R6 <= 0x1;
ffa01a76:	d1 17       	IF !CC JUMP 0xffa01a18 <_DHCP_parse+0x10> (BP);
ffa01a78:	01 e8 00 00 	UNLINK;
ffa01a7c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01a7e:	10 00       	RTS;
ffa01a80:	45 30       	R0 = P5;
ffa01a82:	ff e3 f3 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01a86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003b0 */
ffa01a8a:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa01a8e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a92:	10 93 00 00 
ffa01a96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01a9a:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01a9e:	ff e3 bd f8 	CALL 0xffa00c18 <_printf_ip>;
ffa01aa2:	7f 43       	R7 = R7.B (Z);
ffa01aa4:	de 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01aa6:	45 30       	R0 = P5;
ffa01aa8:	ff e3 e0 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01aac:	08 30       	R1 = R0;
ffa01aae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e0(-7339808) */
ffa01ab2:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01ab6:	ff e3 b1 f8 	CALL 0xffa00c18 <_printf_ip>;
ffa01aba:	7f 43       	R7 = R7.B (Z);
ffa01abc:	d2 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01abe:	45 30       	R0 = P5;
ffa01ac0:	ff e3 d4 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01ac4:	08 30       	R1 = R0;
ffa01ac6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa01aca:	00 e1 00 01 	R0.L = 0x100;		/* (256)	R0=0xff900100(-7339776) */
ffa01ace:	ff e3 a5 f8 	CALL 0xffa00c18 <_printf_ip>;
ffa01ad2:	7f 43       	R7 = R7.B (Z);
ffa01ad4:	c6 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01ad6:	45 30       	R0 = P5;
ffa01ad8:	ff e3 c8 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01adc:	08 30       	R1 = R0;
ffa01ade:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900100(-7339776) */
ffa01ae2:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa01ae6:	ff e3 99 f8 	CALL 0xffa00c18 <_printf_ip>;
ffa01aea:	7f 43       	R7 = R7.B (Z);
ffa01aec:	ba 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01aee:	45 30       	R0 = P5;
ffa01af0:	ff e3 bc fe 	CALL 0xffa01868 <_pack4chars>;
ffa01af4:	ff e3 a6 fe 	CALL 0xffa01840 <_htonl>;
ffa01af8:	08 30       	R1 = R0;
ffa01afa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900110(-7339760) */
ffa01afe:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01b02:	ff e3 e9 f7 	CALL 0xffa00ad4 <_printf_int>;
ffa01b06:	7f 43       	R7 = R7.B (Z);
ffa01b08:	ac 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01b0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900120(-7339744) */
ffa01b0e:	29 99       	R1 = B[P5] (Z);
ffa01b10:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa01b14:	ff e3 e0 f7 	CALL 0xffa00ad4 <_printf_int>;
ffa01b18:	7f 43       	R7 = R7.B (Z);
ffa01b1a:	a3 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01b1c:	45 30       	R0 = P5;
ffa01b1e:	ff e3 a5 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01b22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa01b26:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetDHCPserv> */
ffa01b2a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01b2e:	10 93 00 00 
ffa01b32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa01b36:	00 e1 48 01 	R0.L = 0x148;		/* (328)	R0=0xff900148(-7339704) */
ffa01b3a:	ff e3 6f f8 	CALL 0xffa00c18 <_printf_ip>;
ffa01b3e:	7f 43       	R7 = R7.B (Z);
ffa01b40:	90 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01b42:	45 30       	R0 = P5;
ffa01b44:	ff e3 92 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01b48:	ff e3 7c fe 	CALL 0xffa01840 <_htonl>;
ffa01b4c:	08 30       	R1 = R0;
ffa01b4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900148(-7339704) */
ffa01b52:	00 e1 5c 01 	R0.L = 0x15c;		/* (348)	R0=0xff90015c(-7339684) */
ffa01b56:	ff e3 bf f7 	CALL 0xffa00ad4 <_printf_int>;
ffa01b5a:	7f 43       	R7 = R7.B (Z);
ffa01b5c:	82 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
ffa01b5e:	45 30       	R0 = P5;
ffa01b60:	ff e3 84 fe 	CALL 0xffa01868 <_pack4chars>;
ffa01b64:	ff e3 6e fe 	CALL 0xffa01840 <_htonl>;
ffa01b68:	08 30       	R1 = R0;
ffa01b6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90015c(-7339684) */
ffa01b6e:	00 e1 70 01 	R0.L = 0x170;		/* (368)	R0=0xff900170(-7339664) */
ffa01b72:	ff e3 b1 f7 	CALL 0xffa00ad4 <_printf_int>;
ffa01b76:	7f 43       	R7 = R7.B (Z);
ffa01b78:	74 2f       	JUMP.S 0xffa01a60 <_DHCP_parse+0x58>;
	...

ffa01b7c <_bfin_EMAC_send_nocopy>:
ffa01b7c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa01b80:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b82:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01b86:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b8a:	10 97       	W[P2] = R0;
ffa01b8c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01b90:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b94:	50 95       	R0 = W[P2] (X);
ffa01b96:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b98:	59 10       	IF !CC JUMP 0xffa01c4a <_bfin_EMAC_send_nocopy+0xce>;
ffa01b9a:	00 00       	NOP;
ffa01b9c:	00 00       	NOP;
ffa01b9e:	00 00       	NOP;
ffa01ba0:	50 95       	R0 = W[P2] (X);
ffa01ba2:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ba4:	16 18       	IF CC JUMP 0xffa01bd0 <_bfin_EMAC_send_nocopy+0x54>;
ffa01ba6:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa01baa:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01bae:	b2 e0 09 10 	LSETUP(0xffa01bb2 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01bc0 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01bb2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bb6:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01bba:	50 95       	R0 = W[P2] (X);
ffa01bbc:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01bbe:	09 18       	IF CC JUMP 0xffa01bd0 <_bfin_EMAC_send_nocopy+0x54>;
ffa01bc0:	00 00       	NOP;
ffa01bc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01bc6:	00 e1 bc 01 	R0.L = 0x1bc;		/* (444)	R0=0xff9001bc(-7339588) */
ffa01bca:	ff e3 c3 f6 	CALL 0xffa00950 <_printf_str>;
ffa01bce:	30 20       	JUMP.S 0xffa01c2e <_bfin_EMAC_send_nocopy+0xb2>;
ffa01bd0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01bd4:	08 e1 2c 0c 	P0.L = 0xc2c;		/* (3116)	P0=0xff900c2c <_txIdx> */
ffa01bd8:	00 95       	R0 = W[P0] (Z);
ffa01bda:	10 32       	P2 = R0;
ffa01bdc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01be0:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01be4:	42 95       	R2 = W[P0] (X);
ffa01be6:	d1 42       	R1 = R2.L (Z);
ffa01be8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01bea:	52 91       	P2 = [P2];
ffa01bec:	11 0d       	CC = R1 <= 0x2;
ffa01bee:	90 a1       	R0 = [P2 + 0x18];
ffa01bf0:	50 b0       	[P2 + 0x4] = R0;
ffa01bf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bf4:	90 b2       	[P2 + 0x28] = R0;
ffa01bf6:	11 32       	P2 = R1;
ffa01bf8:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01bfa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bfe:	08 91       	R0 = [P1];
ffa01c00:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01c04:	10 93       	[P2] = R0;
ffa01c06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01c0a:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01c0e:	50 95       	R0 = W[P2] (X);
ffa01c10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01c14:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01c18:	10 97       	W[P2] = R0;
ffa01c1a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01c1e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01c22:	10 91       	R0 = [P2];
ffa01c24:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01c26:	10 93       	[P2] = R0;
ffa01c28:	0d 1c       	IF CC JUMP 0xffa01c42 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01c2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c2c:	00 97       	W[P0] = R0;
ffa01c2e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01c32:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c34:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01c38:	10 97       	W[P2] = R0;
ffa01c3a:	01 e8 00 00 	UNLINK;
ffa01c3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c40:	10 00       	RTS;
ffa01c42:	02 30       	R0 = R2;
ffa01c44:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c46:	00 97       	W[P0] = R0;
ffa01c48:	f3 2f       	JUMP.S 0xffa01c2e <_bfin_EMAC_send_nocopy+0xb2>;
ffa01c4a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c4e:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01c52:	ff e3 7f f6 	CALL 0xffa00950 <_printf_str>;
ffa01c56:	ec 2f       	JUMP.S 0xffa01c2e <_bfin_EMAC_send_nocopy+0xb2>;

ffa01c58 <_DHCP_tx>:
ffa01c58:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01c5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01c5e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01c62:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01c66:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01c6a:	10 95 00 00 
ffa01c6e:	10 32       	P2 = R0;
ffa01c70:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa01c74:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01c78:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01c7c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c7e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c80:	52 91       	P2 = [P2];
ffa01c82:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01c86:	f1 bb 00 00 
ffa01c8a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa01c8e:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa01c92:	94 ad       	P4 = [P2 + 0x18];
ffa01c94:	1a 32       	P3 = R2;
ffa01c96:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01c98:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01c9a:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01c9e:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01ca2:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01ca6:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01caa:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01cae:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01cb2:	20 97       	W[P4] = R0;
ffa01cb4:	68 99       	R0 = B[P5] (X);
ffa01cb6:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01cba:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01cbe:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01cc2:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01cc6:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01cca:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01cce:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01cd2:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01cd6:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01cda:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01cde:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01ce2:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01ce6:	ff e3 a1 fd 	CALL 0xffa01828 <_htons>;
ffa01cea:	e0 b5       	W[P4 + 0xe] = R0;
ffa01cec:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01cf0:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01cf4:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01cf8:	04 50       	R0 = R4 + R0;
ffa01cfa:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01cfe:	c0 42       	R0 = R0.L (Z);
ffa01d00:	ff e3 94 fd 	CALL 0xffa01828 <_htons>;
ffa01d04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01d08:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01d0c:	60 b6       	W[P4 + 0x12] = R0;
ffa01d0e:	10 95       	R0 = W[P2] (Z);
ffa01d10:	08 30       	R1 = R0;
ffa01d12:	09 64       	R1 += 0x1;		/* (  1) */
ffa01d14:	11 97       	W[P2] = R1;
ffa01d16:	ff e3 89 fd 	CALL 0xffa01828 <_htons>;
ffa01d1a:	a0 b6       	W[P4 + 0x14] = R0;
ffa01d1c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01d20:	ff e3 84 fd 	CALL 0xffa01828 <_htons>;
ffa01d24:	e0 b6       	W[P4 + 0x16] = R0;
ffa01d26:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01d28:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01d2c:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01d30:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01d34:	66 b7 00 00 
ffa01d38:	44 30       	R0 = P4;
ffa01d3a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01d3c:	e7 b1       	[P4 + 0x1c] = R7;
ffa01d3e:	23 be       	[P4 + 0x20] = P3;
ffa01d40:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01d42:	ff e3 5b fd 	CALL 0xffa017f8 <_NetCksum>;
ffa01d46:	c0 43       	R0 =~ R0;
ffa01d48:	60 b7       	W[P4 + 0x1a] = R0;
ffa01d4a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01d4e:	ff e3 6d fd 	CALL 0xffa01828 <_htons>;
ffa01d52:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01d56:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01d5a:	ff e3 67 fd 	CALL 0xffa01828 <_htons>;
ffa01d5e:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01d62:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01d66:	04 50       	R0 = R4 + R0;
ffa01d68:	c0 42       	R0 = R0.L (Z);
ffa01d6a:	ff e3 5f fd 	CALL 0xffa01828 <_htons>;
ffa01d6e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01d72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01d74:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01d78:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01d7c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2e(-4191186) */
ffa01d80:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01d82:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01d86:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01d8a:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01d8e:	10 91       	R0 = [P2];
ffa01d90:	20 b3       	[P4 + 0x30] = R0;
ffa01d92:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01d96:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01d9a:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01d9e:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01da2:	a7 b3       	[P4 + 0x38] = R7;
ffa01da4:	e7 b3       	[P4 + 0x3c] = R7;
ffa01da6:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01daa:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01dae:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01db2:	ff e3 47 fd 	CALL 0xffa01840 <_htonl>;
ffa01db6:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01dba:	68 99       	R0 = B[P5] (X);
ffa01dbc:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01dc0:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01dc4:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01dc8:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01dcc:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01dd0:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01dd4:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01dd8:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01ddc:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01de0:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01de4:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01de8:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01dec:	54 5a       	P1 = P4 + P2;
ffa01dee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01df0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01df2:	b2 e0 02 20 	LSETUP(0xffa01df6 <_DHCP_tx+0x19e>, 0xffa01df6 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01df6:	08 9a       	B[P1++] = R0;
ffa01df8:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01dfc:	54 5a       	P1 = P4 + P2;
ffa01dfe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e00:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01e02:	b2 e0 02 20 	LSETUP(0xffa01e06 <_DHCP_tx+0x1ae>, 0xffa01e06 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01e06:	08 92       	[P1++] = R0;
ffa01e08:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01e0c:	54 5a       	P1 = P4 + P2;
ffa01e0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e10:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01e12:	b2 e0 02 20 	LSETUP(0xffa01e16 <_DHCP_tx+0x1be>, 0xffa01e16 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01e16:	08 92       	[P1++] = R0;
ffa01e18:	44 30       	R0 = P4;
ffa01e1a:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01e1e:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01e22:	f0 b9 00 00 
ffa01e26:	14 30       	R2 = R4;
ffa01e28:	ff e3 3c f7 	CALL 0xffa00ca0 <_memcpy_>;
ffa01e2c:	01 e8 00 00 	UNLINK;
ffa01e30:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01e32:	ff e2 a5 fe 	JUMP.L 0xffa01b7c <_bfin_EMAC_send_nocopy>;
	...

ffa01e38 <_bfin_EMAC_send>:
ffa01e38:	c4 04       	[--SP] = (P5:4);
ffa01e3a:	01 0d       	CC = R1 <= 0x0;
ffa01e3c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e40:	18 30       	R3 = R0;
ffa01e42:	11 30       	R2 = R1;
ffa01e44:	90 18       	IF CC JUMP 0xffa01f64 <_bfin_EMAC_send+0x12c>;
ffa01e46:	00 00       	NOP;
ffa01e48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01e4c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e50:	50 95       	R0 = W[P2] (X);
ffa01e52:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e54:	74 10       	IF !CC JUMP 0xffa01f3c <_bfin_EMAC_send+0x104>;
ffa01e56:	00 00       	NOP;
ffa01e58:	00 00       	NOP;
ffa01e5a:	00 00       	NOP;
ffa01e5c:	50 95       	R0 = W[P2] (X);
ffa01e5e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e60:	17 18       	IF CC JUMP 0xffa01e8e <_bfin_EMAC_send+0x56>;
ffa01e62:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c30 */
ffa01e66:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e6a:	b2 e0 09 10 	LSETUP(0xffa01e6e <_bfin_EMAC_send+0x36>, 0xffa01e7c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01e6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e72:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e76:	50 95       	R0 = W[P2] (X);
ffa01e78:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e7a:	0a 18       	IF CC JUMP 0xffa01e8e <_bfin_EMAC_send+0x56>;
ffa01e7c:	00 00       	NOP;
ffa01e7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e82:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01e86:	ff e3 65 f5 	CALL 0xffa00950 <_printf_str>;
ffa01e8a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e8c:	53 20       	JUMP.S 0xffa01f32 <_bfin_EMAC_send+0xfa>;
ffa01e8e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01e92:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_txIdx> */
ffa01e96:	20 95       	R0 = W[P4] (Z);
ffa01e98:	10 32       	P2 = R0;
ffa01e9a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa01e9e:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_txbuf> */
ffa01ea2:	0b 30       	R1 = R3;
ffa01ea4:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01ea6:	52 91       	P2 = [P2];
ffa01ea8:	92 ad       	P2 = [P2 + 0x18];
ffa01eaa:	12 96       	W[P2++] = R2;
ffa01eac:	42 30       	R0 = P2;
ffa01eae:	ff e3 f9 f6 	CALL 0xffa00ca0 <_memcpy_>;
ffa01eb2:	20 95       	R0 = W[P4] (Z);
ffa01eb4:	10 32       	P2 = R0;
ffa01eb6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01eb8:	51 91       	P1 = [P2];
ffa01eba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01ebe:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01ec2:	51 93       	[P2] = P1;
ffa01ec4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01ec8:	88 a1       	R0 = [P1 + 0x18];
ffa01eca:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01ece:	48 b0       	[P1 + 0x4] = R0;
ffa01ed0:	50 95       	R0 = W[P2] (X);
ffa01ed2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01ed6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01eda:	10 97       	W[P2] = R0;
ffa01edc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01ee0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01ee4:	10 91       	R0 = [P2];
ffa01ee6:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01ee8:	10 93       	[P2] = R0;
ffa01eea:	88 a2       	R0 = [P1 + 0x28];
ffa01eec:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01eee:	13 10       	IF !CC JUMP 0xffa01f14 <_bfin_EMAC_send+0xdc>;
ffa01ef0:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01ef4:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01ef8:	b2 e0 05 20 	LSETUP(0xffa01efc <_bfin_EMAC_send+0xc4>, 0xffa01f02 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01efc:	88 a2       	R0 = [P1 + 0x28];
ffa01efe:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01f00:	0a 10       	IF !CC JUMP 0xffa01f14 <_bfin_EMAC_send+0xdc>;
ffa01f02:	00 00       	NOP;
ffa01f04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa01f08:	00 e1 08 02 	R0.L = 0x208;		/* (520)	R0=0xff900208(-7339512) */
ffa01f0c:	ff e3 22 f5 	CALL 0xffa00950 <_printf_str>;
ffa01f10:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f12:	10 20       	JUMP.S 0xffa01f32 <_bfin_EMAC_send+0xfa>;
ffa01f14:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01f18:	61 95 00 00 
ffa01f1c:	8a a2       	R2 = [P1 + 0x28];
ffa01f1e:	88 b2       	[P1 + 0x28] = R0;
ffa01f20:	c8 42       	R0 = R1.L (Z);
ffa01f22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01f26:	10 0d       	CC = R0 <= 0x2;
ffa01f28:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f2c:	14 1c       	IF CC JUMP 0xffa01f54 <_bfin_EMAC_send+0x11c> (BP);
ffa01f2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f30:	10 97       	W[P2] = R0;
ffa01f32:	01 e8 00 00 	UNLINK;
ffa01f36:	02 30       	R0 = R2;
ffa01f38:	84 04       	(P5:4) = [SP++];
ffa01f3a:	10 00       	RTS;
ffa01f3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01f40:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01f44:	ff e3 06 f5 	CALL 0xffa00950 <_printf_str>;
ffa01f48:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f4a:	01 e8 00 00 	UNLINK;
ffa01f4e:	02 30       	R0 = R2;
ffa01f50:	84 04       	(P5:4) = [SP++];
ffa01f52:	10 00       	RTS;
ffa01f54:	01 30       	R0 = R1;
ffa01f56:	08 64       	R0 += 0x1;		/* (  1) */
ffa01f58:	10 97       	W[P2] = R0;
ffa01f5a:	01 e8 00 00 	UNLINK;
ffa01f5e:	02 30       	R0 = R2;
ffa01f60:	84 04       	(P5:4) = [SP++];
ffa01f62:	10 00       	RTS;
ffa01f64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001a4(-7339612) */
ffa01f68:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa01f6c:	ff e3 b4 f5 	CALL 0xffa00ad4 <_printf_int>;
ffa01f70:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f72:	01 e8 00 00 	UNLINK;
ffa01f76:	02 30       	R0 = R2;
ffa01f78:	84 04       	(P5:4) = [SP++];
ffa01f7a:	10 00       	RTS;

ffa01f7c <_ether_testUDP>:
ffa01f7c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01f7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f82:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f86:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f8a:	11 95       	R1 = W[P2] (Z);
ffa01f8c:	11 32       	P2 = R1;
ffa01f8e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01f92:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01f96:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01f9a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f9c:	52 91       	P2 = [P2];
ffa01f9e:	95 ad       	P5 = [P2 + 0x18];
ffa01fa0:	55 32       	P2 = P5;
ffa01fa2:	11 96       	W[P2++] = R1;
ffa01fa4:	4a 30       	R1 = P2;
ffa01fa6:	00 e3 4d 08 	CALL 0xffa03040 <_ARP_req>;
ffa01faa:	00 0c       	CC = R0 == 0x0;
ffa01fac:	7f 18       	IF CC JUMP 0xffa020aa <_ether_testUDP+0x12e>;
ffa01fae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01fb2:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01fb6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01fb8:	50 99       	R0 = B[P2] (X);
ffa01fba:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01fbe:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01fc2:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01fc6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01fca:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01fce:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01fd2:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01fd6:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01fda:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01fde:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01fe2:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01fe6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01fea:	ff e3 1f fc 	CALL 0xffa01828 <_htons>;
ffa01fee:	e8 b5       	W[P5 + 0xe] = R0;
ffa01ff0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01ff4:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01ff8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ffa:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01ffe:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa02000:	ff e3 14 fc 	CALL 0xffa01828 <_htons>;
ffa02004:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02008:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa0200c:	68 b6       	W[P5 + 0x12] = R0;
ffa0200e:	10 95       	R0 = W[P2] (Z);
ffa02010:	08 30       	R1 = R0;
ffa02012:	09 64       	R1 += 0x1;		/* (  1) */
ffa02014:	11 97       	W[P2] = R1;
ffa02016:	ff e3 09 fc 	CALL 0xffa01828 <_htons>;
ffa0201a:	a8 b6       	W[P5 + 0x14] = R0;
ffa0201c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02020:	ff e3 04 fc 	CALL 0xffa01828 <_htons>;
ffa02024:	e8 b6       	W[P5 + 0x16] = R0;
ffa02026:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02028:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa0202c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa02030:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02032:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02036:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa0203a:	10 91       	R0 = [P2];
ffa0203c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02040:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02044:	e8 b1       	[P5 + 0x1c] = R0;
ffa02046:	10 91       	R0 = [P2];
ffa02048:	28 b2       	[P5 + 0x20] = R0;
ffa0204a:	45 30       	R0 = P5;
ffa0204c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0204e:	6f b7       	W[P5 + 0x1a] = R7;
ffa02050:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02052:	ff e3 d3 fb 	CALL 0xffa017f8 <_NetCksum>;
ffa02056:	c0 43       	R0 =~ R0;
ffa02058:	68 b7       	W[P5 + 0x1a] = R0;
ffa0205a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0205e:	ff e3 e5 fb 	CALL 0xffa01828 <_htons>;
ffa02062:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02066:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0206a:	ff e3 df fb 	CALL 0xffa01828 <_htons>;
ffa0206e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02072:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02074:	ff e3 da fb 	CALL 0xffa01828 <_htons>;
ffa02078:	55 32       	P2 = P5;
ffa0207a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0207e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02082:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02084:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02086:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02088:	b2 e0 03 10 	LSETUP(0xffa0208c <_ether_testUDP+0x110>, 0xffa0208e <_ether_testUDP+0x112>) LC1 = P1;
ffa0208c:	11 9a       	B[P2++] = R1;
ffa0208e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02090:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02094:	00 e1 1c 02 	R0.L = 0x21c;		/* (540)	R0=0xff90021c(-7339492) */
ffa02098:	ff e3 5c f4 	CALL 0xffa00950 <_printf_str>;
ffa0209c:	ff e3 70 fd 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa020a0:	01 e8 00 00 	UNLINK;
ffa020a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020a6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020a8:	10 00       	RTS;
ffa020aa:	01 e8 00 00 	UNLINK;
ffa020ae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020b0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020b2:	10 00       	RTS;

ffa020b4 <_eth_header_setup>:
ffa020b4:	c4 04       	[--SP] = (P5:4);
ffa020b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa020ba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa020be:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa020c2:	00 32       	P0 = R0;
ffa020c4:	10 95       	R0 = W[P2] (Z);
ffa020c6:	10 32       	P2 = R0;
ffa020c8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa020cc:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa020d0:	00 91       	R0 = [P0];
ffa020d2:	21 32       	P4 = R1;
ffa020d4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa020d6:	52 91       	P2 = [P2];
ffa020d8:	08 30       	R1 = R0;
ffa020da:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa020dc:	80 67       	R0 += -0x10;		/* (-16) */
ffa020de:	95 ad       	P5 = [P2 + 0x18];
ffa020e0:	00 93       	[P0] = R0;
ffa020e2:	02 30       	R0 = R2;
ffa020e4:	55 32       	P2 = P5;
ffa020e6:	11 96       	W[P2++] = R1;
ffa020e8:	4a 30       	R1 = P2;
ffa020ea:	00 e3 ab 07 	CALL 0xffa03040 <_ARP_req>;
ffa020ee:	00 0c       	CC = R0 == 0x0;
ffa020f0:	2b 18       	IF CC JUMP 0xffa02146 <_eth_header_setup+0x92>;
ffa020f2:	00 00       	NOP;
ffa020f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa020f8:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa020fc:	50 99       	R0 = B[P2] (X);
ffa020fe:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02102:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02106:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0210a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0210e:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02112:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02116:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0211a:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0211e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02122:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02126:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0212a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0212e:	ff e3 7d fb 	CALL 0xffa01828 <_htons>;
ffa02132:	e8 b5       	W[P5 + 0xe] = R0;
ffa02134:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02136:	20 9b       	B[P4] = R0;
ffa02138:	4d 30       	R1 = P5;
ffa0213a:	81 64       	R1 += 0x10;		/* ( 16) */
ffa0213c:	01 e8 00 00 	UNLINK;
ffa02140:	01 30       	R0 = R1;
ffa02142:	84 04       	(P5:4) = [SP++];
ffa02144:	10 00       	RTS;
ffa02146:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02148:	20 9b       	B[P4] = R0;
ffa0214a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0214c:	01 e8 00 00 	UNLINK;
ffa02150:	01 30       	R0 = R1;
ffa02152:	84 04       	(P5:4) = [SP++];
ffa02154:	10 00       	RTS;
	...

ffa02158 <_icmp_packet_setup>:
ffa02158:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0215a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0215e:	29 32       	P5 = R1;
ffa02160:	7f 30       	R7 = FP;
ffa02162:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02164:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02166:	f0 bb       	[FP -0x4] = R0;
ffa02168:	07 30       	R0 = R7;
ffa0216a:	22 32       	P4 = R2;
ffa0216c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02170:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02174:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02178:	ff e3 9e ff 	CALL 0xffa020b4 <_eth_header_setup>;
ffa0217c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02180:	68 99 00 00 
ffa02184:	80 0c       	CC = R0 < 0x0;
ffa02186:	14 18       	IF CC JUMP 0xffa021ae <_icmp_packet_setup+0x56>;
ffa02188:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0218a:	f0 b0       	[SP + 0xc] = R0;
ffa0218c:	54 30       	R2 = P4;
ffa0218e:	01 30       	R0 = R1;
ffa02190:	0f 30       	R1 = R7;
ffa02192:	ff e3 7f fb 	CALL 0xffa01890 <_ip_header_setup>;
ffa02196:	e9 42       	R1 = R5.L (Z);
ffa02198:	f1 b0       	[SP + 0xc] = R1;
ffa0219a:	e1 42       	R1 = R4.L (Z);
ffa0219c:	31 b1       	[SP + 0x10] = R1;
ffa0219e:	72 43       	R2 = R6.B (Z);
ffa021a0:	0f 30       	R1 = R7;
ffa021a2:	ff e3 c1 fb 	CALL 0xffa01924 <_icmp_header_setup>;
ffa021a6:	01 e8 00 00 	UNLINK;
ffa021aa:	a4 05       	(R7:4, P5:4) = [SP++];
ffa021ac:	10 00       	RTS;
ffa021ae:	01 e8 00 00 	UNLINK;
ffa021b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021b4:	a4 05       	(R7:4, P5:4) = [SP++];
ffa021b6:	10 00       	RTS;

ffa021b8 <_icmp_rx>:
ffa021b8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa021ba:	28 32       	P5 = R0;
ffa021bc:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa021c0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa021c4:	39 30       	R7 = R1;
ffa021c6:	ff e3 31 fb 	CALL 0xffa01828 <_htons>;
ffa021ca:	c0 42       	R0 = R0.L (Z);
ffa021cc:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa021ce:	01 08       	CC = R1 == R0;
ffa021d0:	06 18       	IF CC JUMP 0xffa021dc <_icmp_rx+0x24>;
ffa021d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021d4:	01 e8 00 00 	UNLINK;
ffa021d8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa021da:	10 00       	RTS;
ffa021dc:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa021de:	07 0a       	CC = R7 <= R0 (IU);
ffa021e0:	f9 1b       	IF CC JUMP 0xffa021d2 <_icmp_rx+0x1a>;
ffa021e2:	00 00       	NOP;
ffa021e4:	00 00       	NOP;
ffa021e6:	00 00       	NOP;
ffa021e8:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa021ec:	08 0c       	CC = R0 == 0x1;
ffa021ee:	f2 17       	IF !CC JUMP 0xffa021d2 <_icmp_rx+0x1a> (BP);
ffa021f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa021f4:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa021f8:	28 a2       	R0 = [P5 + 0x20];
ffa021fa:	11 91       	R1 = [P2];
ffa021fc:	08 08       	CC = R0 == R1;
ffa021fe:	ea 17       	IF !CC JUMP 0xffa021d2 <_icmp_rx+0x1a> (BP);
ffa02200:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02204:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa02208:	08 08       	CC = R0 == R1;
ffa0220a:	3e 18       	IF CC JUMP 0xffa02286 <_icmp_rx+0xce>;
ffa0220c:	00 00       	NOP;
ffa0220e:	00 00       	NOP;
ffa02210:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02212:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa02216:	08 08       	CC = R0 == R1;
ffa02218:	dd 17       	IF !CC JUMP 0xffa021d2 <_icmp_rx+0x1a> (BP);
ffa0221a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa0221e:	e9 a1       	R1 = [P5 + 0x1c];
ffa02220:	00 e1 34 02 	R0.L = 0x234;		/* (564)	R0=0xff900234(-7339468) */
ffa02224:	ff e3 fa f4 	CALL 0xffa00c18 <_printf_ip>;
ffa02228:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa0222c:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02230:	e8 a1       	R0 = [P5 + 0x1c];
ffa02232:	4d 30       	R1 = P5;
ffa02234:	10 93       	[P2] = R0;
ffa02236:	41 64       	R1 += 0x8;		/* (  8) */
ffa02238:	00 e3 06 05 	CALL 0xffa02c44 <_ARP_lut_add>;
ffa0223c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900234(-7339468) */
ffa02240:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02244:	ff e3 86 f3 	CALL 0xffa00950 <_printf_str>;
ffa02248:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa0224c:	ea a1 00 00 
ffa02250:	f0 b0       	[SP + 0xc] = R0;
ffa02252:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa02256:	30 b1       	[SP + 0x10] = R0;
ffa02258:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0225a:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa0225e:	4f 30       	R1 = FP;
ffa02260:	70 b1       	[SP + 0x14] = R0;
ffa02262:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02264:	07 30       	R0 = R7;
ffa02266:	ff e3 79 ff 	CALL 0xffa02158 <_icmp_packet_setup>;
ffa0226a:	08 30       	R1 = R0;
ffa0226c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02270:	00 0d       	CC = R0 <= 0x0;
ffa02272:	b0 1b       	IF CC JUMP 0xffa021d2 <_icmp_rx+0x1a>;
ffa02274:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02276:	45 30       	R0 = P5;
ffa02278:	17 30       	R2 = R7;
ffa0227a:	ff e3 13 f5 	CALL 0xffa00ca0 <_memcpy_>;
ffa0227e:	ff e3 7f fc 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa02282:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02284:	a8 2f       	JUMP.S 0xffa021d4 <_icmp_rx+0x1c>;
ffa02286:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0228a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0228c:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa02290:	10 9b       	B[P2] = R0;
ffa02292:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02294:	a0 2f       	JUMP.S 0xffa021d4 <_icmp_rx+0x1c>;
	...

ffa02298 <_udp_packet_setup>:
ffa02298:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0229a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0229e:	29 32       	P5 = R1;
ffa022a0:	7f 30       	R7 = FP;
ffa022a2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c2c <_txIdx> */
ffa022a6:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa022a8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa022aa:	0c e1 64 0c 	P4.L = 0xc64;		/* (3172)	P4=0xff900c64 <_NetDataDestIP> */
ffa022ae:	f0 bb       	[FP -0x4] = R0;
ffa022b0:	22 91       	R2 = [P4];
ffa022b2:	07 30       	R0 = R7;
ffa022b4:	ff e3 00 ff 	CALL 0xffa020b4 <_eth_header_setup>;
ffa022b8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa022bc:	68 99 00 00 
ffa022c0:	80 0c       	CC = R0 < 0x0;
ffa022c2:	14 18       	IF CC JUMP 0xffa022ea <_udp_packet_setup+0x52>;
ffa022c4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa022c6:	f0 b0       	[SP + 0xc] = R0;
ffa022c8:	01 30       	R0 = R1;
ffa022ca:	22 91       	R2 = [P4];
ffa022cc:	0f 30       	R1 = R7;
ffa022ce:	ff e3 e1 fa 	CALL 0xffa01890 <_ip_header_setup>;
ffa022d2:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa022d6:	f1 b0       	[SP + 0xc] = R1;
ffa022d8:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa022dc:	0f 30       	R1 = R7;
ffa022de:	ff e3 47 fb 	CALL 0xffa0196c <_udp_header_setup>;
ffa022e2:	01 e8 00 00 	UNLINK;
ffa022e6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022e8:	10 00       	RTS;
ffa022ea:	01 e8 00 00 	UNLINK;
ffa022ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022f0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022f2:	10 00       	RTS;

ffa022f4 <_SetupTxBuffer>:
ffa022f4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa022f6:	38 30       	R7 = R0;
ffa022f8:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa022fc:	c7 40       	R7 *= R0;
ffa022fe:	17 32       	P2 = R7;
ffa02300:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c30 */
ffa02304:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa02308:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa0230c:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02310:	6a 5b       	P5 = P2 + P5;
ffa02312:	c7 51       	R7 = R7 + R0;
ffa02314:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02318:	45 30       	R0 = P5;
ffa0231a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0231c:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0231e:	ff e3 d1 f4 	CALL 0xffa00cc0 <_memset_>;
ffa02322:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa02326:	af b1 00 00 
ffa0232a:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa0232e:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02332:	ff e3 c7 f4 	CALL 0xffa00cc0 <_memset_>;
ffa02336:	45 30       	R0 = P5;
ffa02338:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0233a:	28 93       	[P5] = R0;
ffa0233c:	a8 a1       	R0 = [P5 + 0x18];
ffa0233e:	68 b0       	[P5 + 0x4] = R0;
ffa02340:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02344:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02346:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02348:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0234a:	10 54       	R0 = R0 & R2;
ffa0234c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0234e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02352:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02354:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02358:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0235a:	18 54       	R0 = R0 & R3;
ffa0235c:	08 56       	R0 = R0 | R1;
ffa0235e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02362:	08 56       	R0 = R0 | R1;
ffa02364:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02368:	45 30       	R0 = P5;
ffa0236a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0236c:	28 b1       	[P5 + 0x10] = R0;
ffa0236e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02372:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02374:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02376:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0237a:	10 54       	R0 = R0 & R2;
ffa0237c:	08 56       	R0 = R0 | R1;
ffa0237e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02382:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02386:	18 54       	R0 = R0 & R3;
ffa02388:	39 64       	R1 += 0x7;		/* (  7) */
ffa0238a:	08 54       	R0 = R0 & R1;
ffa0238c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02390:	ed bc       	[P5 + 0xc] = P5;
ffa02392:	01 e8 00 00 	UNLINK;
ffa02396:	45 30       	R0 = P5;
ffa02398:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0239a:	10 00       	RTS;

ffa0239c <_SetupRxBuffer>:
ffa0239c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0239e:	38 30       	R7 = R0;
ffa023a0:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa023a4:	c7 40       	R7 *= R0;
ffa023a6:	17 32       	P2 = R7;
ffa023a8:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa023ac:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa023b0:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa023b4:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa023b8:	6a 5b       	P5 = P2 + P5;
ffa023ba:	c7 51       	R7 = R7 + R0;
ffa023bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa023c0:	45 30       	R0 = P5;
ffa023c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa023c4:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa023c6:	ff e3 7d f4 	CALL 0xffa00cc0 <_memset_>;
ffa023ca:	af b1       	[P5 + 0x18] = R7;
ffa023cc:	07 30       	R0 = R7;
ffa023ce:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa023d2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa023d6:	ff e3 75 f4 	CALL 0xffa00cc0 <_memset_>;
ffa023da:	45 30       	R0 = P5;
ffa023dc:	60 64       	R0 += 0xc;		/* ( 12) */
ffa023de:	28 93       	[P5] = R0;
ffa023e0:	a8 a1       	R0 = [P5 + 0x18];
ffa023e2:	68 b0       	[P5 + 0x4] = R0;
ffa023e4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa023e8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023ea:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa023ec:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023ee:	08 54       	R0 = R0 & R1;
ffa023f0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa023f2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023f6:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa023f8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa023fc:	38 54       	R0 = R0 & R7;
ffa023fe:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02400:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02404:	18 56       	R0 = R0 | R3;
ffa02406:	10 56       	R0 = R0 | R2;
ffa02408:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0240c:	45 30       	R0 = P5;
ffa0240e:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02410:	28 b1       	[P5 + 0x10] = R0;
ffa02412:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02416:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02418:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0241a:	08 54       	R0 = R0 & R1;
ffa0241c:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02420:	08 56       	R0 = R0 | R1;
ffa02422:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02426:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0242a:	38 54       	R0 = R0 & R7;
ffa0242c:	18 56       	R0 = R0 | R3;
ffa0242e:	10 56       	R0 = R0 | R2;
ffa02430:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02434:	ed bc       	[P5 + 0xc] = P5;
ffa02436:	01 e8 00 00 	UNLINK;
ffa0243a:	45 30       	R0 = P5;
ffa0243c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0243e:	10 00       	RTS;

ffa02440 <_SetupSystemRegs>:
ffa02440:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02442:	28 32       	P5 = R0;
ffa02444:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02448:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0244c:	00 e1 50 02 	R0.L = 0x250;		/* (592)	R0=0xff900250(-7339440) */
ffa02450:	ff e3 80 f2 	CALL 0xffa00950 <_printf_str>;
ffa02454:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
ffa02458:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0245c:	50 95       	R0 = W[P2] (X);
ffa0245e:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02462:	08 54       	R0 = R0 & R1;
ffa02464:	10 97       	W[P2] = R0;
ffa02466:	50 95       	R0 = W[P2] (X);
ffa02468:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0246a:	10 97       	W[P2] = R0;
ffa0246c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0246e:	51 95       	R1 = W[P2] (X);
ffa02470:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02474:	08 56       	R0 = R0 | R1;
ffa02476:	10 97       	W[P2] = R0;
ffa02478:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0247a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0247c:	10 97       	W[P2] = R0;
ffa0247e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02480:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02482:	10 97       	W[P2] = R0;
ffa02484:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02488:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0248c:	50 95       	R0 = W[P2] (X);
ffa0248e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02490:	10 97       	W[P2] = R0;
ffa02492:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02496:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0249a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0249e:	10 93       	[P2] = R0;
ffa024a0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa024a2:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa024a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024a8:	ff e3 4c f9 	CALL 0xffa01740 <_WrPHYReg>;
ffa024ac:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa024b0:	ff e3 e6 f5 	CALL 0xffa0107c <_udelay>;
ffa024b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024b6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa024b8:	ff e3 60 f9 	CALL 0xffa01778 <_RdPHYReg>;
ffa024bc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa024be:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa024c0:	0e 20       	JUMP.S 0xffa024dc <_SetupSystemRegs+0x9c>;
ffa024c2:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa024c6:	ff e3 db f5 	CALL 0xffa0107c <_udelay>;
ffa024ca:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa024cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ce:	ff e3 55 f9 	CALL 0xffa01778 <_RdPHYReg>;
ffa024d2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa024d4:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa024d8:	0f 08       	CC = R7 == R1;
ffa024da:	35 18       	IF CC JUMP 0xffa02544 <_SetupSystemRegs+0x104>;
ffa024dc:	06 54       	R0 = R6 & R0;
ffa024de:	00 0c       	CC = R0 == 0x0;
ffa024e0:	f1 1f       	IF CC JUMP 0xffa024c2 <_SetupSystemRegs+0x82> (BP);
ffa024e2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa024e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024e6:	ff e3 49 f9 	CALL 0xffa01778 <_RdPHYReg>;
ffa024ea:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa024ee:	01 54       	R0 = R1 & R0;
ffa024f0:	00 0c       	CC = R0 == 0x0;
ffa024f2:	27 1c       	IF CC JUMP 0xffa02540 <_SetupSystemRegs+0x100> (BP);
ffa024f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024f6:	d0 4f       	R0 <<= 0x1a;
ffa024f8:	28 93       	[P5] = R0;
ffa024fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa024fe:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02500:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02504:	10 93       	[P2] = R0;
ffa02506:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0250a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0250c:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02510:	10 97       	W[P2] = R0;
ffa02512:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02514:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02516:	11 97       	W[P2] = R1;
ffa02518:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0251a:	10 97       	W[P2] = R0;
ffa0251c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0251e:	10 97       	W[P2] = R0;
ffa02520:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02524:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02528:	10 97       	W[P2] = R0;
ffa0252a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0252c:	11 97       	W[P2] = R1;
ffa0252e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02530:	10 97       	W[P2] = R0;
ffa02532:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02534:	10 97       	W[P2] = R0;
ffa02536:	01 e8 00 00 	UNLINK;
ffa0253a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0253c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0253e:	10 00       	RTS;
ffa02540:	28 93       	[P5] = R0;
ffa02542:	dc 2f       	JUMP.S 0xffa024fa <_SetupSystemRegs+0xba>;
ffa02544:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02548:	00 e1 68 02 	R0.L = 0x268;		/* (616)	R0=0xff900268(-7339416) */
ffa0254c:	ff e3 02 f2 	CALL 0xffa00950 <_printf_str>;
ffa02550:	01 e8 00 00 	UNLINK;
ffa02554:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02556:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02558:	10 00       	RTS;
	...

ffa0255c <_SetupMacAddr>:
ffa0255c:	10 32       	P2 = R0;
ffa0255e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02560:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02562:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02566:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0256a:	10 9b       	B[P2] = R0;
ffa0256c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0256e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02572:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02574:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02578:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0257a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0257e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02582:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02586:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02588:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0258c:	10 99       	R0 = B[P2] (Z);
ffa0258e:	08 56       	R0 = R0 | R1;
ffa02590:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02594:	89 4f       	R1 <<= 0x11;
ffa02596:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c30(-4191184) */
ffa0259a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0259e:	08 56       	R0 = R0 | R1;
ffa025a0:	08 93       	[P1] = R0;
ffa025a2:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa025a6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa025aa:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa025ae:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa025b0:	28 93       	[P5] = R0;
ffa025b2:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa025b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa025ba:	09 91       	R1 = [P1];
ffa025bc:	07 e1 6c 0a 	R7.L = 0xa6c;		/* (2668)	R7=0xff900a6c(-7337364) */
ffa025c0:	00 e1 9c 02 	R0.L = 0x29c;		/* (668)	R0=0xff90029c(-7339364) */
ffa025c4:	ff e3 2c f2 	CALL 0xffa00a1c <_printf_hex>;
ffa025c8:	07 30       	R0 = R7;
ffa025ca:	ff e3 c3 f1 	CALL 0xffa00950 <_printf_str>;
ffa025ce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90029c(-7339364) */
ffa025d2:	29 91       	R1 = [P5];
ffa025d4:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa025d8:	ff e3 22 f2 	CALL 0xffa00a1c <_printf_hex>;
ffa025dc:	01 e8 00 00 	UNLINK;
ffa025e0:	07 30       	R0 = R7;
ffa025e2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa025e4:	ff e2 b6 f1 	JUMP.L 0xffa00950 <_printf_str>;

ffa025e8 <_bfin_EMAC_init>:
ffa025e8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa025ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa025ee:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025f2:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa025f6:	ff e3 ad f1 	CALL 0xffa00950 <_printf_str>;
ffa025fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa025fe:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02600:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02604:	16 97       	W[P2] = R6;
ffa02606:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa0260a:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa0260e:	16 97       	W[P2] = R6;
ffa02610:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa02614:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa02618:	16 97       	W[P2] = R6;
ffa0261a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa0261e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02620:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa02624:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa02626:	17 93       	[P2] = R7;
ffa02628:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0262c:	f0 b0       	[SP + 0xc] = R0;
ffa0262e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02630:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02634:	ff e3 50 f8 	CALL 0xffa016d4 <_FormatIPAddress>;
ffa02638:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa0263c:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02640:	10 93       	[P2] = R0;
ffa02642:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02644:	f0 b0       	[SP + 0xc] = R0;
ffa02646:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0264a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0264c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02650:	ff e3 42 f8 	CALL 0xffa016d4 <_FormatIPAddress>;
ffa02654:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02658:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0265c:	10 93       	[P2] = R0;
ffa0265e:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa02660:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02662:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02666:	f0 b0       	[SP + 0xc] = R0;
ffa02668:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0266c:	ff e3 34 f8 	CALL 0xffa016d4 <_FormatIPAddress>;
ffa02670:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02674:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa02678:	10 93       	[P2] = R0;
ffa0267a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0267e:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa02682:	17 93       	[P2] = R7;
ffa02684:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa02688:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa0268c:	17 93       	[P2] = R7;
ffa0268e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02692:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa02696:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0269a:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0269e:	10 93       	[P2] = R0;
ffa026a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa026a4:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa026a8:	16 97       	W[P2] = R6;
ffa026aa:	00 e3 7f 02 	CALL 0xffa02ba8 <_ARP_init>;
ffa026ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa026b2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa026b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa026ba:	17 93       	[P2] = R7;
ffa026bc:	00 e1 54 0c 	R0.L = 0xc54;		/* (3156)	R0=0xff900c54 <_NetOurMAC>(-7336876) */
ffa026c0:	ff e3 4e ff 	CALL 0xffa0255c <_SetupMacAddr>;
ffa026c4:	47 30       	R0 = FP;
ffa026c6:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa026c8:	ff e3 bc fe 	CALL 0xffa02440 <_SetupSystemRegs>;
ffa026cc:	80 0c       	CC = R0 < 0x0;
ffa026ce:	7a 18       	IF CC JUMP 0xffa027c2 <_bfin_EMAC_init+0x1da>;
ffa026d0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa026d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026d6:	07 e1 44 0c 	R7.L = 0xc44;		/* (3140)	R7=0xff900c44 <_rxbuf>(-7336892) */
ffa026da:	ff e3 61 fe 	CALL 0xffa0239c <_SetupRxBuffer>;
ffa026de:	07 32       	P0 = R7;
ffa026e0:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026e2:	00 93       	[P0] = R0;
ffa026e4:	17 32       	P2 = R7;
ffa026e6:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa026e8:	44 30       	R0 = P4;
ffa026ea:	ff e3 59 fe 	CALL 0xffa0239c <_SetupRxBuffer>;
ffa026ee:	44 0c       	CC = P4 == 0x0;
ffa026f0:	08 32       	P1 = R0;
ffa026f2:	28 92       	[P5++] = R0;
ffa026f4:	52 18       	IF CC JUMP 0xffa02798 <_bfin_EMAC_init+0x1b0>;
ffa026f6:	07 32       	P0 = R7;
ffa026f8:	5c 0c       	CC = P4 == 0x3;
ffa026fa:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa026fc:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02700:	d0 b0       	[P2 + 0xc] = R0;
ffa02702:	54 18       	IF CC JUMP 0xffa027aa <_bfin_EMAC_init+0x1c2>;
ffa02704:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02706:	5c 0d       	CC = P4 <= 0x3;
ffa02708:	ee 1f       	IF CC JUMP 0xffa026e4 <_bfin_EMAC_init+0xfc> (BP);
ffa0270a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0270c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa02710:	ff e3 f2 fd 	CALL 0xffa022f4 <_SetupTxBuffer>;
ffa02714:	0b e1 30 0c 	P3.L = 0xc30;		/* (3120)	P3=0xff900c30 <_txbuf> */
ffa02718:	18 93       	[P3] = R0;
ffa0271a:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0271c:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa0271e:	44 30       	R0 = P4;
ffa02720:	ff e3 ea fd 	CALL 0xffa022f4 <_SetupTxBuffer>;
ffa02724:	44 0c       	CC = P4 == 0x0;
ffa02726:	08 32       	P1 = R0;
ffa02728:	28 92       	[P5++] = R0;
ffa0272a:	35 18       	IF CC JUMP 0xffa02794 <_bfin_EMAC_init+0x1ac>;
ffa0272c:	00 00       	NOP;
ffa0272e:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02730:	5c 0c       	CC = P4 == 0x3;
ffa02732:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02736:	d0 b0       	[P2 + 0xc] = R0;
ffa02738:	32 18       	IF CC JUMP 0xffa0279c <_bfin_EMAC_init+0x1b4>;
ffa0273a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0273c:	5c 0d       	CC = P4 <= 0x3;
ffa0273e:	ef 1f       	IF CC JUMP 0xffa0271c <_bfin_EMAC_init+0x134> (BP);
ffa02740:	17 32       	P2 = R7;
ffa02742:	51 91       	P1 = [P2];
ffa02744:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02748:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa0274c:	51 93       	[P2] = P1;
ffa0274e:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02750:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02752:	10 97       	W[P2] = R0;
ffa02754:	ff e3 e8 f7 	CALL 0xffa01724 <_PollMdcDone>;
ffa02758:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0275a:	f0 b9       	R0 = [FP -0x4];
ffa0275c:	d1 4f       	R1 <<= 0x1a;
ffa0275e:	08 08       	CC = R0 == R1;
ffa02760:	2c 18       	IF CC JUMP 0xffa027b8 <_bfin_EMAC_init+0x1d0>;
ffa02762:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02766:	01 30       	R0 = R1;
ffa02768:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0276c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02770:	10 93       	[P2] = R0;
ffa02772:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02776:	00 e1 c4 02 	R0.L = 0x2c4;		/* (708)	R0=0xff9002c4(-7339324) */
ffa0277a:	ff e3 51 f1 	CALL 0xffa00a1c <_printf_hex>;
ffa0277e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c4(-7339324) */
ffa02782:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02786:	ff e3 e5 f0 	CALL 0xffa00950 <_printf_str>;
ffa0278a:	01 e8 00 00 	UNLINK;
ffa0278e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02790:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02792:	10 00       	RTS;
ffa02794:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02796:	c4 2f       	JUMP.S 0xffa0271e <_bfin_EMAC_init+0x136>;
ffa02798:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0279a:	a7 2f       	JUMP.S 0xffa026e8 <_bfin_EMAC_init+0x100>;
ffa0279c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa027a0:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_txbuf> */
ffa027a4:	10 91       	R0 = [P2];
ffa027a6:	c8 b0       	[P1 + 0xc] = R0;
ffa027a8:	cc 2f       	JUMP.S 0xffa02740 <_bfin_EMAC_init+0x158>;
ffa027aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_txbuf> */
ffa027ae:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_rxbuf> */
ffa027b2:	10 91       	R0 = [P2];
ffa027b4:	c8 b0       	[P1 + 0xc] = R0;
ffa027b6:	aa 2f       	JUMP.S 0xffa0270a <_bfin_EMAC_init+0x122>;
ffa027b8:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa027bc:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa027be:	01 30       	R0 = R1;
ffa027c0:	d4 2f       	JUMP.S 0xffa02768 <_bfin_EMAC_init+0x180>;
ffa027c2:	01 e8 00 00 	UNLINK;
ffa027c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027c8:	b3 05       	(R7:6, P5:3) = [SP++];
ffa027ca:	10 00       	RTS;

ffa027cc <_bfin_EMAC_recv_poll>:
ffa027cc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa027ce:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa027d2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa027d6:	0d e1 44 0c 	P5.L = 0xc44;		/* (3140)	P5=0xff900c44 <_rxbuf> */
ffa027da:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa027de:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027e2:	28 30       	R5 = R0;
ffa027e4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027e6:	75 30       	R6 = P5;
ffa027e8:	5c 32       	P3 = P4;
ffa027ea:	06 20       	JUMP.S 0xffa027f6 <_bfin_EMAC_recv_poll+0x2a>;
ffa027ec:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027ee:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa027f2:	07 08       	CC = R7 == R0;
ffa027f4:	0c 18       	IF CC JUMP 0xffa0280c <_bfin_EMAC_recv_poll+0x40>;
ffa027f6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa027fa:	ff e3 41 f4 	CALL 0xffa0107c <_udelay>;
ffa027fe:	20 95       	R0 = W[P4] (Z);
ffa02800:	10 32       	P2 = R0;
ffa02802:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02804:	52 91       	P2 = [P2];
ffa02806:	90 a2       	R0 = [P2 + 0x28];
ffa02808:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0280a:	f1 1f       	IF CC JUMP 0xffa027ec <_bfin_EMAC_recv_poll+0x20> (BP);
ffa0280c:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02810:	91 a2       	R1 = [P2 + 0x28];
ffa02812:	41 54       	R1 = R1 & R0;
ffa02814:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02816:	01 09       	CC = R1 <= R0;
ffa02818:	07 10       	IF !CC JUMP 0xffa02826 <_bfin_EMAC_recv_poll+0x5a>;
ffa0281a:	01 e8 00 00 	UNLINK;
ffa0281e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02820:	07 30       	R0 = R7;
ffa02822:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02824:	10 00       	RTS;
ffa02826:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02828:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa0282c:	90 b2 00 00 
ffa02830:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02832:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02836:	0f 30       	R1 = R7;
ffa02838:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa0283c:	ff e3 4c f1 	CALL 0xffa00ad4 <_printf_int>;
ffa02840:	18 95       	R0 = W[P3] (Z);
ffa02842:	10 32       	P2 = R0;
ffa02844:	0e 32       	P1 = R6;
ffa02846:	0f 30       	R1 = R7;
ffa02848:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0284a:	52 91       	P2 = [P2];
ffa0284c:	90 a1       	R0 = [P2 + 0x18];
ffa0284e:	15 32       	P2 = R5;
ffa02850:	10 93       	[P2] = R0;
ffa02852:	00 e3 5f 02 	CALL 0xffa02d10 <_ARP_rx>;
ffa02856:	00 0c       	CC = R0 == 0x0;
ffa02858:	1f 18       	IF CC JUMP 0xffa02896 <_bfin_EMAC_recv_poll+0xca>;
ffa0285a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0285c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02860:	20 95       	R0 = W[P4] (Z);
ffa02862:	10 32       	P2 = R0;
ffa02864:	61 95       	R1 = W[P4] (X);
ffa02866:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02868:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxIdx> */
ffa0286c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0286e:	52 91       	P2 = [P2];
ffa02870:	90 b2       	[P2 + 0x28] = R0;
ffa02872:	c8 42       	R0 = R1.L (Z);
ffa02874:	10 0d       	CC = R0 <= 0x2;
ffa02876:	08 1c       	IF CC JUMP 0xffa02886 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02878:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0287a:	08 97       	W[P1] = R0;
ffa0287c:	01 e8 00 00 	UNLINK;
ffa02880:	07 30       	R0 = R7;
ffa02882:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02884:	10 00       	RTS;
ffa02886:	01 30       	R0 = R1;
ffa02888:	08 64       	R0 += 0x1;		/* (  1) */
ffa0288a:	08 97       	W[P1] = R0;
ffa0288c:	01 e8 00 00 	UNLINK;
ffa02890:	07 30       	R0 = R7;
ffa02892:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02894:	10 00       	RTS;
ffa02896:	0d 32       	P1 = R5;
ffa02898:	0f 30       	R1 = R7;
ffa0289a:	08 91       	R0 = [P1];
ffa0289c:	ff e3 8e fc 	CALL 0xffa021b8 <_icmp_rx>;
ffa028a0:	00 0c       	CC = R0 == 0x0;
ffa028a2:	dd 1f       	IF CC JUMP 0xffa0285c <_bfin_EMAC_recv_poll+0x90> (BP);
ffa028a4:	db 2f       	JUMP.S 0xffa0285a <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa028a8 <_DHCP_rx>:
ffa028a8:	ed 05       	[--SP] = (R7:5, P5:5);
ffa028aa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa028ae:	6f 30       	R5 = FP;
ffa028b0:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa028b2:	01 20       	JUMP.S 0xffa028b4 <_DHCP_rx+0xc>;
ffa028b4:	05 30       	R0 = R5;
ffa028b6:	ff e3 8b ff 	CALL 0xffa027cc <_bfin_EMAC_recv_poll>;
ffa028ba:	38 30       	R7 = R0;
ffa028bc:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa028c0:	87 51       	R6 = R7 + R0;
ffa028c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa028c6:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa028ca:	0e 30       	R1 = R6;
ffa028cc:	ff e3 04 f1 	CALL 0xffa00ad4 <_printf_int>;
ffa028d0:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa028d4:	07 09       	CC = R7 <= R0;
ffa028d6:	fd b9       	P5 = [FP -0x4];
ffa028d8:	0c 18       	IF CC JUMP 0xffa028f0 <_DHCP_rx+0x48>;
ffa028da:	00 00       	NOP;
ffa028dc:	00 00       	NOP;
ffa028de:	00 00       	NOP;
ffa028e0:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa028e2:	ff e3 a3 f7 	CALL 0xffa01828 <_htons>;
ffa028e6:	c0 42       	R0 = R0.L (Z);
ffa028e8:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa028ec:	08 08       	CC = R0 == R1;
ffa028ee:	08 18       	IF CC JUMP 0xffa028fe <_DHCP_rx+0x56>;
ffa028f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa028f4:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa028f8:	ff e3 2c f0 	CALL 0xffa00950 <_printf_str>;
ffa028fc:	dc 2f       	JUMP.S 0xffa028b4 <_DHCP_rx+0xc>;
ffa028fe:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02902:	ff e3 93 f7 	CALL 0xffa01828 <_htons>;
ffa02906:	c0 42       	R0 = R0.L (Z);
ffa02908:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa0290c:	01 08       	CC = R1 == R0;
ffa0290e:	d3 17       	IF !CC JUMP 0xffa028b4 <_DHCP_rx+0xc> (BP);
ffa02910:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02914:	ff e3 8a f7 	CALL 0xffa01828 <_htons>;
ffa02918:	c0 42       	R0 = R0.L (Z);
ffa0291a:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa0291e:	01 08       	CC = R1 == R0;
ffa02920:	ca 17       	IF !CC JUMP 0xffa028b4 <_DHCP_rx+0xc> (BP);
ffa02922:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa02926:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0292a:	11 91       	R1 = [P2];
ffa0292c:	28 a3       	R0 = [P5 + 0x30];
ffa0292e:	08 08       	CC = R0 == R1;
ffa02930:	c2 17       	IF !CC JUMP 0xffa028b4 <_DHCP_rx+0xc> (BP);
ffa02932:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02936:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0293a:	ff e3 83 f7 	CALL 0xffa01840 <_htonl>;
ffa0293e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02942:	01 08       	CC = R1 == R0;
ffa02944:	b8 17       	IF !CC JUMP 0xffa028b4 <_DHCP_rx+0xc> (BP);
ffa02946:	4d 30       	R1 = P5;
ffa02948:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa0294c:	01 50       	R0 = R1 + R0;
ffa0294e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02952:	f0 bb 00 00 
ffa02956:	ff e3 59 f8 	CALL 0xffa01a08 <_DHCP_parse>;
ffa0295a:	e9 a3       	R1 = [P5 + 0x3c];
ffa0295c:	01 0c       	CC = R1 == 0x0;
ffa0295e:	12 1c       	IF CC JUMP 0xffa02982 <_DHCP_rx+0xda> (BP);
ffa02960:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02964:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02968:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa0296c:	11 93       	[P2] = R1;
ffa0296e:	00 e1 e4 02 	R0.L = 0x2e4;		/* (740)	R0=0xff9002e4(-7339292) */
ffa02972:	ff e3 53 f1 	CALL 0xffa00c18 <_printf_ip>;
ffa02976:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e4(-7339292) */
ffa0297a:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0297e:	ff e3 e9 ef 	CALL 0xffa00950 <_printf_str>;
ffa02982:	01 e8 00 00 	UNLINK;
ffa02986:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02988:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0298a:	10 00       	RTS;

ffa0298c <_DHCP_req>:
ffa0298c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0298e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c44 <_rxbuf> */
ffa02992:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02996:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02998:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0299c:	28 93       	[P5] = R0;
ffa0299e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029a0:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa029a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029a6:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa029aa:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa029ae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa029b0:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa029b4:	7f 30       	R7 = FP;
ffa029b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa029ba:	00 e1 24 03 	R0.L = 0x324;		/* (804)	R0=0xff900324(-7339228) */
ffa029be:	a7 67       	R7 += -0xc;		/* (-12) */
ffa029c0:	ff e3 c8 ef 	CALL 0xffa00950 <_printf_str>;
ffa029c4:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa029c8:	2a 91 00 00 
ffa029cc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029ce:	ff e3 45 f9 	CALL 0xffa01c58 <_DHCP_tx>;
ffa029d2:	ff e3 6b ff 	CALL 0xffa028a8 <_DHCP_rx>;
ffa029d6:	29 91       	R1 = [P5];
ffa029d8:	39 0c       	CC = R1 == -0x1;
ffa029da:	43 18       	IF CC JUMP 0xffa02a60 <_DHCP_req+0xd4>;
ffa029dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029e0:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa029e4:	10 91       	R0 = [P2];
ffa029e6:	00 0c       	CC = R0 == 0x0;
ffa029e8:	08 18       	IF CC JUMP 0xffa029f8 <_DHCP_req+0x6c>;
ffa029ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029ee:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa029f2:	10 91       	R0 = [P2];
ffa029f4:	00 0c       	CC = R0 == 0x0;
ffa029f6:	30 10       	IF !CC JUMP 0xffa02a56 <_DHCP_req+0xca>;
ffa029f8:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029fa:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa029fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a00:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02a04:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02a06:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02a0a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02a0c:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02a10:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02a12:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02a16:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02a1a:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02a1e:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02a22:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02a26:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02a2a:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02a2e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a30:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02a34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02a38:	00 e1 54 03 	R0.L = 0x354;		/* (852)	R0=0xff900354(-7339180) */
ffa02a3c:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02a40:	ff e3 88 ef 	CALL 0xffa00950 <_printf_str>;
ffa02a44:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02a46:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02a4a:	2a 91 00 00 
ffa02a4e:	ff e3 05 f9 	CALL 0xffa01c58 <_DHCP_tx>;
ffa02a52:	ff e3 2b ff 	CALL 0xffa028a8 <_DHCP_rx>;
ffa02a56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a58:	01 e8 00 00 	UNLINK;
ffa02a5c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02a5e:	10 00       	RTS;
ffa02a60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a64:	00 e1 38 03 	R0.L = 0x338;		/* (824)	R0=0xff900338(-7339208) */
ffa02a68:	ff e3 74 ef 	CALL 0xffa00950 <_printf_str>;
ffa02a6c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a6e:	f5 2f       	JUMP.S 0xffa02a58 <_DHCP_req+0xcc>;

ffa02a70 <_bfin_EMAC_recv>:
ffa02a70:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a72:	28 32       	P5 = R0;
ffa02a74:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02a78:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa02a7c:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c30(-4191184) */
ffa02a80:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa02a84:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a88:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a8a:	6c 30       	R5 = P4;
ffa02a8c:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa02a8e:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02a92:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa02a96:	0f 20       	JUMP.S 0xffa02ab4 <_bfin_EMAC_recv+0x44>;
ffa02a98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a9a:	20 97       	W[P4] = R0;
ffa02a9c:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02aa0:	28 91 00 00 
ffa02aa4:	00 e3 36 01 	CALL 0xffa02d10 <_ARP_rx>;
ffa02aa8:	00 0c       	CC = R0 == 0x0;
ffa02aaa:	43 18       	IF CC JUMP 0xffa02b30 <_bfin_EMAC_recv+0xc0>;
ffa02aac:	14 32       	P2 = R4;
ffa02aae:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ab0:	16 97       	W[P2] = R6;
ffa02ab2:	01 20       	JUMP.S 0xffa02ab4 <_bfin_EMAC_recv+0x44>;
ffa02ab4:	0d 32       	P1 = R5;
ffa02ab6:	08 95       	R0 = W[P1] (Z);
ffa02ab8:	10 32       	P2 = R0;
ffa02aba:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c40 <_rxIdx> */
ffa02abe:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa02ac2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02ac4:	51 91       	P1 = [P2];
ffa02ac6:	88 a2       	R0 = [P1 + 0x28];
ffa02ac8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02aca:	48 18       	IF CC JUMP 0xffa02b5a <_bfin_EMAC_recv+0xea>;
ffa02acc:	00 00       	NOP;
ffa02ace:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ad0:	a0 4f       	R0 <<= 0x14;
ffa02ad2:	89 a2       	R1 = [P1 + 0x28];
ffa02ad4:	81 54       	R2 = R1 & R0;
ffa02ad6:	02 0c       	CC = R2 == 0x0;
ffa02ad8:	47 10       	IF !CC JUMP 0xffa02b66 <_bfin_EMAC_recv+0xf6>;
ffa02ada:	00 00       	NOP;
ffa02adc:	00 00       	NOP;
ffa02ade:	00 00       	NOP;
ffa02ae0:	88 a2       	R0 = [P1 + 0x28];
ffa02ae2:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02ae4:	4c 18       	IF CC JUMP 0xffa02b7c <_bfin_EMAC_recv+0x10c>;
ffa02ae6:	00 00       	NOP;
ffa02ae8:	00 00       	NOP;
ffa02aea:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02aee:	89 a2       	R1 = [P1 + 0x28];
ffa02af0:	c1 55       	R7 = R1 & R0;
ffa02af2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02af4:	07 09       	CC = R7 <= R0;
ffa02af6:	4e 18       	IF CC JUMP 0xffa02b92 <_bfin_EMAC_recv+0x122>;
ffa02af8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c5c(-4191140) */
ffa02afc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02b00:	16 97       	W[P2] = R6;
ffa02b02:	88 a1       	R0 = [P1 + 0x18];
ffa02b04:	59 95       	R1 = W[P3] (X);
ffa02b06:	28 93       	[P5] = R0;
ffa02b08:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02b0a:	08 56       	R0 = R0 | R1;
ffa02b0c:	18 97       	W[P3] = R0;
ffa02b0e:	61 95       	R1 = W[P4] (X);
ffa02b10:	c8 42       	R0 = R1.L (Z);
ffa02b12:	10 0d       	CC = R0 <= 0x2;
ffa02b14:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02b16:	8a b2       	[P1 + 0x28] = R2;
ffa02b18:	c0 17       	IF !CC JUMP 0xffa02a98 <_bfin_EMAC_recv+0x28> (BP);
ffa02b1a:	01 30       	R0 = R1;
ffa02b1c:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b1e:	20 97       	W[P4] = R0;
ffa02b20:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02b24:	28 91 00 00 
ffa02b28:	00 e3 f4 00 	CALL 0xffa02d10 <_ARP_rx>;
ffa02b2c:	00 0c       	CC = R0 == 0x0;
ffa02b2e:	bf 17       	IF !CC JUMP 0xffa02aac <_bfin_EMAC_recv+0x3c> (BP);
ffa02b30:	28 91       	R0 = [P5];
ffa02b32:	0f 30       	R1 = R7;
ffa02b34:	ff e3 42 fb 	CALL 0xffa021b8 <_icmp_rx>;
ffa02b38:	00 0c       	CC = R0 == 0x0;
ffa02b3a:	b9 17       	IF !CC JUMP 0xffa02aac <_bfin_EMAC_recv+0x3c> (BP);
ffa02b3c:	28 91       	R0 = [P5];
ffa02b3e:	0f 30       	R1 = R7;
ffa02b40:	00 e3 46 04 	CALL 0xffa033cc <_tcp_rx>;
ffa02b44:	00 0c       	CC = R0 == 0x0;
ffa02b46:	b3 17       	IF !CC JUMP 0xffa02aac <_bfin_EMAC_recv+0x3c> (BP);
ffa02b48:	0c 32       	P1 = R4;
ffa02b4a:	07 0d       	CC = R7 <= 0x0;
ffa02b4c:	0e 97       	W[P1] = R6;
ffa02b4e:	b3 1f       	IF CC JUMP 0xffa02ab4 <_bfin_EMAC_recv+0x44> (BP);
ffa02b50:	01 e8 00 00 	UNLINK;
ffa02b54:	07 30       	R0 = R7;
ffa02b56:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b58:	10 00       	RTS;
ffa02b5a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b5c:	01 e8 00 00 	UNLINK;
ffa02b60:	07 30       	R0 = R7;
ffa02b62:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b64:	10 00       	RTS;
ffa02b66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02b6a:	00 e1 68 03 	R0.L = 0x368;		/* (872)	R0=0xff900368(-7339160) */
ffa02b6e:	ff e3 f1 ee 	CALL 0xffa00950 <_printf_str>;
ffa02b72:	01 e8 00 00 	UNLINK;
ffa02b76:	07 30       	R0 = R7;
ffa02b78:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b7a:	10 00       	RTS;
ffa02b7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900368(-7339160) */
ffa02b80:	00 e1 84 03 	R0.L = 0x384;		/* (900)	R0=0xff900384(-7339132) */
ffa02b84:	ff e3 e6 ee 	CALL 0xffa00950 <_printf_str>;
ffa02b88:	01 e8 00 00 	UNLINK;
ffa02b8c:	07 30       	R0 = R7;
ffa02b8e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b90:	10 00       	RTS;
ffa02b92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900384(-7339132) */
ffa02b96:	00 e1 98 03 	R0.L = 0x398;		/* (920)	R0=0xff900398(-7339112) */
ffa02b9a:	ff e3 db ee 	CALL 0xffa00950 <_printf_str>;
ffa02b9e:	01 e8 00 00 	UNLINK;
ffa02ba2:	07 30       	R0 = R7;
ffa02ba4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02ba6:	10 00       	RTS;

ffa02ba8 <_ARP_init>:
ffa02ba8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02bac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02bb0:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetArpLut> */
ffa02bb4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02bb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bb8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bba:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02bbc:	b2 e0 12 10 	LSETUP(0xffa02bc0 <_ARP_init+0x18>, 0xffa02be0 <_ARP_init+0x38>) LC1 = P1;
ffa02bc0:	11 93       	[P2] = R1;
ffa02bc2:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02bc6:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02bca:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02bce:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02bd2:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02bd6:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02bda:	52 b5       	W[P2 + 0xa] = R2;
ffa02bdc:	d1 b0       	[P2 + 0xc] = R1;
ffa02bde:	11 b1       	[P2 + 0x10] = R1;
ffa02be0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02be2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetArpLut> */
ffa02be6:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02bea:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02bee:	10 97       	W[P2] = R0;
ffa02bf0:	01 e8 00 00 	UNLINK;
ffa02bf4:	10 00       	RTS;
	...

ffa02bf8 <_ARP_lut_find>:
ffa02bf8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c2c <_txIdx> */
ffa02bfc:	08 e1 6c 0c 	P0.L = 0xc6c;		/* (3180)	P0=0xff900c6c <_NetArpLut> */
ffa02c00:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02c04:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c06:	48 32       	P1 = P0;
ffa02c08:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c0a:	b2 e0 06 20 	LSETUP(0xffa02c0e <_ARP_lut_find+0x16>, 0xffa02c16 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02c0e:	08 91       	R0 = [P1];
ffa02c10:	00 0c       	CC = R0 == 0x0;
ffa02c12:	14 18       	IF CC JUMP 0xffa02c3a <_ARP_lut_find+0x42>;
ffa02c14:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02c16:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c18:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02c1c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02c1e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c20:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02c22:	09 e1 8a 0c 	P1.L = 0xc8a;		/* (3210)	P1=0xff900c8a */
ffa02c26:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02c28:	b2 e0 08 20 	LSETUP(0xffa02c2c <_ARP_lut_find+0x34>, 0xffa02c38 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02c2c:	08 95       	R0 = W[P1] (Z);
ffa02c2e:	03 09       	CC = R3 <= R0;
ffa02c30:	03 18       	IF CC JUMP 0xffa02c36 <_ARP_lut_find+0x3e>;
ffa02c32:	11 30       	R2 = R1;
ffa02c34:	18 30       	R3 = R0;
ffa02c36:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c38:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c3a:	02 30       	R0 = R2;
ffa02c3c:	01 e8 00 00 	UNLINK;
ffa02c40:	10 00       	RTS;
	...

ffa02c44 <_ARP_lut_add>:
ffa02c44:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02c46:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02c4a:	0d e1 6c 0c 	P5.L = 0xc6c;		/* (3180)	P5=0xff900c6c <_NetArpLut> */
ffa02c4e:	31 30       	R6 = R1;
ffa02c50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c54:	38 30       	R7 = R0;
ffa02c56:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c58:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02c5a:	4d 32       	P1 = P5;
ffa02c5c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c5e:	00 00       	NOP;
ffa02c60:	08 91       	R0 = [P1];
ffa02c62:	07 08       	CC = R7 == R0;
ffa02c64:	11 07       	IF CC R2 = R1;
ffa02c66:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c68:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02c6a:	42 0c       	CC = P2 == 0x0;
ffa02c6c:	23 10       	IF !CC JUMP 0xffa02cb2 <_ARP_lut_add+0x6e>;
ffa02c6e:	82 0c       	CC = R2 < 0x0;
ffa02c70:	25 18       	IF CC JUMP 0xffa02cba <_ARP_lut_add+0x76>;
ffa02c72:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02c76:	0a 32       	P1 = R2;
ffa02c78:	11 32       	P2 = R1;
ffa02c7a:	06 32       	P0 = R6;
ffa02c7c:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02c7e:	6a 5a       	P1 = P2 + P5;
ffa02c80:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c82:	0f 93       	[P1] = R7;
ffa02c84:	aa 5a       	P2 = P2 + P5;
ffa02c86:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02c88:	b2 e0 03 10 	LSETUP(0xffa02c8c <_ARP_lut_add+0x48>, 0xffa02c8e <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02c8c:	40 98       	R0 = B[P0++] (X);
ffa02c8e:	10 9a       	B[P2++] = R0;
ffa02c90:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02c92:	09 32       	P1 = R1;
ffa02c94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02c98:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02c9c:	50 95       	R0 = W[P2] (X);
ffa02c9e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ca0:	10 97       	W[P2] = R0;
ffa02ca2:	a9 5a       	P2 = P1 + P5;
ffa02ca4:	50 b5       	W[P2 + 0xa] = R0;
ffa02ca6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ca8:	10 b1       	[P2 + 0x10] = R0;
ffa02caa:	01 e8 00 00 	UNLINK;
ffa02cae:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02cb0:	10 00       	RTS;
ffa02cb2:	82 0c       	CC = R2 < 0x0;
ffa02cb4:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cb6:	d4 1f       	IF CC JUMP 0xffa02c5e <_ARP_lut_add+0x1a> (BP);
ffa02cb8:	dd 2f       	JUMP.S 0xffa02c72 <_ARP_lut_add+0x2e>;
ffa02cba:	ff e3 9f ff 	CALL 0xffa02bf8 <_ARP_lut_find>;
ffa02cbe:	10 30       	R2 = R0;
ffa02cc0:	d9 2f       	JUMP.S 0xffa02c72 <_ARP_lut_add+0x2e>;
	...

ffa02cc4 <_ARP_lu>:
ffa02cc4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02cc8:	c4 04       	[--SP] = (P5:4);
ffa02cca:	09 e1 6c 0c 	P1.L = 0xc6c;		/* (3180)	P1=0xff900c6c <_NetArpLut> */
ffa02cce:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02cd2:	10 30       	R2 = R0;
ffa02cd4:	29 32       	P5 = R1;
ffa02cd6:	61 32       	P4 = P1;
ffa02cd8:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02cda:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02cdc:	b2 e0 06 20 	LSETUP(0xffa02ce0 <_ARP_lu+0x1c>, 0xffa02ce8 <_ARP_lu+0x24>) LC1 = P2;
ffa02ce0:	08 91       	R0 = [P1];
ffa02ce2:	10 08       	CC = R0 == R2;
ffa02ce4:	08 18       	IF CC JUMP 0xffa02cf4 <_ARP_lu+0x30>;
ffa02ce6:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02ce8:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cea:	01 e8 00 00 	UNLINK;
ffa02cee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cf0:	84 04       	(P5:4) = [SP++];
ffa02cf2:	10 00       	RTS;
ffa02cf4:	08 a1       	R0 = [P1 + 0x10];
ffa02cf6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02cf8:	f7 1f       	IF CC JUMP 0xffa02ce6 <_ARP_lu+0x22> (BP);
ffa02cfa:	60 5a       	P1 = P0 + P4;
ffa02cfc:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02cfe:	b2 e0 03 20 	LSETUP(0xffa02d02 <_ARP_lu+0x3e>, 0xffa02d04 <_ARP_lu+0x40>) LC1 = P2;
ffa02d02:	48 98       	R0 = B[P1++] (X);
ffa02d04:	28 9a       	B[P5++] = R0;
ffa02d06:	01 e8 00 00 	UNLINK;
ffa02d0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d0c:	84 04       	(P5:4) = [SP++];
ffa02d0e:	10 00       	RTS;

ffa02d10 <_ARP_rx>:
ffa02d10:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02d12:	20 32       	P4 = R0;
ffa02d14:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02d18:	39 30       	R7 = R1;
ffa02d1a:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02d1c:	ff e3 86 f5 	CALL 0xffa01828 <_htons>;
ffa02d20:	c0 42       	R0 = R0.L (Z);
ffa02d22:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02d26:	08 08       	CC = R0 == R1;
ffa02d28:	06 18       	IF CC JUMP 0xffa02d34 <_ARP_rx+0x24>;
ffa02d2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d2c:	01 e8 00 00 	UNLINK;
ffa02d30:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02d32:	10 00       	RTS;
ffa02d34:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02d36:	07 0a       	CC = R7 <= R0 (IU);
ffa02d38:	f9 1f       	IF CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02d3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d3c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d3e:	ff e3 75 f5 	CALL 0xffa01828 <_htons>;
ffa02d42:	c0 42       	R0 = R0.L (Z);
ffa02d44:	07 08       	CC = R7 == R0;
ffa02d46:	f2 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02d48:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d4c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d4e:	ff e3 6d f5 	CALL 0xffa01828 <_htons>;
ffa02d52:	c0 42       	R0 = R0.L (Z);
ffa02d54:	07 08       	CC = R7 == R0;
ffa02d56:	ea 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02d58:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d5a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d5e:	08 08       	CC = R0 == R1;
ffa02d60:	e5 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02d62:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d64:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d66:	ff e3 61 f5 	CALL 0xffa01828 <_htons>;
ffa02d6a:	c0 42       	R0 = R0.L (Z);
ffa02d6c:	07 08       	CC = R7 == R0;
ffa02d6e:	0c 14       	IF !CC JUMP 0xffa02d86 <_ARP_rx+0x76> (BP);
ffa02d70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02d74:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02d78:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02d7c:	10 99       	R0 = B[P2] (Z);
ffa02d7e:	01 08       	CC = R1 == R0;
ffa02d80:	ae 18       	IF CC JUMP 0xffa02edc <_ARP_rx+0x1cc>;
ffa02d82:	00 00       	NOP;
ffa02d84:	00 00       	NOP;
ffa02d86:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d88:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d8a:	ff e3 4f f5 	CALL 0xffa01828 <_htons>;
ffa02d8e:	c0 42       	R0 = R0.L (Z);
ffa02d90:	07 08       	CC = R7 == R0;
ffa02d92:	cc 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02d94:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d98:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d9a:	ff e3 47 f5 	CALL 0xffa01828 <_htons>;
ffa02d9e:	c0 42       	R0 = R0.L (Z);
ffa02da0:	07 08       	CC = R7 == R0;
ffa02da2:	c4 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02da4:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02da6:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02daa:	08 08       	CC = R0 == R1;
ffa02dac:	bf 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02dae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02db0:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02db2:	ff e3 3b f5 	CALL 0xffa01828 <_htons>;
ffa02db6:	c0 42       	R0 = R0.L (Z);
ffa02db8:	07 08       	CC = R7 == R0;
ffa02dba:	b8 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02dbc:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02dc0:	07 e1 60 0c 	R7.L = 0xc60;		/* (3168)	R7=0xff900c60 <_NetOurIP>(-7336864) */
ffa02dc4:	17 32       	P2 = R7;
ffa02dc6:	a1 a2       	R1 = [P4 + 0x28];
ffa02dc8:	10 91       	R0 = [P2];
ffa02dca:	01 08       	CC = R1 == R0;
ffa02dcc:	af 17       	IF !CC JUMP 0xffa02d2a <_ARP_rx+0x1a> (BP);
ffa02dce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02dd2:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02dd6:	10 95       	R0 = W[P2] (Z);
ffa02dd8:	10 32       	P2 = R0;
ffa02dda:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c6c <_NetArpLut> */
ffa02dde:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02de2:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02de4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c6c <_NetArpLut> */
ffa02de8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02dea:	52 91       	P2 = [P2];
ffa02dec:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02df0:	93 ad       	P3 = [P2 + 0x18];
ffa02df2:	18 97       	W[P3] = R0;
ffa02df4:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02df8:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02dfc:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02e00:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02e04:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02e08:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02e0c:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02e10:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02e14:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02e18:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02e1c:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02e20:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02e24:	68 99       	R0 = B[P5] (X);
ffa02e26:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02e2a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02e2e:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02e32:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02e36:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02e3a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02e3e:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02e42:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02e46:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02e4a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02e4e:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02e52:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e56:	ff e3 e9 f4 	CALL 0xffa01828 <_htons>;
ffa02e5a:	d8 b5       	W[P3 + 0xe] = R0;
ffa02e5c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e5e:	ff e3 e5 f4 	CALL 0xffa01828 <_htons>;
ffa02e62:	18 b6       	W[P3 + 0x10] = R0;
ffa02e64:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e68:	ff e3 e0 f4 	CALL 0xffa01828 <_htons>;
ffa02e6c:	58 b6       	W[P3 + 0x12] = R0;
ffa02e6e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02e70:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02e74:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e76:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02e7a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02e7c:	ff e3 d6 f4 	CALL 0xffa01828 <_htons>;
ffa02e80:	44 32       	P0 = P4;
ffa02e82:	d8 b6       	W[P3 + 0x16] = R0;
ffa02e84:	53 32       	P2 = P3;
ffa02e86:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02e88:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e8a:	b2 e0 08 10 	LSETUP(0xffa02e8e <_ARP_rx+0x17e>, 0xffa02e9a <_ARP_rx+0x18a>) LC1 = P1;
ffa02e8e:	68 98       	R0 = B[P5++] (X);
ffa02e90:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02e94:	40 98       	R0 = B[P0++] (X);
ffa02e96:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02e9a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02e9c:	17 32       	P2 = R7;
ffa02e9e:	50 99       	R0 = B[P2] (X);
ffa02ea0:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02ea4:	10 91       	R0 = [P2];
ffa02ea6:	40 4e       	R0 >>= 0x8;
ffa02ea8:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02eac:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02eb0:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02eb4:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02eb8:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02ebc:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02ec0:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02ec4:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02ec8:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02ecc:	f3 b0       	[SP + 0xc] = R3;
ffa02ece:	ff e3 03 f4 	CALL 0xffa016d4 <_FormatIPAddress>;
ffa02ed2:	98 b2       	[P3 + 0x28] = R0;
ffa02ed4:	ff e3 54 f6 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa02ed8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02eda:	29 2f       	JUMP.S 0xffa02d2c <_ARP_rx+0x1c>;
ffa02edc:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02ee0:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02ee4:	01 08       	CC = R1 == R0;
ffa02ee6:	50 17       	IF !CC JUMP 0xffa02d86 <_ARP_rx+0x76> (BP);
ffa02ee8:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02eec:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02ef0:	01 08       	CC = R1 == R0;
ffa02ef2:	4a 17       	IF !CC JUMP 0xffa02d86 <_ARP_rx+0x76> (BP);
ffa02ef4:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02ef8:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02efc:	01 08       	CC = R1 == R0;
ffa02efe:	44 17       	IF !CC JUMP 0xffa02d86 <_ARP_rx+0x76> (BP);
ffa02f00:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02f04:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02f08:	01 08       	CC = R1 == R0;
ffa02f0a:	3e 17       	IF !CC JUMP 0xffa02d86 <_ARP_rx+0x76> (BP);
ffa02f0c:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02f10:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02f14:	01 08       	CC = R1 == R0;
ffa02f16:	38 17       	IF !CC JUMP 0xffa02d86 <_ARP_rx+0x76> (BP);
ffa02f18:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02f1a:	44 30       	R0 = P4;
ffa02f1c:	ff e3 a6 f4 	CALL 0xffa01868 <_pack4chars>;
ffa02f20:	38 30       	R7 = R0;
ffa02f22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02f26:	0f 30       	R1 = R7;
ffa02f28:	00 e1 a4 04 	R0.L = 0x4a4;		/* (1188)	R0=0xff9004a4(-7338844) */
ffa02f2c:	ff e3 76 ee 	CALL 0xffa00c18 <_printf_ip>;
ffa02f30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004a4(-7338844) */
ffa02f34:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02f38:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02f3a:	ff e3 0b ed 	CALL 0xffa00950 <_printf_str>;
ffa02f3e:	07 30       	R0 = R7;
ffa02f40:	4c 30       	R1 = P4;
ffa02f42:	ff e3 81 fe 	CALL 0xffa02c44 <_ARP_lut_add>;
ffa02f46:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f48:	f2 2e       	JUMP.S 0xffa02d2c <_ARP_rx+0x1c>;
	...

ffa02f4c <_ARP_tx>:
ffa02f4c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02f4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02f52:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f56:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02f5a:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02f5e:	10 95 00 00 
ffa02f62:	10 32       	P2 = R0;
ffa02f64:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f68:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02f6c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02f6e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa02f72:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f74:	52 91       	P2 = [P2];
ffa02f76:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02f7a:	94 ad       	P4 = [P2 + 0x18];
ffa02f7c:	20 97       	W[P4] = R0;
ffa02f7e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02f80:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02f84:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02f88:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02f8c:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02f90:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02f94:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02f98:	68 99       	R0 = B[P5] (X);
ffa02f9a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02f9e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02fa2:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02fa6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02faa:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02fae:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02fb2:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02fb6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02fba:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02fbe:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02fc2:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02fc6:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02fca:	ff e3 2f f4 	CALL 0xffa01828 <_htons>;
ffa02fce:	e0 b5       	W[P4 + 0xe] = R0;
ffa02fd0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fd2:	ff e3 2b f4 	CALL 0xffa01828 <_htons>;
ffa02fd6:	20 b6       	W[P4 + 0x10] = R0;
ffa02fd8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fdc:	ff e3 26 f4 	CALL 0xffa01828 <_htons>;
ffa02fe0:	60 b6       	W[P4 + 0x12] = R0;
ffa02fe2:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02fe4:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02fe8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02fea:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02fee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ff0:	ff e3 1c f4 	CALL 0xffa01828 <_htons>;
ffa02ff4:	e0 b6       	W[P4 + 0x16] = R0;
ffa02ff6:	54 32       	P2 = P4;
ffa02ff8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ffa:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02ffc:	b2 e0 07 10 	LSETUP(0xffa03000 <_ARP_tx+0xb4>, 0xffa0300a <_ARP_tx+0xbe>) LC1 = P1;
ffa03000:	68 98       	R0 = B[P5++] (X);
ffa03002:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03006:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa0300a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0300c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa03010:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa03014:	50 99       	R0 = B[P2] (X);
ffa03016:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa0301a:	10 91       	R0 = [P2];
ffa0301c:	40 4e       	R0 >>= 0x8;
ffa0301e:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa03022:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03026:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa0302a:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0302e:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa03032:	a7 b2       	[P4 + 0x28] = R7;
ffa03034:	01 e8 00 00 	UNLINK;
ffa03038:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0303a:	ff e2 a1 f5 	JUMP.L 0xffa01b7c <_bfin_EMAC_send_nocopy>;
	...

ffa03040 <_ARP_req>:
ffa03040:	ec 05       	[--SP] = (R7:5, P5:4);
ffa03042:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03046:	38 30       	R7 = R0;
ffa03048:	ff e3 3e fe 	CALL 0xffa02cc4 <_ARP_lu>;
ffa0304c:	00 0c       	CC = R0 == 0x0;
ffa0304e:	50 10       	IF !CC JUMP 0xffa030ee <_ARP_req+0xae>;
ffa03050:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c60 */
ffa03054:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa03058:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa0305c:	16 91       	R6 = [P2];
ffa0305e:	0c e1 6c 0c 	P4.L = 0xc6c;		/* (3180)	P4=0xff900c6c <_NetArpLut> */
ffa03062:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03066:	4c 32       	P1 = P4;
ffa03068:	46 51       	R5 = R6 + R0;
ffa0306a:	6c 32       	P5 = P4;
ffa0306c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0306e:	b2 e0 06 20 	LSETUP(0xffa03072 <_ARP_req+0x32>, 0xffa0307a <_ARP_req+0x3a>) LC1 = P2;
ffa03072:	08 91       	R0 = [P1];
ffa03074:	07 08       	CC = R7 == R0;
ffa03076:	21 18       	IF CC JUMP 0xffa030b8 <_ARP_req+0x78>;
ffa03078:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0307a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0307c:	ff e3 be fd 	CALL 0xffa02bf8 <_ARP_lut_find>;
ffa03080:	10 32       	P2 = R0;
ffa03082:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03084:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03088:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut_age> */
ffa0308c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0308e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03090:	10 b1       	[P2 + 0x10] = R0;
ffa03092:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03096:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0309a:	17 93 00 00 
ffa0309e:	d0 b0       	[P2 + 0xc] = R0;
ffa030a0:	48 95       	R0 = W[P1] (X);
ffa030a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa030a4:	08 97       	W[P1] = R0;
ffa030a6:	50 b5       	W[P2 + 0xa] = R0;
ffa030a8:	07 30       	R0 = R7;
ffa030aa:	ff e3 51 ff 	CALL 0xffa02f4c <_ARP_tx>;
ffa030ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030b0:	01 e8 00 00 	UNLINK;
ffa030b4:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030b6:	10 00       	RTS;
ffa030b8:	08 a1       	R0 = [P1 + 0x10];
ffa030ba:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa030bc:	de 1f       	IF CC JUMP 0xffa03078 <_ARP_req+0x38> (BP);
ffa030be:	e8 a0       	R0 = [P5 + 0xc];
ffa030c0:	86 09       	CC = R6 < R0 (IU);
ffa030c2:	f6 1f       	IF CC JUMP 0xffa030ae <_ARP_req+0x6e> (BP);
ffa030c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa030c8:	0f 30       	R1 = R7;
ffa030ca:	00 e1 c8 04 	R0.L = 0x4c8;		/* (1224)	R0=0xff9004c8(-7338808) */
ffa030ce:	ff e3 a5 ed 	CALL 0xffa00c18 <_printf_ip>;
ffa030d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c8(-7338808) */
ffa030d6:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa030da:	ff e3 3b ec 	CALL 0xffa00950 <_printf_str>;
ffa030de:	07 30       	R0 = R7;
ffa030e0:	ff e3 36 ff 	CALL 0xffa02f4c <_ARP_tx>;
ffa030e4:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa030e8:	ed b0 00 00 
ffa030ec:	e2 2f       	JUMP.S 0xffa030b0 <_ARP_req+0x70>;
ffa030ee:	01 e8 00 00 	UNLINK;
ffa030f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030f4:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030f6:	10 00       	RTS;

ffa030f8 <_tcp_length>:
ffa030f8:	c5 04       	[--SP] = (P5:5);
ffa030fa:	28 32       	P5 = R0;
ffa030fc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03100:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa03102:	ff e3 93 f3 	CALL 0xffa01828 <_htons>;
ffa03106:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa0310a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0310c:	51 54       	R1 = R1 & R2;
ffa0310e:	11 4f       	R1 <<= 0x2;
ffa03110:	c0 42       	R0 = R0.L (Z);
ffa03112:	08 52       	R0 = R0 - R1;
ffa03114:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03118:	11 4d       	R1 >>>= 0x2;
ffa0311a:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa0311c:	51 54       	R1 = R1 & R2;
ffa0311e:	01 e8 00 00 	UNLINK;
ffa03122:	08 52       	R0 = R0 - R1;
ffa03124:	85 04       	(P5:5) = [SP++];
ffa03126:	10 00       	RTS;

ffa03128 <_tcp_checksum_calc>:
ffa03128:	08 32       	P1 = R0;
ffa0312a:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0312c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03130:	28 32       	P5 = R0;
ffa03132:	31 30       	R6 = R1;
ffa03134:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa03136:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03138:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0313a:	b2 e0 03 20 	LSETUP(0xffa0313e <_tcp_checksum_calc+0x16>, 0xffa03140 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa0313e:	08 94       	R0 = W[P1++] (Z);
ffa03140:	45 51       	R5 = R5 + R0;
ffa03142:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03146:	10 4e       	R0 >>= 0x2;
ffa03148:	06 50       	R0 = R6 + R0;
ffa0314a:	c0 42       	R0 = R0.L (Z);
ffa0314c:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03150:	ff e3 6c f3 	CALL 0xffa01828 <_htons>;
ffa03154:	47 4f       	R7 <<= 0x8;
ffa03156:	c0 42       	R0 = R0.L (Z);
ffa03158:	c7 51       	R7 = R7 + R0;
ffa0315a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa0315c:	ef 50       	R3 = R7 + R5;
ffa0315e:	0d 1c       	IF CC JUMP 0xffa03178 <_tcp_checksum_calc+0x50> (BP);
ffa03160:	0e 32       	P1 = R6;
ffa03162:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03166:	10 4e       	R0 >>= 0x2;
ffa03168:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0316a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0316c:	a9 5a       	P2 = P1 + P5;
ffa0316e:	08 32       	P1 = R0;
ffa03170:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03172:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03174:	8a 5a       	P2 = P2 + P1;
ffa03176:	10 9b       	B[P2] = R0;
ffa03178:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa0317c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0317e:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03182:	71 50       	R1 = R1 + R6;
ffa03184:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03188:	09 4d       	R1 >>>= 0x1;
ffa0318a:	18 4e       	R0 >>= 0x3;
ffa0318c:	41 50       	R1 = R1 + R0;
ffa0318e:	01 0d       	CC = R1 <= 0x0;
ffa03190:	09 18       	IF CC JUMP 0xffa031a2 <_tcp_checksum_calc+0x7a>;
ffa03192:	55 32       	P2 = P5;
ffa03194:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03196:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03198:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0319a:	10 94       	R0 = W[P2++] (Z);
ffa0319c:	0a 08       	CC = R2 == R1;
ffa0319e:	c3 50       	R3 = R3 + R0;
ffa031a0:	fc 17       	IF !CC JUMP 0xffa03198 <_tcp_checksum_calc+0x70> (BP);
ffa031a2:	d8 42       	R0 = R3.L (Z);
ffa031a4:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa031a8:	08 50       	R0 = R0 + R1;
ffa031aa:	c0 43       	R0 =~ R0;
ffa031ac:	01 e8 00 00 	UNLINK;
ffa031b0:	c0 42       	R0 = R0.L (Z);
ffa031b2:	ad 05       	(R7:5, P5:5) = [SP++];
ffa031b4:	10 00       	RTS;
	...

ffa031b8 <_tcp_checksum_set>:
ffa031b8:	c5 04       	[--SP] = (P5:5);
ffa031ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa031be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031c2:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa031c6:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa031ca:	10 95 00 00 
ffa031ce:	10 32       	P2 = R0;
ffa031d0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut_age> */
ffa031d4:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa031d8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031da:	52 91       	P2 = [P2];
ffa031dc:	95 ad       	P5 = [P2 + 0x18];
ffa031de:	45 30       	R0 = P5;
ffa031e0:	ff e3 a4 ff 	CALL 0xffa03128 <_tcp_checksum_calc>;
ffa031e4:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa031e8:	01 e8 00 00 	UNLINK;
ffa031ec:	85 04       	(P5:5) = [SP++];
ffa031ee:	10 00       	RTS;

ffa031f0 <_tcp_checksum_check>:
ffa031f0:	10 32       	P2 = R0;
ffa031f2:	78 05       	[--SP] = (R7:7);
ffa031f4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031f8:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa031fc:	ff e3 96 ff 	CALL 0xffa03128 <_tcp_checksum_calc>;
ffa03200:	0f 30       	R1 = R7;
ffa03202:	c7 42       	R7 = R0.L (Z);
ffa03204:	39 08       	CC = R1 == R7;
ffa03206:	19 18       	IF CC JUMP 0xffa03238 <_tcp_checksum_check+0x48>;
ffa03208:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0320c:	00 e1 e8 04 	R0.L = 0x4e8;		/* (1256)	R0=0xff9004e8(-7338776) */
ffa03210:	ff e3 06 ec 	CALL 0xffa00a1c <_printf_hex>;
ffa03214:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e8(-7338776) */
ffa03218:	0f 30       	R1 = R7;
ffa0321a:	00 e1 04 05 	R0.L = 0x504;		/* (1284)	R0=0xff900504(-7338748) */
ffa0321e:	ff e3 ff eb 	CALL 0xffa00a1c <_printf_hex>;
ffa03222:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900504(-7338748) */
ffa03226:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0322a:	ff e3 93 eb 	CALL 0xffa00950 <_printf_str>;
ffa0322e:	01 e8 00 00 	UNLINK;
ffa03232:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03234:	38 05       	(R7:7) = [SP++];
ffa03236:	10 00       	RTS;
ffa03238:	01 e8 00 00 	UNLINK;
ffa0323c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0323e:	38 05       	(R7:7) = [SP++];
ffa03240:	10 00       	RTS;
	...

ffa03244 <_tcp_packet_setup>:
ffa03244:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03246:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0324a:	29 32       	P5 = R1;
ffa0324c:	7f 30       	R7 = FP;
ffa0324e:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03250:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03252:	f0 bb       	[FP -0x4] = R0;
ffa03254:	07 30       	R0 = R7;
ffa03256:	2a 30       	R5 = R2;
ffa03258:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa0325c:	ff e3 2c f7 	CALL 0xffa020b4 <_eth_header_setup>;
ffa03260:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03264:	68 99 00 00 
ffa03268:	80 0c       	CC = R0 < 0x0;
ffa0326a:	14 18       	IF CC JUMP 0xffa03292 <_tcp_packet_setup+0x4e>;
ffa0326c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0326e:	f0 b0       	[SP + 0xc] = R0;
ffa03270:	15 30       	R2 = R5;
ffa03272:	01 30       	R0 = R1;
ffa03274:	0f 30       	R1 = R7;
ffa03276:	ff e3 0d f3 	CALL 0xffa01890 <_ip_header_setup>;
ffa0327a:	b9 a2       	R1 = [FP + 0x28];
ffa0327c:	f1 b0       	[SP + 0xc] = R1;
ffa0327e:	f9 a2       	R1 = [FP + 0x2c];
ffa03280:	31 b1       	[SP + 0x10] = R1;
ffa03282:	72 43       	R2 = R6.B (Z);
ffa03284:	0f 30       	R1 = R7;
ffa03286:	ff e3 91 f3 	CALL 0xffa019a8 <_tcp_header_setup>;
ffa0328a:	01 e8 00 00 	UNLINK;
ffa0328e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03290:	10 00       	RTS;
ffa03292:	01 e8 00 00 	UNLINK;
ffa03296:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03298:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0329a:	10 00       	RTS;

ffa0329c <_tcp_burst>:
ffa0329c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0329e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa032a2:	78 b2       	[FP + 0x24] = R0;
ffa032a4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut_age> */
ffa032a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa032ac:	7a a2       	R2 = [FP + 0x24];
ffa032ae:	0b e1 54 0d 	P3.L = 0xd54;		/* (3412)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa032b2:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa032b6:	02 0d       	CC = R2 <= 0x0;
ffa032b8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa032bc:	10 91 00 00 
ffa032c0:	19 91       	R1 = [P3];
ffa032c2:	7e 18       	IF CC JUMP 0xffa033be <_tcp_burst+0x122>;
ffa032c4:	41 50       	R1 = R1 + R0;
ffa032c6:	8f 09       	CC = R7 < R1 (IU);
ffa032c8:	21 32       	P4 = R1;
ffa032ca:	7a 10       	IF !CC JUMP 0xffa033be <_tcp_burst+0x122>;
ffa032cc:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa032ce:	38 20       	JUMP.S 0xffa0333e <_tcp_burst+0xa2>;
ffa032d0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa032d2:	18 91       	R0 = [P3];
ffa032d4:	07 52       	R0 = R7 - R0;
ffa032d6:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa032da:	08 50       	R0 = R0 + R1;
ffa032dc:	16 30       	R2 = R6;
ffa032de:	0d 30       	R1 = R5;
ffa032e0:	ff e3 e0 ec 	CALL 0xffa00ca0 <_memcpy_>;
ffa032e4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa032e8:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa032ec:	08 91       	R0 = [P1];
ffa032ee:	f7 51       	R7 = R7 + R6;
ffa032f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa032f4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa032f8:	07 50       	R0 = R7 + R0;
ffa032fa:	10 93       	[P2] = R0;
ffa032fc:	26 50       	R0 = R6 + R4;
ffa032fe:	ff e3 5d ff 	CALL 0xffa031b8 <_tcp_checksum_set>;
ffa03302:	ff e3 3d f4 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa03306:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0330a:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa0330e:	10 95       	R0 = W[P2] (Z);
ffa03310:	10 32       	P2 = R0;
ffa03312:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03316:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa0331a:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0331c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0331e:	52 91       	P2 = [P2];
ffa03320:	90 a2       	R0 = [P2 + 0x28];
ffa03322:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03324:	07 1c       	IF CC JUMP 0xffa03332 <_tcp_burst+0x96> (BP);
ffa03326:	90 a2       	R0 = [P2 + 0x28];
ffa03328:	4d 30       	R1 = P5;
ffa0332a:	7a a2       	R2 = [FP + 0x24];
ffa0332c:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa0332e:	11 50       	R0 = R1 + R2;
ffa03330:	a8 06       	IF !CC P5 = R0;
ffa03332:	79 ae       	P1 = [FP + 0x24];
ffa03334:	69 09       	CC = P1 <= P5;
ffa03336:	45 18       	IF CC JUMP 0xffa033c0 <_tcp_burst+0x124>;
ffa03338:	44 30       	R0 = P4;
ffa0333a:	87 09       	CC = R7 < R0 (IU);
ffa0333c:	42 10       	IF !CC JUMP 0xffa033c0 <_tcp_burst+0x124>;
ffa0333e:	44 30       	R0 = P4;
ffa03340:	b8 52       	R2 = R0 - R7;
ffa03342:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa03346:	0a 09       	CC = R2 <= R1;
ffa03348:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0334a:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa0334c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_rxbuf> */
ffa03350:	08 06       	IF !CC R1 = R0;
ffa03352:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03356:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0335a:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa0335e:	08 91 00 00 
ffa03362:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa03366:	07 50       	R0 = R7 + R0;
ffa03368:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0336c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03370:	10 93       	[P2] = R0;
ffa03372:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqClient> */
ffa03376:	f1 b0       	[SP + 0xc] = R1;
ffa03378:	30 b1       	[SP + 0x10] = R0;
ffa0337a:	08 91       	R0 = [P1];
ffa0337c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03380:	70 b1       	[SP + 0x14] = R0;
ffa03382:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03386:	4f 30       	R1 = FP;
ffa03388:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa0338c:	12 91 00 00 
ffa03390:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03392:	ff e3 59 ff 	CALL 0xffa03244 <_tcp_packet_setup>;
ffa03396:	28 30       	R5 = R0;
ffa03398:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0339c:	00 0d       	CC = R0 <= 0x0;
ffa0339e:	ca 1b       	IF CC JUMP 0xffa03332 <_tcp_burst+0x96>;
ffa033a0:	18 91       	R0 = [P3];
ffa033a2:	38 0a       	CC = R0 <= R7 (IU);
ffa033a4:	96 1f       	IF CC JUMP 0xffa032d0 <_tcp_burst+0x34> (BP);
ffa033a6:	38 53       	R4 = R0 - R7;
ffa033a8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa033ac:	07 50       	R0 = R7 + R0;
ffa033ae:	0d 30       	R1 = R5;
ffa033b0:	14 30       	R2 = R4;
ffa033b2:	ff e3 77 ec 	CALL 0xffa00ca0 <_memcpy_>;
ffa033b6:	65 51       	R5 = R5 + R4;
ffa033b8:	a6 53       	R6 = R6 - R4;
ffa033ba:	e7 51       	R7 = R7 + R4;
ffa033bc:	8b 2f       	JUMP.S 0xffa032d2 <_tcp_burst+0x36>;
ffa033be:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa033c0:	01 e8 00 00 	UNLINK;
ffa033c4:	45 30       	R0 = P5;
ffa033c6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033c8:	10 00       	RTS;
	...

ffa033cc <_tcp_rx>:
ffa033cc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa033ce:	20 32       	P4 = R0;
ffa033d0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa033d4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa033d8:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa033da:	ff e3 27 f2 	CALL 0xffa01828 <_htons>;
ffa033de:	c0 42       	R0 = R0.L (Z);
ffa033e0:	07 08       	CC = R7 == R0;
ffa033e2:	06 18       	IF CC JUMP 0xffa033ee <_tcp_rx+0x22>;
ffa033e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033e6:	01 e8 00 00 	UNLINK;
ffa033ea:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033ec:	10 00       	RTS;
ffa033ee:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa033f2:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa033f4:	08 08       	CC = R0 == R1;
ffa033f6:	f7 17       	IF !CC JUMP 0xffa033e4 <_tcp_rx+0x18> (BP);
ffa033f8:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa033fc:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03400:	ff e3 14 f2 	CALL 0xffa01828 <_htons>;
ffa03404:	c0 42       	R0 = R0.L (Z);
ffa03406:	07 08       	CC = R7 == R0;
ffa03408:	ee 17       	IF !CC JUMP 0xffa033e4 <_tcp_rx+0x18> (BP);
ffa0340a:	44 30       	R0 = P4;
ffa0340c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0340e:	ff e3 81 f2 	CALL 0xffa01910 <_ip_header_checksum>;
ffa03412:	40 43       	R0 = R0.B (Z);
ffa03414:	00 0c       	CC = R0 == 0x0;
ffa03416:	e7 1f       	IF CC JUMP 0xffa033e4 <_tcp_rx+0x18> (BP);
ffa03418:	4c 30       	R1 = P4;
ffa0341a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0341c:	e0 a1       	R0 = [P4 + 0x1c];
ffa0341e:	ff e3 13 fc 	CALL 0xffa02c44 <_ARP_lut_add>;
ffa03422:	44 30       	R0 = P4;
ffa03424:	ff e3 6a fe 	CALL 0xffa030f8 <_tcp_length>;
ffa03428:	30 30       	R6 = R0;
ffa0342a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa0342e:	0e 30       	R1 = R6;
ffa03430:	00 e1 14 05 	R0.L = 0x514;		/* (1300)	R0=0xff900514(-7338732) */
ffa03434:	ff e3 50 eb 	CALL 0xffa00ad4 <_printf_int>;
ffa03438:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900514(-7338732) */
ffa0343c:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03440:	ff e3 88 ea 	CALL 0xffa00950 <_printf_str>;
ffa03444:	44 30       	R0 = P4;
ffa03446:	0e 30       	R1 = R6;
ffa03448:	ff e3 d4 fe 	CALL 0xffa031f0 <_tcp_checksum_check>;
ffa0344c:	40 43       	R0 = R0.B (Z);
ffa0344e:	00 0c       	CC = R0 == 0x0;
ffa03450:	ca 1b       	IF CC JUMP 0xffa033e4 <_tcp_rx+0x18>;
ffa03452:	00 00       	NOP;
ffa03454:	00 00       	NOP;
ffa03456:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03458:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa0345c:	48 43       	R0 = R1.B (Z);
ffa0345e:	10 08       	CC = R0 == R2;
ffa03460:	f1 18       	IF CC JUMP 0xffa03642 <_tcp_rx+0x276>;
ffa03462:	10 0c       	CC = R0 == 0x2;
ffa03464:	0a 19       	IF CC JUMP 0xffa03678 <_tcp_rx+0x2ac>;
ffa03466:	48 43       	R0 = R1.B (Z);
ffa03468:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0346a:	08 08       	CC = R0 == R1;
ffa0346c:	85 18       	IF CC JUMP 0xffa03576 <_tcp_rx+0x1aa>;
ffa0346e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03470:	ab 10       	IF !CC JUMP 0xffa035c6 <_tcp_rx+0x1fa>;
ffa03472:	00 00       	NOP;
ffa03474:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03478:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0347c:	00 00       	NOP;
ffa0347e:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03482:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03484:	38 10       	IF !CC JUMP 0xffa034f4 <_tcp_rx+0x128>;
ffa03486:	18 91       	R0 = [P3];
ffa03488:	10 0c       	CC = R0 == 0x2;
ffa0348a:	ad 17       	IF !CC JUMP 0xffa033e4 <_tcp_rx+0x18> (BP);
ffa0348c:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03490:	a0 a2       	R0 = [P4 + 0x28];
ffa03492:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa03496:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0349a:	ff e3 d3 f1 	CALL 0xffa01840 <_htonl>;
ffa0349e:	14 32       	P2 = R4;
ffa034a0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa034a4:	30 50       	R0 = R0 + R6;
ffa034a6:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa034aa:	28 93       	[P5] = R0;
ffa034ac:	e0 a1       	R0 = [P4 + 0x1c];
ffa034ae:	10 93       	[P2] = R0;
ffa034b0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa034b4:	e0 a2       	R0 = [P4 + 0x2c];
ffa034b6:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa034ba:	ff e3 c3 f1 	CALL 0xffa01840 <_htonl>;
ffa034be:	19 91       	R1 = [P3];
ffa034c0:	c8 53       	R7 = R0 - R1;
ffa034c2:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa034c6:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa034c8:	1e 1d       	IF CC JUMP 0xffa03704 <_tcp_rx+0x338> (BP);
ffa034ca:	06 0c       	CC = R6 == 0x0;
ffa034cc:	1c 15       	IF !CC JUMP 0xffa03704 <_tcp_rx+0x338> (BP);
ffa034ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa034d2:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034d6:	10 91       	R0 = [P2];
ffa034d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034dc:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa034e0:	11 91       	R1 = [P2];
ffa034e2:	08 50       	R0 = R0 + R1;
ffa034e4:	07 08       	CC = R7 == R0;
ffa034e6:	46 18       	IF CC JUMP 0xffa03572 <_tcp_rx+0x1a6>;
ffa034e8:	0f 30       	R1 = R7;
ffa034ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034ec:	ff e3 d8 fe 	CALL 0xffa0329c <_tcp_burst>;
ffa034f0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034f2:	7a 2f       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa034f4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa034f6:	1f 91       	R7 = [P3];
ffa034f8:	07 08       	CC = R7 == R0;
ffa034fa:	85 19       	IF CC JUMP 0xffa03804 <_tcp_rx+0x438>;
ffa034fc:	07 0c       	CC = R7 == 0x0;
ffa034fe:	c4 17       	IF !CC JUMP 0xffa03486 <_tcp_rx+0xba> (BP);
ffa03500:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03504:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa03508:	ff e3 24 ea 	CALL 0xffa00950 <_printf_str>;
ffa0350c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03510:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03514:	17 93       	[P2] = R7;
ffa03516:	a0 a2       	R0 = [P4 + 0x28];
ffa03518:	ff e3 94 f1 	CALL 0xffa01840 <_htonl>;
ffa0351c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03520:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03524:	10 93       	[P2] = R0;
ffa03526:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0352a:	e2 a1       	R2 = [P4 + 0x1c];
ffa0352c:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03530:	12 93       	[P2] = R2;
ffa03532:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa03536:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0353a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa0353e:	11 97       	W[P2] = R1;
ffa03540:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03542:	f1 b0       	[SP + 0xc] = R1;
ffa03544:	4f 30       	R1 = FP;
ffa03546:	30 b1       	[SP + 0x10] = R0;
ffa03548:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0354a:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa0354e:	77 b1 00 00 
ffa03552:	ff e3 79 fe 	CALL 0xffa03244 <_tcp_packet_setup>;
ffa03556:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0355a:	00 0d       	CC = R0 <= 0x0;
ffa0355c:	95 1b       	IF CC JUMP 0xffa03486 <_tcp_rx+0xba>;
ffa0355e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa03562:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03566:	17 93       	[P2] = R7;
ffa03568:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0356a:	ff e3 27 fe 	CALL 0xffa031b8 <_tcp_checksum_set>;
ffa0356e:	ff e3 07 f3 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa03572:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03574:	39 2f       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa03576:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa0357a:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0357e:	18 91       	R0 = [P3];
ffa03580:	08 0c       	CC = R0 == 0x1;
ffa03582:	b9 17       	IF !CC JUMP 0xffa034f4 <_tcp_rx+0x128> (BP);
ffa03584:	e0 a2       	R0 = [P4 + 0x2c];
ffa03586:	ff e3 5d f1 	CALL 0xffa01840 <_htonl>;
ffa0358a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0358e:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03592:	11 91       	R1 = [P2];
ffa03594:	08 08       	CC = R0 == R1;
ffa03596:	42 19       	IF CC JUMP 0xffa0381a <_tcp_rx+0x44e>;
ffa03598:	00 00       	NOP;
ffa0359a:	00 00       	NOP;
ffa0359c:	00 00       	NOP;
ffa0359e:	e0 a2       	R0 = [P4 + 0x2c];
ffa035a0:	ff e3 50 f1 	CALL 0xffa01840 <_htonl>;
ffa035a4:	08 30       	R1 = R0;
ffa035a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035aa:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa035ae:	ff e3 35 eb 	CALL 0xffa00c18 <_printf_ip>;
ffa035b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035b4:	18 93       	[P3] = R0;
ffa035b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa035ba:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa035be:	ff e3 c9 e9 	CALL 0xffa00950 <_printf_str>;
ffa035c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035c4:	11 2f       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa035c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035ca:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa035ce:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035d2:	ff e3 bf e9 	CALL 0xffa00950 <_printf_str>;
ffa035d6:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035da:	a0 a2       	R0 = [P4 + 0x28];
ffa035dc:	ff e3 32 f1 	CALL 0xffa01840 <_htonl>;
ffa035e0:	14 32       	P2 = R4;
ffa035e2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa035e6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa035ea:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa035ee:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa035f2:	28 93       	[P5] = R0;
ffa035f4:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa035f8:	18 91 00 00 
ffa035fc:	e2 a1       	R2 = [P4 + 0x1c];
ffa035fe:	09 64       	R1 += 0x1;		/* (  1) */
ffa03600:	10 0c       	CC = R0 == 0x2;
ffa03602:	12 93       	[P2] = R2;
ffa03604:	29 93       	[P5] = R1;
ffa03606:	03 18       	IF CC JUMP 0xffa0360c <_tcp_rx+0x240>;
ffa03608:	00 0c       	CC = R0 == 0x0;
ffa0360a:	c0 14       	IF !CC JUMP 0xffa0378a <_tcp_rx+0x3be> (BP);
ffa0360c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0360e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03612:	f0 b0       	[SP + 0xc] = R0;
ffa03614:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03618:	10 91       	R0 = [P2];
ffa0361a:	71 b1       	[SP + 0x14] = R1;
ffa0361c:	4f 30       	R1 = FP;
ffa0361e:	30 b1       	[SP + 0x10] = R0;
ffa03620:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03622:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03624:	ff e3 10 fe 	CALL 0xffa03244 <_tcp_packet_setup>;
ffa03628:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0362c:	00 0d       	CC = R0 <= 0x0;
ffa0362e:	ae 18       	IF CC JUMP 0xffa0378a <_tcp_rx+0x3be>;
ffa03630:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03632:	18 93       	[P3] = R0;
ffa03634:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03636:	ff e3 c1 fd 	CALL 0xffa031b8 <_tcp_checksum_set>;
ffa0363a:	ff e3 a1 f2 	CALL 0xffa01b7c <_bfin_EMAC_send_nocopy>;
ffa0363e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03640:	d3 2e       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa03642:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03646:	00 e1 28 05 	R0.L = 0x528;		/* (1320)	R0=0xff900528(-7338712) */
ffa0364a:	ff e3 83 e9 	CALL 0xffa00950 <_printf_str>;
ffa0364e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03652:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03656:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03658:	17 93       	[P2] = R7;
ffa0365a:	a0 a2       	R0 = [P4 + 0x28];
ffa0365c:	ff e3 f2 f0 	CALL 0xffa01840 <_htonl>;
ffa03660:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03664:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03668:	10 93       	[P2] = R0;
ffa0366a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0366e:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03672:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03674:	17 93       	[P2] = R7;
ffa03676:	b8 2e       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa03678:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0367c:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa03680:	ff e3 68 e9 	CALL 0xffa00950 <_printf_str>;
ffa03684:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03688:	a0 a2       	R0 = [P4 + 0x28];
ffa0368a:	ff e3 db f0 	CALL 0xffa01840 <_htonl>;
ffa0368e:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa03692:	28 93       	[P5] = R0;
ffa03694:	44 30       	R0 = P4;
ffa03696:	ff e3 31 fd 	CALL 0xffa030f8 <_tcp_length>;
ffa0369a:	29 91       	R1 = [P5];
ffa0369c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0369e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa036a2:	08 50       	R0 = R0 + R1;
ffa036a4:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa036a8:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa036ac:	11 97       	W[P2] = R1;
ffa036ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa036b2:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa036b6:	28 93 00 00 
ffa036ba:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa036be:	11 93       	[P2] = R1;
ffa036c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa036c4:	e2 a1       	R2 = [P4 + 0x1c];
ffa036c6:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa036ca:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa036cc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa036d0:	12 93       	[P2] = R2;
ffa036d2:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa036d6:	f1 b0       	[SP + 0xc] = R1;
ffa036d8:	29 91       	R1 = [P5];
ffa036da:	31 b1       	[SP + 0x10] = R1;
ffa036dc:	4f 30       	R1 = FP;
ffa036de:	70 b1       	[SP + 0x14] = R0;
ffa036e0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036e4:	ff e3 b0 fd 	CALL 0xffa03244 <_tcp_packet_setup>;
ffa036e8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036ec:	00 0d       	CC = R0 <= 0x0;
ffa036ee:	93 18       	IF CC JUMP 0xffa03814 <_tcp_rx+0x448>;
ffa036f0:	28 91       	R0 = [P5];
ffa036f2:	08 64       	R0 += 0x1;		/* (  1) */
ffa036f4:	28 93       	[P5] = R0;
ffa036f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa036fc:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03700:	10 93       	[P2] = R0;
ffa03702:	33 2f       	JUMP.S 0xffa03568 <_tcp_rx+0x19c>;
ffa03704:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03708:	28 54       	R0 = R0 & R5;
ffa0370a:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa0370c:	10 4d       	R0 >>>= 0x2;
ffa0370e:	54 30       	R2 = P4;
ffa03710:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03712:	02 50       	R0 = R2 + R0;
ffa03714:	5d 1c       	IF CC JUMP 0xffa037ce <_tcp_rx+0x402> (BP);
ffa03716:	0e 30       	R1 = R6;
ffa03718:	00 e3 16 05 	CALL 0xffa04144 <_httpCollate>;
ffa0371c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa03720:	18 91       	R0 = [P3];
ffa03722:	07 50       	R0 = R7 + R0;
ffa03724:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa03728:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c6c <_NetArpLut> */
ffa0372c:	28 93       	[P5] = R0;
ffa0372e:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_g_httpRxed> */
ffa03732:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03734:	80 4f       	R0 <<= 0x10;
ffa03736:	21 91       	R1 = [P4];
ffa03738:	00 e3 dc 02 	CALL 0xffa03cf0 <_httpResp>;
ffa0373c:	00 0c       	CC = R0 == 0x0;
ffa0373e:	22 1c       	IF CC JUMP 0xffa03782 <_tcp_rx+0x3b6> (BP);
ffa03740:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03744:	28 91       	R0 = [P5];
ffa03746:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa0374a:	10 93       	[P2] = R0;
ffa0374c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa03750:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03754:	11 91       	R1 = [P2];
ffa03756:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa0375a:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa0375e:	10 91       	R0 = [P2];
ffa03760:	41 50       	R1 = R1 + R0;
ffa03762:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03766:	00 e1 ac 05 	R0.L = 0x5ac;		/* (1452)	R0=0xff9005ac(-7338580) */
ffa0376a:	ff e3 b5 e9 	CALL 0xffa00ad4 <_printf_int>;
ffa0376e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005ac(-7338580) */
ffa03772:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03776:	ff e3 ed e8 	CALL 0xffa00950 <_printf_str>;
ffa0377a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0377c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0377e:	ff e3 8f fd 	CALL 0xffa0329c <_tcp_burst>;
ffa03782:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03784:	20 93       	[P4] = R0;
ffa03786:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03788:	2f 2e       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa0378a:	18 91       	R0 = [P3];
ffa0378c:	18 0c       	CC = R0 == 0x3;
ffa0378e:	77 16       	IF !CC JUMP 0xffa0347c <_tcp_rx+0xb0> (BP);
ffa03790:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03794:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03796:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0379a:	10 93       	[P2] = R0;
ffa0379c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0379e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa037a2:	f0 b0       	[SP + 0xc] = R0;
ffa037a4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa037a8:	10 91       	R0 = [P2];
ffa037aa:	14 32       	P2 = R4;
ffa037ac:	30 b1       	[SP + 0x10] = R0;
ffa037ae:	28 91       	R0 = [P5];
ffa037b0:	70 b1       	[SP + 0x14] = R0;
ffa037b2:	4f 30       	R1 = FP;
ffa037b4:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037b8:	12 91 00 00 
ffa037bc:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037be:	ff e3 43 fd 	CALL 0xffa03244 <_tcp_packet_setup>;
ffa037c2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037c6:	00 0d       	CC = R0 <= 0x0;
ffa037c8:	5a 1a       	IF CC JUMP 0xffa0347c <_tcp_rx+0xb0>;
ffa037ca:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa037cc:	96 2f       	JUMP.S 0xffa036f8 <_tcp_rx+0x32c>;
ffa037ce:	0e 30       	R1 = R6;
ffa037d0:	00 e3 ba 04 	CALL 0xffa04144 <_httpCollate>;
ffa037d4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa037d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa037da:	f0 b0       	[SP + 0xc] = R0;
ffa037dc:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa037e0:	10 91       	R0 = [P2];
ffa037e2:	14 32       	P2 = R4;
ffa037e4:	30 b1       	[SP + 0x10] = R0;
ffa037e6:	28 91       	R0 = [P5];
ffa037e8:	70 b1       	[SP + 0x14] = R0;
ffa037ea:	4f 30       	R1 = FP;
ffa037ec:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037f0:	12 91 00 00 
ffa037f4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037f6:	ff e3 27 fd 	CALL 0xffa03244 <_tcp_packet_setup>;
ffa037fa:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037fe:	00 0d       	CC = R0 <= 0x0;
ffa03800:	b4 16       	IF !CC JUMP 0xffa03568 <_tcp_rx+0x19c> (BP);
ffa03802:	f1 2d       	JUMP.S 0xffa033e4 <_tcp_rx+0x18>;
ffa03804:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03808:	00 e1 7c 05 	R0.L = 0x57c;		/* (1404)	R0=0xff90057c(-7338628) */
ffa0380c:	ff e3 a2 e8 	CALL 0xffa00950 <_printf_str>;
ffa03810:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03812:	ea 2d       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
ffa03814:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03818:	27 2e       	JUMP.S 0xffa03466 <_tcp_rx+0x9a>;
ffa0381a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0381c:	18 93       	[P3] = R0;
ffa0381e:	a0 a2       	R0 = [P4 + 0x28];
ffa03820:	ff e3 10 f0 	CALL 0xffa01840 <_htonl>;
ffa03824:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03828:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa0382c:	10 93       	[P2] = R0;
ffa0382e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03832:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa03836:	ff e3 8d e8 	CALL 0xffa00950 <_printf_str>;
ffa0383a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0383c:	d5 2d       	JUMP.S 0xffa033e6 <_tcp_rx+0x1a>;
	...

ffa03840 <_htmlForm>:
ffa03840:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03844:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03848:	02 e1 c8 05 	R2.L = 0x5c8;		/* (1480)	R2=0xff9005c8(-7338552) */
ffa0384c:	01 e8 00 00 	UNLINK;
ffa03850:	ff e2 58 ea 	JUMP.L 0xffa00d00 <_strcpy_>;

ffa03854 <_htmlDiv>:
ffa03854:	12 43       	R2 = R2.B (X);
ffa03856:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0385a:	1a 08       	CC = R2 == R3;
ffa0385c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03860:	09 18       	IF CC JUMP 0xffa03872 <_htmlDiv+0x1e>;
ffa03862:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c8(-7338552) */
ffa03866:	02 e1 1c 06 	R2.L = 0x61c;		/* (1564)	R2=0xff90061c(-7338468) */
ffa0386a:	01 e8 00 00 	UNLINK;
ffa0386e:	ff e2 49 ea 	JUMP.L 0xffa00d00 <_strcpy_>;
ffa03872:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90061c(-7338468) */
ffa03876:	02 e1 e8 05 	R2.L = 0x5e8;		/* (1512)	R2=0xff9005e8(-7338520) */
ffa0387a:	01 e8 00 00 	UNLINK;
ffa0387e:	ff e2 41 ea 	JUMP.L 0xffa00d00 <_strcpy_>;
	...

ffa03884 <_html404>:
ffa03884:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03888:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0388a:	4f 30       	R1 = FP;
ffa0388c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e8(-7338520) */
ffa03890:	f0 bb       	[FP -0x4] = R0;
ffa03892:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03894:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03898:	02 e1 50 06 	R2.L = 0x650;		/* (1616)	R2=0xff900650(-7338416) */
ffa0389c:	ff e3 32 ea 	CALL 0xffa00d00 <_strcpy_>;
ffa038a0:	f0 b9       	R0 = [FP -0x4];
ffa038a2:	01 e8 00 00 	UNLINK;
ffa038a6:	10 00       	RTS;

ffa038a8 <_htmlCursorOption>:
ffa038a8:	68 05       	[--SP] = (R7:5);
ffa038aa:	2a 30       	R5 = R2;
ffa038ac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900650(-7338416) */
ffa038b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa038b4:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa038b8:	3f a2 00 00 
ffa038bc:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa038c0:	ff e3 20 ea 	CALL 0xffa00d00 <_strcpy_>;
ffa038c4:	0e 30       	R1 = R6;
ffa038c6:	15 30       	R2 = R5;
ffa038c8:	ff e3 82 eb 	CALL 0xffa00fcc <_strprintf_int>;
ffa038cc:	3d 08       	CC = R5 == R7;
ffa038ce:	16 18       	IF CC JUMP 0xffa038fa <_htmlCursorOption+0x52>;
ffa038d0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa038d4:	0e 30       	R1 = R6;
ffa038d6:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa038da:	ff e3 13 ea 	CALL 0xffa00d00 <_strcpy_>;
ffa038de:	0e 30       	R1 = R6;
ffa038e0:	15 30       	R2 = R5;
ffa038e2:	ff e3 75 eb 	CALL 0xffa00fcc <_strprintf_int>;
ffa038e6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa038ea:	01 e8 00 00 	UNLINK;
ffa038ee:	0e 30       	R1 = R6;
ffa038f0:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa038f4:	28 05       	(R7:5) = [SP++];
ffa038f6:	ff e2 05 ea 	JUMP.L 0xffa00d00 <_strcpy_>;
ffa038fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa038fe:	0e 30       	R1 = R6;
ffa03900:	02 e1 7c 06 	R2.L = 0x67c;		/* (1660)	R2=0xff90067c(-7338372) */
ffa03904:	ff e3 fe e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03908:	e4 2f       	JUMP.S 0xffa038d0 <_htmlCursorOption+0x28>;
	...

ffa0390c <_htmlCursorSelect>:
ffa0390c:	60 05       	[--SP] = (R7:4);
ffa0390e:	3a 30       	R7 = R2;
ffa03910:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90067c(-7338372) */
ffa03914:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03918:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa0391c:	7e a2 00 00 
ffa03920:	02 e1 a4 06 	R2.L = 0x6a4;		/* (1700)	R2=0xff9006a4(-7338332) */
ffa03924:	bc a2       	R4 = [FP + 0x28];
ffa03926:	ff e3 ed e9 	CALL 0xffa00d00 <_strcpy_>;
ffa0392a:	17 30       	R2 = R7;
ffa0392c:	0d 30       	R1 = R5;
ffa0392e:	ff e3 e9 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03932:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a4(-7338332) */
ffa03936:	0d 30       	R1 = R5;
ffa03938:	02 e1 b0 06 	R2.L = 0x6b0;		/* (1712)	R2=0xff9006b0(-7338320) */
ffa0393c:	ff e3 e2 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03940:	0d 30       	R1 = R5;
ffa03942:	16 30       	R2 = R6;
ffa03944:	ff e3 de e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03948:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006b0(-7338320) */
ffa0394c:	0d 30       	R1 = R5;
ffa0394e:	02 e1 cc 06 	R2.L = 0x6cc;		/* (1740)	R2=0xff9006cc(-7338292) */
ffa03952:	ff e3 d7 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03956:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03958:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa0395c:	f4 b0 00 00 
ffa03960:	17 30       	R2 = R7;
ffa03962:	ff e3 a3 ff 	CALL 0xffa038a8 <_htmlCursorOption>;
ffa03966:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03968:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0396a:	0f 08       	CC = R7 == R1;
ffa0396c:	f6 17       	IF !CC JUMP 0xffa03958 <_htmlCursorSelect+0x4c> (BP);
ffa0396e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006cc(-7338292) */
ffa03972:	01 e8 00 00 	UNLINK;
ffa03976:	0d 30       	R1 = R5;
ffa03978:	02 e1 d0 06 	R2.L = 0x6d0;		/* (1744)	R2=0xff9006d0(-7338288) */
ffa0397c:	20 05       	(R7:4) = [SP++];
ffa0397e:	ff e2 c1 e9 	JUMP.L 0xffa00d00 <_strcpy_>;
	...

ffa03984 <_htmlDefault>:
ffa03984:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03986:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0398a:	77 30       	R6 = FP;
ffa0398c:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa0398e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03990:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d0(-7338288) */
ffa03994:	f0 bb       	[FP -0x4] = R0;
ffa03996:	0e 30       	R1 = R6;
ffa03998:	02 e1 e8 06 	R2.L = 0x6e8;		/* (1768)	R2=0xff9006e8(-7338264) */
ffa0399c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa039a0:	ff e3 b0 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa039a4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039a8:	0e 30       	R1 = R6;
ffa039aa:	ff e3 55 ff 	CALL 0xffa03854 <_htmlDiv>;
ffa039ae:	0e 30       	R1 = R6;
ffa039b0:	ff e3 48 ff 	CALL 0xffa03840 <_htmlForm>;
ffa039b4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa039b8:	0e 30       	R1 = R6;
ffa039ba:	02 e1 38 07 	R2.L = 0x738;		/* (1848)	R2=0xff900738(-7338184) */
ffa039be:	ff e3 a1 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa039c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa039c6:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa039ca:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa039ce:	10 99 00 00 
ffa039d2:	00 0c       	CC = R0 == 0x0;
ffa039d4:	2c 1d       	IF CC JUMP 0xffa03c2c <_htmlDefault+0x2a8> (BP);
ffa039d6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900738(-7338184) */
ffa039da:	01 30       	R0 = R1;
ffa039dc:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa039e0:	0e 30       	R1 = R6;
ffa039e2:	ff e3 8f e9 	CALL 0xffa00d00 <_strcpy_>;
ffa039e6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa039ea:	0e 30       	R1 = R6;
ffa039ec:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa039f0:	ff e3 88 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa039f4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039f8:	0e 30       	R1 = R6;
ffa039fa:	ff e3 2d ff 	CALL 0xffa03854 <_htmlDiv>;
ffa039fe:	0e 30       	R1 = R6;
ffa03a00:	ff e3 20 ff 	CALL 0xffa03840 <_htmlForm>;
ffa03a04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a08:	0e 30       	R1 = R6;
ffa03a0a:	02 e1 b4 07 	R2.L = 0x7b4;		/* (1972)	R2=0xff9007b4(-7338060) */
ffa03a0e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa03a12:	ff e3 77 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03a16:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03a18:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03a1a:	0d e1 64 0c 	P5.L = 0xc64;		/* (3172)	P5=0xff900c64 <_NetDataDestIP> */
ffa03a1e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b4(-7338060) */
ffa03a22:	0e 30       	R1 = R6;
ffa03a24:	02 e1 d0 07 	R2.L = 0x7d0;		/* (2000)	R2=0xff9007d0(-7338032) */
ffa03a28:	ff e3 6c e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03a2c:	17 30       	R2 = R7;
ffa03a2e:	0e 30       	R1 = R6;
ffa03a30:	ff e3 ce ea 	CALL 0xffa00fcc <_strprintf_int>;
ffa03a34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d0(-7338032) */
ffa03a38:	0e 30       	R1 = R6;
ffa03a3a:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03a3e:	ff e3 61 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03a42:	2a 91       	R2 = [P5];
ffa03a44:	6a 40       	R2 >>= R5;
ffa03a46:	52 43       	R2 = R2.B (Z);
ffa03a48:	0e 30       	R1 = R6;
ffa03a4a:	ff e3 c1 ea 	CALL 0xffa00fcc <_strprintf_int>;
ffa03a4e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03a52:	0e 30       	R1 = R6;
ffa03a54:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03a58:	ff e3 54 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03a5c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03a5e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03a60:	0f 08       	CC = R7 == R1;
ffa03a62:	45 64       	R5 += 0x8;		/* (  8) */
ffa03a64:	dd 17       	IF !CC JUMP 0xffa03a1e <_htmlDefault+0x9a> (BP);
ffa03a66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03a6a:	0e 30       	R1 = R6;
ffa03a6c:	02 e1 08 08 	R2.L = 0x808;		/* (2056)	R2=0xff900808(-7337976) */
ffa03a70:	ff e3 48 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03a74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900808(-7337976) */
ffa03a78:	0e 30       	R1 = R6;
ffa03a7a:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03a7e:	ff e3 41 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03a82:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a86:	0e 30       	R1 = R6;
ffa03a88:	ff e3 e6 fe 	CALL 0xffa03854 <_htmlDiv>;
ffa03a8c:	0e 30       	R1 = R6;
ffa03a8e:	ff e3 d9 fe 	CALL 0xffa03840 <_htmlForm>;
ffa03a92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a96:	0e 30       	R1 = R6;
ffa03a98:	02 e1 2c 08 	R2.L = 0x82c;		/* (2092)	R2=0xff90082c(-7337940) */
ffa03a9c:	ff e3 32 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03aa0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03aa4:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03aa8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03aac:	10 99 00 00 
ffa03ab0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03ab2:	c6 1c       	IF CC JUMP 0xffa03c3e <_htmlDefault+0x2ba> (BP);
ffa03ab4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90082c(-7337940) */
ffa03ab8:	01 30       	R0 = R1;
ffa03aba:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03abe:	0e 30       	R1 = R6;
ffa03ac0:	ff e3 20 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03ac4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03ac8:	0e 30       	R1 = R6;
ffa03aca:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03ace:	ff e3 19 e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03ad2:	0e 30       	R1 = R6;
ffa03ad4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03ad8:	ff e3 be fe 	CALL 0xffa03854 <_htmlDiv>;
ffa03adc:	0e 30       	R1 = R6;
ffa03ade:	ff e3 b1 fe 	CALL 0xffa03840 <_htmlForm>;
ffa03ae2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03ae6:	0e 30       	R1 = R6;
ffa03ae8:	02 e1 6c 08 	R2.L = 0x86c;		/* (2156)	R2=0xff90086c(-7337876) */
ffa03aec:	ff e3 0a e9 	CALL 0xffa00d00 <_strcpy_>;
ffa03af0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03af4:	01 e1 9c 08 	R1.L = 0x89c;		/* (2204)	R1=0xff90089c(-7337828) */
ffa03af8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90086c(-7337876) */
ffa03afc:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03b00:	f1 b0 00 00 
ffa03b04:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa03b08:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b0c:	37 b1 00 00 
ffa03b10:	ff e3 fe fe 	CALL 0xffa0390c <_htmlCursorSelect>;
ffa03b14:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90089c(-7337828) */
ffa03b18:	01 e1 b4 08 	R1.L = 0x8b4;		/* (2228)	R1=0xff9008b4(-7337804) */
ffa03b1c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa03b20:	f1 b0       	[SP + 0xc] = R1;
ffa03b22:	02 e1 a8 08 	R2.L = 0x8a8;		/* (2216)	R2=0xff9008a8(-7337816) */
ffa03b26:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b2a:	37 b1 00 00 
ffa03b2e:	ff e3 ef fe 	CALL 0xffa0390c <_htmlCursorSelect>;
ffa03b32:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008b4(-7337804) */
ffa03b36:	01 e1 cc 08 	R1.L = 0x8cc;		/* (2252)	R1=0xff9008cc(-7337780) */
ffa03b3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a8(-7337816) */
ffa03b3e:	f1 b0       	[SP + 0xc] = R1;
ffa03b40:	02 e1 c0 08 	R2.L = 0x8c0;		/* (2240)	R2=0xff9008c0(-7337792) */
ffa03b44:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b48:	37 b1 00 00 
ffa03b4c:	ff e3 e0 fe 	CALL 0xffa0390c <_htmlCursorSelect>;
ffa03b50:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008cc(-7337780) */
ffa03b54:	01 e1 e0 08 	R1.L = 0x8e0;		/* (2272)	R1=0xff9008e0(-7337760) */
ffa03b58:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c0(-7337792) */
ffa03b5c:	f1 b0       	[SP + 0xc] = R1;
ffa03b5e:	02 e1 d8 08 	R2.L = 0x8d8;		/* (2264)	R2=0xff9008d8(-7337768) */
ffa03b62:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b66:	37 b1 00 00 
ffa03b6a:	ff e3 d1 fe 	CALL 0xffa0390c <_htmlCursorSelect>;
ffa03b6e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d8(-7337768) */
ffa03b72:	0e 30       	R1 = R6;
ffa03b74:	02 e1 ec 08 	R2.L = 0x8ec;		/* (2284)	R2=0xff9008ec(-7337748) */
ffa03b78:	ff e3 c4 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03b7c:	0e 30       	R1 = R6;
ffa03b7e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03b82:	ff e3 69 fe 	CALL 0xffa03854 <_htmlDiv>;
ffa03b86:	0e 30       	R1 = R6;
ffa03b88:	ff e3 5c fe 	CALL 0xffa03840 <_htmlForm>;
ffa03b8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03b90:	0e 30       	R1 = R6;
ffa03b92:	02 e1 28 09 	R2.L = 0x928;		/* (2344)	R2=0xff900928(-7337688) */
ffa03b96:	ff e3 b5 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03b9a:	0e 30       	R1 = R6;
ffa03b9c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03ba0:	ff e3 5a fe 	CALL 0xffa03854 <_htmlDiv>;
ffa03ba4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03ba8:	0e 30       	R1 = R6;
ffa03baa:	02 e1 80 09 	R2.L = 0x980;		/* (2432)	R2=0xff900980(-7337600) */
ffa03bae:	ff e3 a9 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03bb2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900980(-7337600) */
ffa03bb6:	0e 30       	R1 = R6;
ffa03bb8:	02 e1 a8 09 	R2.L = 0x9a8;		/* (2472)	R2=0xff9009a8(-7337560) */
ffa03bbc:	ff e3 a2 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03bc0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a8(-7337560) */
ffa03bc4:	0e 30       	R1 = R6;
ffa03bc6:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03bca:	ff e3 9b e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03bce:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007a0(-7338080) */
ffa03bd2:	0e 30       	R1 = R6;
ffa03bd4:	02 e1 f0 09 	R2.L = 0x9f0;		/* (2544)	R2=0xff9009f0(-7337488) */
ffa03bd8:	ff e3 94 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03bdc:	0e 30       	R1 = R6;
ffa03bde:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03be2:	ff e3 f5 e9 	CALL 0xffa00fcc <_strprintf_int>;
ffa03be6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03bea:	0e 30       	R1 = R6;
ffa03bec:	02 e1 6c 00 	R2.L = 0x6c;		/* (108)	R2=0xff90006c(-7339924) */
ffa03bf0:	ff e3 88 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03bf4:	0e 30       	R1 = R6;
ffa03bf6:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03bf8:	ff e3 ea e9 	CALL 0xffa00fcc <_strprintf_int>;
ffa03bfc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03c00:	0e 30       	R1 = R6;
ffa03c02:	02 e1 44 00 	R2.L = 0x44;		/* ( 68)	R2=0xff900044(-7339964) */
ffa03c06:	ff e3 7d e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c0a:	0e 30       	R1 = R6;
ffa03c0c:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03c10:	ff e3 de e9 	CALL 0xffa00fcc <_strprintf_int>;
ffa03c14:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03c18:	0e 30       	R1 = R6;
ffa03c1a:	02 e1 fc 09 	R2.L = 0x9fc;		/* (2556)	R2=0xff9009fc(-7337476) */
ffa03c1e:	ff e3 71 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c22:	f0 b9       	R0 = [FP -0x4];
ffa03c24:	01 e8 00 00 	UNLINK;
ffa03c28:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03c2a:	10 00       	RTS;
ffa03c2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009fc(-7337476) */
ffa03c30:	01 30       	R0 = R1;
ffa03c32:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03c36:	0e 30       	R1 = R6;
ffa03c38:	ff e3 64 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c3c:	d5 2e       	JUMP.S 0xffa039e6 <_htmlDefault+0x62>;
ffa03c3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03c42:	01 30       	R0 = R1;
ffa03c44:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa03c48:	0e 30       	R1 = R6;
ffa03c4a:	ff e3 5b e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c4e:	3b 2f       	JUMP.S 0xffa03ac4 <_htmlDefault+0x140>;

ffa03c50 <_httpHeader>:
ffa03c50:	78 05       	[--SP] = (R7:7);
ffa03c52:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c56:	7f 30       	R7 = FP;
ffa03c58:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa03c60:	f0 bb       	[FP -0x4] = R0;
ffa03c62:	0f 30       	R1 = R7;
ffa03c64:	02 e1 14 0a 	R2.L = 0xa14;		/* (2580)	R2=0xff900a14(-7337452) */
ffa03c68:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03c6c:	ff e3 4a e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c70:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a14(-7337452) */
ffa03c74:	0f 30       	R1 = R7;
ffa03c76:	02 e1 28 0a 	R2.L = 0xa28;		/* (2600)	R2=0xff900a28(-7337432) */
ffa03c7a:	ff e3 43 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a28(-7337432) */
ffa03c82:	0f 30       	R1 = R7;
ffa03c84:	02 e1 3c 0a 	R2.L = 0xa3c;		/* (2620)	R2=0xff900a3c(-7337412) */
ffa03c88:	ff e3 3c e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03c8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03c90:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c94:	12 91       	R2 = [P2];
ffa03c96:	0f 30       	R1 = R7;
ffa03c98:	ff e3 9a e9 	CALL 0xffa00fcc <_strprintf_int>;
ffa03c9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a3c(-7337412) */
ffa03ca0:	0f 30       	R1 = R7;
ffa03ca2:	02 e1 50 0a 	R2.L = 0xa50;		/* (2640)	R2=0xff900a50(-7337392) */
ffa03ca6:	ff e3 2d e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03caa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03cae:	f0 b9       	R0 = [FP -0x4];
ffa03cb0:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03cb4:	10 93       	[P2] = R0;
ffa03cb6:	01 e8 00 00 	UNLINK;
ffa03cba:	38 05       	(R7:7) = [SP++];
ffa03cbc:	10 00       	RTS;
	...

ffa03cc0 <_htmlGeneric>:
ffa03cc0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03cc4:	10 30       	R2 = R0;
ffa03cc6:	4f 30       	R1 = FP;
ffa03cc8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cca:	f0 bb       	[FP -0x4] = R0;
ffa03ccc:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03cce:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03cd2:	ff e3 17 e8 	CALL 0xffa00d00 <_strcpy_>;
ffa03cd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03cda:	f0 b9       	R0 = [FP -0x4];
ffa03cdc:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03ce0:	10 93       	[P2] = R0;
ffa03ce2:	ff e3 b7 ff 	CALL 0xffa03c50 <_httpHeader>;
ffa03ce6:	f0 b9       	R0 = [FP -0x4];
ffa03ce8:	01 e8 00 00 	UNLINK;
ffa03cec:	10 00       	RTS;
	...

ffa03cf0 <_httpResp>:
ffa03cf0:	60 05       	[--SP] = (R7:4);
ffa03cf2:	30 30       	R6 = R0;
ffa03cf4:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03cf6:	01 09       	CC = R1 <= R0;
ffa03cf8:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03cfc:	39 30       	R7 = R1;
ffa03cfe:	21 10       	IF !CC JUMP 0xffa03d40 <_httpResp+0x50>;
ffa03d00:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03d02:	0f 09       	CC = R7 <= R1;
ffa03d04:	34 10       	IF !CC JUMP 0xffa03d6c <_httpResp+0x7c>;
ffa03d06:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03d0a:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03d0e:	0e 30       	R1 = R6;
ffa03d10:	17 30       	R2 = R7;
ffa03d12:	ff e3 65 e8 	CALL 0xffa00ddc <_substr>;
ffa03d16:	00 0c       	CC = R0 == 0x0;
ffa03d18:	06 10       	IF !CC JUMP 0xffa03d24 <_httpResp+0x34>;
ffa03d1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d1c:	01 e8 00 00 	UNLINK;
ffa03d20:	20 05       	(R7:4) = [SP++];
ffa03d22:	10 00       	RTS;
ffa03d24:	ff e3 b0 fd 	CALL 0xffa03884 <_html404>;
ffa03d28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d2c:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d30:	10 93       	[P2] = R0;
ffa03d32:	ff e3 8f ff 	CALL 0xffa03c50 <_httpHeader>;
ffa03d36:	01 e8 00 00 	UNLINK;
ffa03d3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d3c:	20 05       	(R7:4) = [SP++];
ffa03d3e:	10 00       	RTS;
ffa03d40:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03d44:	06 30       	R0 = R6;
ffa03d46:	01 e1 70 0a 	R1.L = 0xa70;		/* (2672)	R1=0xff900a70(-7337360) */
ffa03d4a:	ff e3 1b e8 	CALL 0xffa00d80 <_strcmp>;
ffa03d4e:	00 0c       	CC = R0 == 0x0;
ffa03d50:	d8 1f       	IF CC JUMP 0xffa03d00 <_httpResp+0x10> (BP);
ffa03d52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d56:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03d5a:	0e 30       	R1 = R6;
ffa03d5c:	17 30       	R2 = R7;
ffa03d5e:	ff e3 3f e8 	CALL 0xffa00ddc <_substr>;
ffa03d62:	00 0c       	CC = R0 == 0x0;
ffa03d64:	db 1f       	IF CC JUMP 0xffa03d1a <_httpResp+0x2a> (BP);
ffa03d66:	ff e3 0f fe 	CALL 0xffa03984 <_htmlDefault>;
ffa03d6a:	df 2f       	JUMP.S 0xffa03d28 <_httpResp+0x38>;
ffa03d6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a0c(-7337460) */
ffa03d70:	00 e1 7c 0a 	R0.L = 0xa7c;		/* (2684)	R0=0xff900a7c(-7337348) */
ffa03d74:	0e 30       	R1 = R6;
ffa03d76:	17 30       	R2 = R7;
ffa03d78:	ff e3 32 e8 	CALL 0xffa00ddc <_substr>;
ffa03d7c:	00 0c       	CC = R0 == 0x0;
ffa03d7e:	3c 1c       	IF CC JUMP 0xffa03df6 <_httpResp+0x106> (BP);
ffa03d80:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a7c(-7337348) */
ffa03d84:	00 e1 88 0a 	R0.L = 0xa88;		/* (2696)	R0=0xff900a88(-7337336) */
ffa03d88:	0e 30       	R1 = R6;
ffa03d8a:	17 30       	R2 = R7;
ffa03d8c:	ff e3 28 e8 	CALL 0xffa00ddc <_substr>;
ffa03d90:	00 0c       	CC = R0 == 0x0;
ffa03d92:	c4 1f       	IF CC JUMP 0xffa03d1a <_httpResp+0x2a> (BP);
ffa03d94:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03d96:	06 50       	R0 = R6 + R0;
ffa03d98:	ff e3 42 e9 	CALL 0xffa0101c <_atoi>;
ffa03d9c:	08 30       	R1 = R0;
ffa03d9e:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03da2:	00 67       	R0 += -0x20;		/* (-32) */
ffa03da4:	10 0a       	CC = R0 <= R2 (IU);
ffa03da6:	24 11       	IF !CC JUMP 0xffa03fee <_httpResp+0x2fe>;
ffa03da8:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03dac:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa03db0:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03db4:	02 0d       	CC = R2 <= 0x0;
ffa03db6:	13 91       	R3 = [P2];
ffa03db8:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03dbc:	14 18       	IF CC JUMP 0xffa03de4 <_httpResp+0xf4>;
ffa03dbe:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03dc2:	28 4f       	R0 <<= 0x5;
ffa03dc4:	03 54       	R0 = R3 & R0;
ffa03dc6:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03dc8:	38 52       	R0 = R0 - R7;
ffa03dca:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03dce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03dd0:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03dd4:	18 54       	R0 = R0 & R3;
ffa03dd6:	10 32       	P2 = R0;
ffa03dd8:	09 64       	R1 += 0x1;		/* (  1) */
ffa03dda:	0a 08       	CC = R2 == R1;
ffa03ddc:	10 90       	R0 = [P2++];
ffa03dde:	08 92       	[P1++] = R0;
ffa03de0:	42 30       	R0 = P2;
ffa03de2:	f9 17       	IF !CC JUMP 0xffa03dd4 <_httpResp+0xe4> (BP);
ffa03de4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03de8:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03dec:	17 93       	[P2] = R7;
ffa03dee:	ff e3 31 ff 	CALL 0xffa03c50 <_httpHeader>;
ffa03df2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03df4:	94 2f       	JUMP.S 0xffa03d1c <_httpResp+0x2c>;
ffa03df6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03dfa:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03dfe:	0e 30       	R1 = R6;
ffa03e00:	17 30       	R2 = R7;
ffa03e02:	ff e3 ed e7 	CALL 0xffa00ddc <_substr>;
ffa03e06:	00 0c       	CC = R0 == 0x0;
ffa03e08:	7f 1f       	IF CC JUMP 0xffa03d06 <_httpResp+0x16> (BP);
ffa03e0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03e0e:	0e 30       	R1 = R6;
ffa03e10:	17 30       	R2 = R7;
ffa03e12:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03e16:	ff e3 e3 e7 	CALL 0xffa00ddc <_substr>;
ffa03e1a:	86 51       	R6 = R6 + R0;
ffa03e1c:	47 53       	R5 = R7 - R0;
ffa03e1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03e22:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03e26:	0e 30       	R1 = R6;
ffa03e28:	15 30       	R2 = R5;
ffa03e2a:	ff e3 d9 e7 	CALL 0xffa00ddc <_substr>;
ffa03e2e:	00 0c       	CC = R0 == 0x0;
ffa03e30:	10 11       	IF !CC JUMP 0xffa04050 <_httpResp+0x360>;
ffa03e32:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03e34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa03e38:	00 e1 e8 0a 	R0.L = 0xae8;		/* (2792)	R0=0xff900ae8(-7337240) */
ffa03e3c:	0e 30       	R1 = R6;
ffa03e3e:	15 30       	R2 = R5;
ffa03e40:	ff e3 ce e7 	CALL 0xffa00ddc <_substr>;
ffa03e44:	00 0c       	CC = R0 == 0x0;
ffa03e46:	e2 10       	IF !CC JUMP 0xffa0400a <_httpResp+0x31a>;
ffa03e48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae8(-7337240) */
ffa03e4c:	0e 30       	R1 = R6;
ffa03e4e:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03e52:	15 30       	R2 = R5;
ffa03e54:	ff e3 c4 e7 	CALL 0xffa00ddc <_substr>;
ffa03e58:	00 0c       	CC = R0 == 0x0;
ffa03e5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03e5e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e60:	0e 30       	R1 = R6;
ffa03e62:	15 30       	R2 = R5;
ffa03e64:	00 e1 00 0b 	R0.L = 0xb00;		/* (2816)	R0=0xff900b00(-7337216) */
ffa03e68:	27 06       	IF !CC R4 = R7;
ffa03e6a:	ff e3 b9 e7 	CALL 0xffa00ddc <_substr>;
ffa03e6e:	00 0c       	CC = R0 == 0x0;
ffa03e70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b00(-7337216) */
ffa03e74:	0e 30       	R1 = R6;
ffa03e76:	15 30       	R2 = R5;
ffa03e78:	00 e1 0c 0b 	R0.L = 0xb0c;		/* (2828)	R0=0xff900b0c(-7337204) */
ffa03e7c:	27 06       	IF !CC R4 = R7;
ffa03e7e:	ff e3 af e7 	CALL 0xffa00ddc <_substr>;
ffa03e82:	00 0c       	CC = R0 == 0x0;
ffa03e84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b0c(-7337204) */
ffa03e88:	0e 30       	R1 = R6;
ffa03e8a:	15 30       	R2 = R5;
ffa03e8c:	00 e1 18 0b 	R0.L = 0xb18;		/* (2840)	R0=0xff900b18(-7337192) */
ffa03e90:	27 06       	IF !CC R4 = R7;
ffa03e92:	ff e3 a5 e7 	CALL 0xffa00ddc <_substr>;
ffa03e96:	00 0c       	CC = R0 == 0x0;
ffa03e98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b18(-7337192) */
ffa03e9c:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03ea0:	0e 30       	R1 = R6;
ffa03ea2:	15 30       	R2 = R5;
ffa03ea4:	27 06       	IF !CC R4 = R7;
ffa03ea6:	ff e3 9b e7 	CALL 0xffa00ddc <_substr>;
ffa03eaa:	00 0c       	CC = R0 == 0x0;
ffa03eac:	15 11       	IF !CC JUMP 0xffa040d6 <_httpResp+0x3e6>;
ffa03eae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03eb2:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03eb6:	0e 30       	R1 = R6;
ffa03eb8:	15 30       	R2 = R5;
ffa03eba:	ff e3 91 e7 	CALL 0xffa00ddc <_substr>;
ffa03ebe:	00 0c       	CC = R0 == 0x0;
ffa03ec0:	f6 10       	IF !CC JUMP 0xffa040ac <_httpResp+0x3bc>;
ffa03ec2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03ec6:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03eca:	0e 30       	R1 = R6;
ffa03ecc:	15 30       	R2 = R5;
ffa03ece:	ff e3 87 e7 	CALL 0xffa00ddc <_substr>;
ffa03ed2:	00 0c       	CC = R0 == 0x0;
ffa03ed4:	13 11       	IF !CC JUMP 0xffa040fa <_httpResp+0x40a>;
ffa03ed6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03eda:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03ede:	0e 30       	R1 = R6;
ffa03ee0:	15 30       	R2 = R5;
ffa03ee2:	ff e3 7d e7 	CALL 0xffa00ddc <_substr>;
ffa03ee6:	00 0c       	CC = R0 == 0x0;
ffa03ee8:	d1 10       	IF !CC JUMP 0xffa0408a <_httpResp+0x39a>;
ffa03eea:	20 43       	R0 = R4.B (X);
ffa03eec:	00 0c       	CC = R0 == 0x0;
ffa03eee:	3c 17       	IF !CC JUMP 0xffa03d66 <_httpResp+0x76> (BP);
ffa03ef0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b3c(-7337156) */
ffa03ef4:	00 e1 44 0b 	R0.L = 0xb44;		/* (2884)	R0=0xff900b44(-7337148) */
ffa03ef8:	0e 30       	R1 = R6;
ffa03efa:	15 30       	R2 = R5;
ffa03efc:	ff e3 70 e7 	CALL 0xffa00ddc <_substr>;
ffa03f00:	00 0c       	CC = R0 == 0x0;
ffa03f02:	0c 1b       	IF CC JUMP 0xffa03d1a <_httpResp+0x2a>;
ffa03f04:	7f 30       	R7 = FP;
ffa03f06:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f0a:	57 5a       	P1 = FP + P2;
ffa03f0c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03f0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f10:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03f12:	b2 e0 02 20 	LSETUP(0xffa03f16 <_httpResp+0x226>, 0xffa03f16 <_httpResp+0x226>) LC1 = P2;
ffa03f16:	08 92       	[P1++] = R0;
ffa03f18:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03f1c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03f20:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03f24:	29 4f       	R1 <<= 0x5;
ffa03f26:	10 91       	R0 = [P2];
ffa03f28:	08 54       	R0 = R0 & R1;
ffa03f2a:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f2c:	81 4f       	R1 <<= 0x10;
ffa03f2e:	08 50       	R0 = R0 + R1;
ffa03f30:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f32:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03f36:	88 54       	R2 = R0 & R1;
ffa03f38:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03f3c:	b2 e0 12 10 	LSETUP(0xffa03f40 <_httpResp+0x250>, 0xffa03f60 <_httpResp+0x270>) LC1 = P1;
ffa03f40:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f44:	97 5a       	P2 = FP + P2;
ffa03f46:	02 32       	P0 = R2;
ffa03f48:	11 91       	R1 = [P2];
ffa03f4a:	12 64       	R2 += 0x2;		/* (  2) */
ffa03f4c:	00 94       	R0 = W[P0++] (Z);
ffa03f4e:	41 50       	R1 = R1 + R0;
ffa03f50:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f52:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03f56:	11 92       	[P2++] = R1;
ffa03f58:	82 54       	R2 = R2 & R0;
ffa03f5a:	42 30       	R0 = P2;
ffa03f5c:	38 08       	CC = R0 == R7;
ffa03f5e:	f4 17       	IF !CC JUMP 0xffa03f46 <_httpResp+0x256> (BP);
ffa03f60:	00 00       	NOP;
ffa03f62:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f66:	97 5a       	P2 = FP + P2;
ffa03f68:	00 00       	NOP;
ffa03f6a:	10 91       	R0 = [P2];
ffa03f6c:	58 4d       	R0 >>>= 0xb;
ffa03f6e:	10 92       	[P2++] = R0;
ffa03f70:	4a 30       	R1 = P2;
ffa03f72:	39 08       	CC = R1 == R7;
ffa03f74:	fa 17       	IF !CC JUMP 0xffa03f68 <_httpResp+0x278> (BP);
ffa03f76:	ff e3 07 fd 	CALL 0xffa03984 <_htmlDefault>;
ffa03f7a:	68 67       	R0 += -0x13;		/* (-19) */
ffa03f7c:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03f80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03f84:	f0 bb       	[FP -0x4] = R0;
ffa03f86:	02 e1 54 0b 	R2.L = 0xb54;		/* (2900)	R2=0xff900b54(-7337132) */
ffa03f8a:	08 50       	R0 = R0 + R1;
ffa03f8c:	0f 30       	R1 = R7;
ffa03f8e:	ff e3 b9 e6 	CALL 0xffa00d00 <_strcpy_>;
ffa03f92:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03f96:	f5 b8 00 00 
ffa03f9a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b54(-7337132) */
ffa03f9e:	0f 30       	R1 = R7;
ffa03fa0:	02 e1 60 0b 	R2.L = 0xb60;		/* (2912)	R2=0xff900b60(-7337120) */
ffa03fa4:	ff e3 ae e6 	CALL 0xffa00d00 <_strcpy_>;
ffa03fa8:	16 30       	R2 = R6;
ffa03faa:	0f 30       	R1 = R7;
ffa03fac:	ff e3 10 e8 	CALL 0xffa00fcc <_strprintf_int>;
ffa03fb0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b60(-7337120) */
ffa03fb4:	0f 30       	R1 = R7;
ffa03fb6:	02 e1 74 0b 	R2.L = 0xb74;		/* (2932)	R2=0xff900b74(-7337100) */
ffa03fba:	ff e3 a3 e6 	CALL 0xffa00d00 <_strcpy_>;
ffa03fbe:	0f 30       	R1 = R7;
ffa03fc0:	15 30       	R2 = R5;
ffa03fc2:	ff e3 05 e8 	CALL 0xffa00fcc <_strprintf_int>;
ffa03fc6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b74(-7337100) */
ffa03fca:	02 e1 84 0b 	R2.L = 0xb84;		/* (2948)	R2=0xff900b84(-7337084) */
ffa03fce:	0f 30       	R1 = R7;
ffa03fd0:	ff e3 98 e6 	CALL 0xffa00d00 <_strcpy_>;
ffa03fd4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03fd6:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03fd8:	16 08       	CC = R6 == R2;
ffa03fda:	e0 17       	IF !CC JUMP 0xffa03f9a <_httpResp+0x2aa> (BP);
ffa03fdc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03fe0:	0f 30       	R1 = R7;
ffa03fe2:	02 e1 90 0b 	R2.L = 0xb90;		/* (2960)	R2=0xff900b90(-7337072) */
ffa03fe6:	ff e3 8d e6 	CALL 0xffa00d00 <_strcpy_>;
ffa03fea:	f0 b9       	R0 = [FP -0x4];
ffa03fec:	9e 2e       	JUMP.S 0xffa03d28 <_httpResp+0x38>;
ffa03fee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ff0:	4f 30       	R1 = FP;
ffa03ff2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b90(-7337072) */
ffa03ff6:	f0 bb       	[FP -0x4] = R0;
ffa03ff8:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03ffa:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03ffe:	02 e1 90 0a 	R2.L = 0xa90;		/* (2704)	R2=0xff900a90(-7337328) */
ffa04002:	ff e3 7f e6 	CALL 0xffa00d00 <_strcpy_>;
ffa04006:	f0 b9       	R0 = [FP -0x4];
ffa04008:	90 2e       	JUMP.S 0xffa03d28 <_httpResp+0x38>;
ffa0400a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa0400e:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04012:	0e 30       	R1 = R6;
ffa04014:	15 30       	R2 = R5;
ffa04016:	ff e3 e3 e6 	CALL 0xffa00ddc <_substr>;
ffa0401a:	00 0c       	CC = R0 == 0x0;
ffa0401c:	08 1c       	IF CC JUMP 0xffa0402c <_httpResp+0x33c> (BP);
ffa0401e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa04022:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04024:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04028:	10 9b       	B[P2] = R0;
ffa0402a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0402c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04030:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa04034:	0e 30       	R1 = R6;
ffa04036:	15 30       	R2 = R5;
ffa04038:	ff e3 d2 e6 	CALL 0xffa00ddc <_substr>;
ffa0403c:	00 0c       	CC = R0 == 0x0;
ffa0403e:	05 1f       	IF CC JUMP 0xffa03e48 <_httpResp+0x158> (BP);
ffa04040:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa04044:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04046:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa0404a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0404c:	10 9b       	B[P2] = R0;
ffa0404e:	fd 2e       	JUMP.S 0xffa03e48 <_httpResp+0x158>;
ffa04050:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04054:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04058:	0e 30       	R1 = R6;
ffa0405a:	15 30       	R2 = R5;
ffa0405c:	ff e3 c0 e6 	CALL 0xffa00ddc <_substr>;
ffa04060:	00 0c       	CC = R0 == 0x0;
ffa04062:	61 14       	IF !CC JUMP 0xffa04124 <_httpResp+0x434> (BP);
ffa04064:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04066:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa0406a:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa0406e:	0e 30       	R1 = R6;
ffa04070:	15 30       	R2 = R5;
ffa04072:	ff e3 b5 e6 	CALL 0xffa00ddc <_substr>;
ffa04076:	00 0c       	CC = R0 == 0x0;
ffa04078:	de 1e       	IF CC JUMP 0xffa03e34 <_httpResp+0x144> (BP);
ffa0407a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa0407e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04080:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04084:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04086:	10 9b       	B[P2] = R0;
ffa04088:	d6 2e       	JUMP.S 0xffa03e34 <_httpResp+0x144>;
ffa0408a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0408c:	06 50       	R0 = R6 + R0;
ffa0408e:	ff e3 c7 e7 	CALL 0xffa0101c <_atoi>;
ffa04092:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04096:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0409a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0409c:	11 91       	R1 = [P2];
ffa0409e:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa040a2:	51 54       	R1 = R1 & R2;
ffa040a4:	c0 4f       	R0 <<= 0x18;
ffa040a6:	41 50       	R1 = R1 + R0;
ffa040a8:	11 93       	[P2] = R1;
ffa040aa:	5e 2e       	JUMP.S 0xffa03d66 <_httpResp+0x76>;
ffa040ac:	86 51       	R6 = R6 + R0;
ffa040ae:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040b0:	45 53       	R5 = R5 - R0;
ffa040b2:	06 30       	R0 = R6;
ffa040b4:	ff e3 b4 e7 	CALL 0xffa0101c <_atoi>;
ffa040b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040bc:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040c0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa040c2:	11 91       	R1 = [P2];
ffa040c4:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa040c8:	40 43       	R0 = R0.B (Z);
ffa040ca:	51 54       	R1 = R1 & R2;
ffa040cc:	40 4f       	R0 <<= 0x8;
ffa040ce:	41 50       	R1 = R1 + R0;
ffa040d0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040d2:	11 93       	[P2] = R1;
ffa040d4:	f7 2e       	JUMP.S 0xffa03ec2 <_httpResp+0x1d2>;
ffa040d6:	86 51       	R6 = R6 + R0;
ffa040d8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040da:	45 53       	R5 = R5 - R0;
ffa040dc:	06 30       	R0 = R6;
ffa040de:	ff e3 9f e7 	CALL 0xffa0101c <_atoi>;
ffa040e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040e6:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040ea:	11 91       	R1 = [P2];
ffa040ec:	41 4d       	R1 >>>= 0x8;
ffa040ee:	41 4f       	R1 <<= 0x8;
ffa040f0:	40 43       	R0 = R0.B (Z);
ffa040f2:	08 50       	R0 = R0 + R1;
ffa040f4:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040f6:	10 93       	[P2] = R0;
ffa040f8:	db 2e       	JUMP.S 0xffa03eae <_httpResp+0x1be>;
ffa040fa:	86 51       	R6 = R6 + R0;
ffa040fc:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040fe:	45 53       	R5 = R5 - R0;
ffa04100:	06 30       	R0 = R6;
ffa04102:	ff e3 8d e7 	CALL 0xffa0101c <_atoi>;
ffa04106:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0410a:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0410e:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04110:	11 91       	R1 = [P2];
ffa04112:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa04116:	40 43       	R0 = R0.B (Z);
ffa04118:	51 54       	R1 = R1 & R2;
ffa0411a:	80 4f       	R0 <<= 0x10;
ffa0411c:	41 50       	R1 = R1 + R0;
ffa0411e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04120:	11 93       	[P2] = R1;
ffa04122:	da 2e       	JUMP.S 0xffa03ed6 <_httpResp+0x1e6>;
ffa04124:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa04128:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0412a:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa0412e:	10 9b       	B[P2] = R0;
ffa04130:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa04134:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04138:	10 91       	R0 = [P2];
ffa0413a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0413c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0413e:	10 93       	[P2] = R0;
ffa04140:	93 2f       	JUMP.S 0xffa04066 <_httpResp+0x376>;
	...

ffa04144 <_httpCollate>:
ffa04144:	fd 05       	[--SP] = (R7:7, P5:5);
ffa04146:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c64 <_NetDataDestIP> */
ffa0414a:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_g_httpRxed> */
ffa0414e:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04150:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04154:	29 91 00 00 
ffa04158:	82 4f       	R2 <<= 0x10;
ffa0415a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0415e:	51 50       	R1 = R1 + R2;
ffa04160:	17 30       	R2 = R7;
ffa04162:	ff e3 9f e5 	CALL 0xffa00ca0 <_memcpy_>;
ffa04166:	28 91       	R0 = [P5];
ffa04168:	38 50       	R0 = R0 + R7;
ffa0416a:	01 e8 00 00 	UNLINK;
ffa0416e:	28 93       	[P5] = R0;
ffa04170:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04172:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04174:	10 00       	RTS;
	...

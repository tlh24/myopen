
emg_dsp.dxe:     file format elf32-bfin

Disassembly of section .text:

ffa00000 <start>:
ffa00000:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00002:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00004:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00006:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa00008:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0000a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0000c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0000e:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00010:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00012:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00014:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
ffa00016:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00018:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0001a:	30 e1 00 00 	I0 = 0x0 (X);		/*		I0=0x0(  0) */
ffa0001e:	31 e1 00 00 	I1 = 0x0 (X);		/*		I1=0x0(  0) */
ffa00022:	32 e1 00 00 	I2 = 0x0 (X);		/*		I2=0x0(  0) */
ffa00026:	33 e1 00 00 	I3 = 0x0 (X);		/*		I3=0x0(  0) */
ffa0002a:	34 e1 00 00 	M0 = 0x0 (X);		/*		M0=0x0(  0) */
ffa0002e:	35 e1 00 00 	M1 = 0x0 (X);		/*		M1=0x0(  0) */
ffa00032:	37 e1 00 00 	M3 = 0x0 (X);		/*		M3=0x0(  0) */
ffa00036:	37 e1 00 00 	M3 = 0x0 (X);		/*		M3=0x0(  0) */
ffa0003a:	3c e1 00 00 	L0 = 0x0 (X);		/*		L0=0x0(  0) */
ffa0003e:	3d e1 00 00 	L1 = 0x0 (X);		/*		L1=0x0(  0) */
ffa00042:	3e e1 00 00 	L2 = 0x0 (X);		/*		L2=0x0(  0) */
ffa00046:	3f e1 00 00 	L3 = 0x0 (X);		/*		L3=0x0(  0) */
ffa0004a:	38 e1 00 00 	B0 = 0x0 (X);		/*		B0=0x0(  0) */
ffa0004e:	39 e1 00 00 	B1 = 0x0 (X);		/*		B1=0x0(  0) */
ffa00052:	3a e1 00 00 	B2 = 0x0 (X);		/*		B2=0x0(  0) */
ffa00056:	3b e1 00 00 	B3 = 0x0 (X);		/*		B3=0x0(  0) */
ffa0005a:	26 21       	JUMP.S 0xffa002a6 <_test>;
ffa0005c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa00060:	08 e1 00 01 	P0.L = 0x100;		/* (256)	P0=0xffc00100(-4194048) */
ffa00064:	00 82       	R0.L = W[P0];
ffa00066:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa00068:	04 10       	IF !CC JUMP 0xffa00070 <no_soft_reset>;
ffa0006a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0006c:	00 97       	W[P0] = R0;
ffa0006e:	24 00       	SSYNC;

ffa00070 <no_soft_reset>:
ffa00070:	00 00       	NOP;
ffa00072:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe00100(-2096896) */
ffa00076:	08 e1 00 20 	P0.L = 0x2000;		/* (8192)	P0=0xffe02000(-2088960) */
ffa0007a:	40 6c       	P0 += 0x8;		/* (  8) */
ffa0007c:	71 68       	P1 = 0xe (X);		/*		P1=0xe( 14) */
ffa0007e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00080:	a2 e0 02 10 	LSETUP(0xffa00084 <no_soft_reset+0x14>, 0xffa00084 <no_soft_reset+0x14>) LC0 = P1;
ffa00084:	01 92       	[P0++] = R1;
ffa00086:	4e e1 b0 ff 	SP.H = 0xffb0;		/* (-80)	SP=0xffb00000 */
ffa0008a:	0e e1 00 04 	SP.L = 0x400;		/* (1024)	SP=0xffb00400 */
ffa0008e:	7e 32       	FP = SP;
ffa00090:	00 e3 4c 01 	CALL 0xffa00328 <_start_peripherals>;
ffa00094:	08 e1 08 20 	P0.L = 0x2008;		/* (8200)	P0=0xffe02008(-2088952) */
ffa00098:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02008(-2088952) */
ffa0009c:	00 e1 18 02 	R0.L = 0x218;		/* (536)	R0=0x218(536) */
ffa000a0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa00218 <_NHANDLER>(-6290920) */
ffa000a4:	00 92       	[P0++] = R0;
ffa000a6:	00 e1 1a 02 	R0.L = 0x21a;		/* (538)	R0=0xffa0021a <EXC_HANDLER>(-6290918) */
ffa000aa:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0021a <EXC_HANDLER>(-6290918) */
ffa000ae:	00 92       	[P0++] = R0;
ffa000b0:	00 92       	[P0++] = R0;
ffa000b2:	00 e1 16 02 	R0.L = 0x216;		/* (534)	R0=0xffa00216 <_HWHANDLER>(-6290922) */
ffa000b6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa00216 <_HWHANDLER>(-6290922) */
ffa000ba:	00 92       	[P0++] = R0;
ffa000bc:	00 e1 8e 02 	R0.L = 0x28e;		/* (654)	R0=0xffa0028e <_THANDLER>(-6290802) */
ffa000c0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0028e <_THANDLER>(-6290802) */
ffa000c4:	00 92       	[P0++] = R0;
ffa000c6:	00 e1 d8 01 	R0.L = 0x1d8;		/* (472)	R0=0xffa001d8 <_RTCHANDLER>(-6290984) */
ffa000ca:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001d8 <_RTCHANDLER>(-6290984) */
ffa000ce:	00 92       	[P0++] = R0;
ffa000d0:	00 e1 de 01 	R0.L = 0x1de;		/* (478)	R0=0xffa001de <_I8HANDLER>(-6290978) */
ffa000d4:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001de <_I8HANDLER>(-6290978) */
ffa000d8:	00 92       	[P0++] = R0;
ffa000da:	00 e1 e4 01 	R0.L = 0x1e4;		/* (484)	R0=0xffa001e4 <_I9HANDLER>(-6290972) */
ffa000de:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001e4 <_I9HANDLER>(-6290972) */
ffa000e2:	00 92       	[P0++] = R0;
ffa000e4:	00 e1 ea 01 	R0.L = 0x1ea;		/* (490)	R0=0xffa001ea <_I10HANDLER>(-6290966) */
ffa000e8:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001ea <_I10HANDLER>(-6290966) */
ffa000ec:	00 92       	[P0++] = R0;
ffa000ee:	00 e1 f4 01 	R0.L = 0x1f4;		/* (500)	R0=0xffa001f4 <_I11HANDLER>(-6290956) */
ffa000f2:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001f4 <_I11HANDLER>(-6290956) */
ffa000f6:	00 92       	[P0++] = R0;
ffa000f8:	00 e1 f6 01 	R0.L = 0x1f6;		/* (502)	R0=0xffa001f6 <_I12HANDLER>(-6290954) */
ffa000fc:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001f6 <_I12HANDLER>(-6290954) */
ffa00100:	00 92       	[P0++] = R0;
ffa00102:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xffa001f8 <_I13HANDLER>(-6290952) */
ffa00106:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001f8 <_I13HANDLER>(-6290952) */
ffa0010a:	00 92       	[P0++] = R0;
ffa0010c:	00 e1 fa 01 	R0.L = 0x1fa;		/* (506)	R0=0xffa001fa <_I14HANDLER>(-6290950) */
ffa00110:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001fa <_I14HANDLER>(-6290950) */
ffa00114:	00 92       	[P0++] = R0;
ffa00116:	00 e1 00 02 	R0.L = 0x200;		/* (512)	R0=0xffa00200 <_I15HANDLER>(-6290944) */
ffa0011a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa00200 <_I15HANDLER>(-6290944) */
ffa0011e:	00 92       	[P0++] = R0;
ffa00120:	08 e1 3c 20 	P0.L = 0x203c;		/* (8252)	P0=0xffe0203c(-2088900) */
ffa00124:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe0203c(-2088900) */
ffa00128:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xffa001a4 <call_main>(-6291036) */
ffa0012c:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001a4 <call_main>(-6291036) */
ffa00130:	00 93       	[P0] = R0;
ffa00132:	08 e1 0c 01 	P0.L = 0x10c;		/* (268)	P0=0xffe0010c(-2096884) */
ffa00136:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0010c(-4194036) */
ffa0013a:	00 e1 20 19 	R0.L = 0x1920;		/* (6432)	R0=0xffa01920(-6285024) */
ffa0013e:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1920(6432) */
ffa00142:	00 93       	[P0] = R0;
ffa00144:	08 e1 10 01 	P0.L = 0x110;		/* (272)	P0=0xffc00110(-4194032) */
ffa00148:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00110(-4194032) */
ffa0014c:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffff(65535) */
ffa00150:	40 e1 4f ff 	R0.H = 0xff4f;		/* (-177)	R0=0xff4fffff(-11534337) */
ffa00154:	00 93       	[P0] = R0;
ffa00156:	08 e1 14 01 	P0.L = 0x114;		/* (276)	P0=0xffc00114(-4194028) */
ffa0015a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00114(-4194028) */
ffa0015e:	00 e1 f3 ff 	R0.L = 0xfff3;		/* (-13)	R0=0xff4ffff3(-11534349) */
ffa00162:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xfffffff3(-13) */
ffa00166:	00 93       	[P0] = R0;
ffa00168:	08 e1 18 01 	P0.L = 0x118;		/* (280)	P0=0xffc00118(-4194024) */
ffa0016c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00118(-4194024) */
ffa00170:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa00174:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa00178:	00 93       	[P0] = R0;
ffa0017a:	08 e1 1c 01 	P0.L = 0x11c;		/* (284)	P0=0xffc0011c(-4194020) */
ffa0017e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0011c(-4194020) */
ffa00182:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa00186:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa0018a:	00 93       	[P0] = R0;
ffa0018c:	23 00       	CSYNC;
ffa0018e:	80 e1 00 8c 	R0 = 0x8c00 (Z);		/*		R0=0x8c00(35840) */
ffa00192:	40 00       	STI R0;
ffa00194:	9f 00       	RAISE 0xf;
ffa00196:	08 e1 a2 01 	P0.L = 0x1a2;		/* (418)	P0=0xffc001a2(-4193886) */
ffa0019a:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa001a2 <wait> */
ffa0019e:	58 3e       	RETI = P0;
ffa001a0:	11 00       	RTI;

ffa001a2 <wait>:
ffa001a2:	00 20       	JUMP.S 0xffa001a2 <wait>;

ffa001a4 <call_main>:
ffa001a4:	7b 01       	[--SP] = RETI;
ffa001a6:	80 20       	JUMP.S 0xffa002a6 <_test>;
ffa001a8:	08 e1 bc 07 	P0.L = 0x7bc;		/* (1980)	P0=0xffa007bc <_main> */
ffa001ac:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa007bc <_main> */
ffa001b0:	00 e1 bc 01 	R0.L = 0x1bc;		/* (444)	R0=0x1bc(444) */
ffa001b4:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa001bc <end>(-6291012) */
ffa001b8:	38 38       	RETS = R0;
ffa001ba:	50 00       	JUMP (P0);

ffa001bc <end>:
ffa001bc:	20 00       	IDLE;
ffa001be:	ff 2f       	JUMP.S 0xffa001bc <end>;

ffa001c0 <_delay>:
ffa001c0:	41 01       	[--SP] = R1;

ffa001c2 <_delay_outer_start>:
ffa001c2:	00 0c       	CC = R0 == 0x0;
ffa001c4:	08 18       	IF CC JUMP 0xffa001d4 <_delay_end>;
ffa001c6:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa001c8:	21 e1 64 00 	R1 = 0x64 (X);		/*		R1=0x64(100) */

ffa001cc <_delay_inner_start>:
ffa001cc:	01 0c       	CC = R1 == 0x0;
ffa001ce:	fa 1b       	IF CC JUMP 0xffa001c2 <_delay_outer_start>;
ffa001d0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa001d2:	fd 2f       	JUMP.S 0xffa001cc <_delay_inner_start>;

ffa001d4 <_delay_end>:
ffa001d4:	31 90       	R1 = [SP++];
ffa001d6:	10 00       	RTS;

ffa001d8 <_RTCHANDLER>:
ffa001d8:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa001dc:	18 20       	JUMP.S 0xffa0020c <display_fail>;

ffa001de <_I8HANDLER>:
ffa001de:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa001e2:	15 20       	JUMP.S 0xffa0020c <display_fail>;

ffa001e4 <_I9HANDLER>:
ffa001e4:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa001e8:	12 20       	JUMP.S 0xffa0020c <display_fail>;

ffa001ea <_I10HANDLER>:
ffa001ea:	e4 05       	[--SP] = (R7:4, P5:4);
ffa001ec:	66 01       	[--SP] = ASTAT;
ffa001ee:	26 01       	ASTAT = [SP++];
ffa001f0:	a4 05       	(R7:4, P5:4) = [SP++];
ffa001f2:	11 00       	RTI;

ffa001f4 <_I11HANDLER>:
ffa001f4:	11 00       	RTI;

ffa001f6 <_I12HANDLER>:
ffa001f6:	11 00       	RTI;

ffa001f8 <_I13HANDLER>:
ffa001f8:	11 00       	RTI;

ffa001fa <_I14HANDLER>:
ffa001fa:	00 e1 0e 00 	R0.L = 0xe;		/* ( 14)	R0=0xffa0000e(-6291442) */
ffa001fe:	07 20       	JUMP.S 0xffa0020c <display_fail>;

ffa00200 <_I15HANDLER>:
ffa00200:	00 e1 0f 00 	R0.L = 0xf;		/* ( 15)	R0=0xffa0000f(-6291441) */
ffa00204:	04 20       	JUMP.S 0xffa0020c <display_fail>;

ffa00206 <idle_loop>:
ffa00206:	20 00       	IDLE;
ffa00208:	24 00       	SSYNC;
ffa0020a:	fe 2f       	JUMP.S 0xffa00206 <idle_loop>;

ffa0020c <display_fail>:
ffa0020c:	c1 31       	R0 = SEQSTAT;
ffa0020e:	cc 31       	R1 = RETX;
ffa00210:	00 e3 06 01 	CALL 0xffa0041c <_exception_report>;
ffa00214:	12 00       	RTX;

ffa00216 <_HWHANDLER>:
ffa00216:	11 00       	RTI;

ffa00218 <_NHANDLER>:
ffa00218:	00 20       	JUMP.S 0xffa00218 <_NHANDLER>;

ffa0021a <EXC_HANDLER>:
ffa0021a:	4d 01       	[--SP] = P5;
ffa0021c:	0d e1 58 0c 	P5.L = 0xc58;		/* (3160)	P5=0xc58 */
ffa00220:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c58 <_g_excregs> */
ffa00224:	28 92       	[P5++] = R0;
ffa00226:	29 92       	[P5++] = R1;
ffa00228:	2a 92       	[P5++] = R2;
ffa0022a:	2b 92       	[P5++] = R3;
ffa0022c:	2c 92       	[P5++] = R4;
ffa0022e:	2d 92       	[P5++] = R5;
ffa00230:	2e 92       	[P5++] = R6;
ffa00232:	2f 92       	[P5++] = R7;
ffa00234:	68 92       	[P5++] = P0;
ffa00236:	69 92       	[P5++] = P1;
ffa00238:	6a 92       	[P5++] = P2;
ffa0023a:	6b 92       	[P5++] = P3;
ffa0023c:	6c 92       	[P5++] = P4;
ffa0023e:	65 32       	P4 = P5;
ffa00240:	75 90       	P5 = [SP++];
ffa00242:	65 92       	[P4++] = P5;
ffa00244:	80 30       	R0 = I0;
ffa00246:	20 92       	[P4++] = R0;
ffa00248:	c0 30       	R0 = B0;
ffa0024a:	20 92       	[P4++] = R0;
ffa0024c:	c4 30       	R0 = L0;
ffa0024e:	20 92       	[P4++] = R0;
ffa00250:	81 30       	R0 = I1;
ffa00252:	20 92       	[P4++] = R0;
ffa00254:	c1 30       	R0 = B1;
ffa00256:	20 92       	[P4++] = R0;
ffa00258:	c5 30       	R0 = L1;
ffa0025a:	20 92       	[P4++] = R0;
ffa0025c:	82 30       	R0 = I2;
ffa0025e:	20 92       	[P4++] = R0;
ffa00260:	c2 30       	R0 = B2;
ffa00262:	20 92       	[P4++] = R0;
ffa00264:	c6 30       	R0 = L2;
ffa00266:	20 92       	[P4++] = R0;
ffa00268:	83 30       	R0 = I3;
ffa0026a:	20 92       	[P4++] = R0;
ffa0026c:	c3 30       	R0 = B3;
ffa0026e:	20 92       	[P4++] = R0;
ffa00270:	c7 30       	R0 = L3;
ffa00272:	20 92       	[P4++] = R0;
ffa00274:	84 30       	R0 = M0;
ffa00276:	20 92       	[P4++] = R0;
ffa00278:	85 30       	R0 = M1;
ffa0027a:	20 92       	[P4++] = R0;
ffa0027c:	86 30       	R0 = M2;
ffa0027e:	20 92       	[P4++] = R0;
ffa00280:	87 30       	R0 = M3;
ffa00282:	20 92       	[P4++] = R0;
ffa00284:	c1 31       	R0 = SEQSTAT;
ffa00286:	cc 31       	R1 = RETX;
ffa00288:	00 e3 ca 00 	CALL 0xffa0041c <_exception_report>;
ffa0028c:	12 00       	RTX;

ffa0028e <_THANDLER>:
ffa0028e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00290:	66 01       	[--SP] = ASTAT;
ffa00292:	0d e1 00 08 	P5.L = 0x800;		/* (2048)	P5=0xff900800 */
ffa00296:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800800 */
ffa0029a:	2f 91       	R7 = [P5];
ffa0029c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0029e:	2f 93       	[P5] = R7;
ffa002a0:	26 01       	ASTAT = [SP++];
ffa002a2:	a4 05       	(R7:4, P5:4) = [SP++];
ffa002a4:	11 00       	RTI;

ffa002a6 <_test>:
ffa002a6:	08 e1 40 07 	P0.L = 0x740;		/* (1856)	P0=0xffa00740 */
ffa002aa:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00740(-4192448) */
ffa002ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002b0:	00 97       	W[P0] = R0;
ffa002b2:	08 e1 30 07 	P0.L = 0x730;		/* (1840)	P0=0xffc00730(-4192464) */
ffa002b6:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00730(-4192464) */
ffa002ba:	00 91       	R0 = [P0];
ffa002bc:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa002c0:	08 56       	R0 = R0 | R1;
ffa002c2:	00 97       	W[P0] = R0;
ffa002c4:	08 e1 00 32 	P0.L = 0x3200;		/* (12800)	P0=0xffc03200(-4181504) */
ffa002c8:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03200(-4181504) */
ffa002cc:	00 91       	R0 = [P0];
ffa002ce:	81 e1 00 ff 	R1 = 0xff00 (Z);		/*		R1=0xff00(65280) */
ffa002d2:	08 54       	R0 = R0 & R1;
ffa002d4:	00 97       	W[P0] = R0;
ffa002d6:	08 e1 40 15 	P0.L = 0x1540;		/* (5440)	P0=0xffc01540(-4188864) */
ffa002da:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc01540(-4188864) */
ffa002de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002e0:	00 97       	W[P0] = R0;
ffa002e2:	08 e1 30 15 	P0.L = 0x1530;		/* (5424)	P0=0xffc01530(-4188880) */
ffa002e6:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc01530(-4188880) */
ffa002ea:	00 91       	R0 = [P0];
ffa002ec:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa002ee:	08 56       	R0 = R0 | R1;
ffa002f0:	00 97       	W[P0] = R0;
ffa002f2:	08 e1 04 32 	P0.L = 0x3204;		/* (12804)	P0=0xffc03204(-4181500) */
ffa002f6:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03204(-4181500) */
ffa002fa:	00 91       	R0 = [P0];
ffa002fc:	81 e1 fe ff 	R1 = 0xfffe (Z);		/*		R1=0xfffe(65534) */
ffa00300:	08 54       	R0 = R0 & R1;
ffa00302:	00 97       	W[P0] = R0;

ffa00304 <_test_loop>:
ffa00304:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03204(-4181500) */
ffa00308:	08 e1 0c 07 	P0.L = 0x70c;		/* (1804)	P0=0xffc0070c(-4192500) */
ffa0030c:	80 e1 ff 00 	R0 = 0xff (Z);		/*		R0=0xff(255) */
ffa00310:	00 8a       	W[P0] = R0.L;
ffa00312:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0070c(-4192500) */
ffa00316:	08 e1 0c 15 	P0.L = 0x150c;		/* (5388)	P0=0xffc0150c(-4188916) */
ffa0031a:	80 e1 01 00 	R0 = 0x1 (Z);		/*		R0=0x1(  1) */
ffa0031e:	00 8a       	W[P0] = R0.L;
ffa00320:	24 00       	SSYNC;
ffa00322:	f1 2f       	JUMP.S 0xffa00304 <_test_loop>;

ffa00324 <_atexit>:
ffa00324:	10 00       	RTS;
	...

ffa00328 <_start_peripherals>:
ffa00328:	c0 05       	[--SP] = (R7:0, P5:0);
ffa0032a:	66 01       	[--SP] = ASTAT;
ffa0032c:	67 01       	[--SP] = RETS;
ffa0032e:	08 e1 00 32 	P0.L = 0x3200;		/* (12800)	P0=0xffc03200(-4181504) */
ffa00332:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03200(-4181504) */
ffa00336:	00 82       	R0.L = W[P0];
ffa00338:	78 4c       	BITCLR (R0, 0xf);		/* bit 15 */
ffa0033a:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa0033c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0033e:	68 4a       	BITSET (R0, 0xd);		/* bit 13 */
ffa00340:	00 8a       	W[P0] = R0.L;
ffa00342:	08 e1 30 07 	P0.L = 0x730;		/* (1840)	P0=0xffc00730(-4192464) */
ffa00346:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00730(-4192464) */
ffa0034a:	00 82       	R0.L = W[P0];
ffa0034c:	78 4a       	BITSET (R0, 0xf);		/* bit 15 */
ffa0034e:	00 8a       	W[P0] = R0.L;
ffa00350:	08 e1 00 05 	P0.L = 0x500;		/* (1280)	P0=0xffc00500(-4193024) */
ffa00354:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00500(-4193024) */
ffa00358:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0035a:	00 97       	W[P0] = R0;
ffa0035c:	24 00       	SSYNC;
ffa0035e:	08 e1 14 05 	P0.L = 0x514;		/* (1300)	P0=0xffc00514(-4193004) */
ffa00362:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa00364:	00 97       	W[P0] = R0;
ffa00366:	08 e1 04 05 	P0.L = 0x504;		/* (1284)	P0=0xffc00504(-4193020) */
ffa0036a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0036c:	00 97       	W[P0] = R0;
ffa0036e:	08 e1 08 05 	P0.L = 0x508;		/* (1288)	P0=0xffc00508(-4193016) */
ffa00372:	80 e1 56 00 	R0 = 0x56 (Z);		/*		R0=0x56( 86) */
ffa00376:	00 97       	W[P0] = R0;
ffa00378:	08 e1 00 05 	P0.L = 0x500;		/* (1280)	P0=0xffc00500(-4193024) */
ffa0037c:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00380:	00 97       	W[P0] = R0;
ffa00382:	24 00       	SSYNC;

ffa00384 <writeforever>:
ffa00384:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00386:	78 4a       	BITSET (R0, 0xf);		/* bit 15 */
ffa00388:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
ffa0038a:	09 e1 04 07 	P1.L = 0x704;		/* (1796)	P1=0x704 */
ffa0038e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00704(-4192508) */
ffa00392:	08 97       	W[P1] = R0;
ffa00394:	24 00       	SSYNC;
ffa00396:	80 e1 32 00 	R0 = 0x32 (Z);		/*		R0=0x32( 50) */
ffa0039a:	08 e1 0c 05 	P0.L = 0x50c;		/* (1292)	P0=0xffc0050c(-4193012) */
ffa0039e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0050c(-4193012) */
ffa003a2:	00 97       	W[P0] = R0;
ffa003a4:	00 e3 11 00 	CALL 0xffa003c6 <_spi_delay>;
ffa003a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa003aa:	78 4a       	BITSET (R0, 0xf);		/* bit 15 */
ffa003ac:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
ffa003ae:	09 e1 08 07 	P1.L = 0x708;		/* (1800)	P1=0xffc00708(-4192504) */
ffa003b2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00708(-4192504) */
ffa003b6:	08 97       	W[P1] = R0;
ffa003b8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa003ba:	ff e3 03 ff 	CALL 0xffa001c0 <_delay>;
ffa003be:	27 01       	RETS = [SP++];
ffa003c0:	26 01       	ASTAT = [SP++];
ffa003c2:	80 05       	(R7:0, P5:0) = [SP++];
ffa003c4:	10 00       	RTS;

ffa003c6 <_spi_delay>:
ffa003c6:	08 e1 08 05 	P0.L = 0x508;		/* (1288)	P0=0xffc00508(-4193016) */
ffa003ca:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00508(-4193016) */

ffa003ce <spi_delay_check1>:
ffa003ce:	00 82       	R0.L = W[P0];
ffa003d0:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa003d2:	fe 1b       	IF CC JUMP 0xffa003ce <spi_delay_check1>;

ffa003d4 <spi_delay_check2>:
ffa003d4:	00 95       	R0 = W[P0] (Z);
ffa003d6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa003d8:	fe 1b       	IF CC JUMP 0xffa003d4 <spi_delay_check2>;
ffa003da:	80 e1 56 00 	R0 = 0x56 (Z);		/*		R0=0x56( 86) */
ffa003de:	00 8a       	W[P0] = R0.L;
ffa003e0:	10 00       	RTS;
	...

ffa003e4 <_PhysicalToLogicalChan>:
ffa003e4:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa003e6:	50 54       	R1 = R0 & R2;
ffa003e8:	10 4d       	R0 >>>= 0x2;
ffa003ea:	09 4b       	BITTGL (R1, 0x1);		/* bit  1 */
ffa003ec:	10 54       	R0 = R0 & R2;
ffa003ee:	10 58       	R0 = R0 ^ R2;
ffa003f0:	11 4f       	R1 <<= 0x2;
ffa003f2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa003f6:	41 56       	R1 = R1 | R0;
ffa003f8:	01 30       	R0 = R1;
ffa003fa:	01 e8 00 00 	UNLINK;
ffa003fe:	10 00       	RTS;

ffa00400 <_LogicalToPhysicalChan>:
ffa00400:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00402:	50 54       	R1 = R0 & R2;
ffa00404:	10 4d       	R0 >>>= 0x2;
ffa00406:	51 58       	R1 = R1 ^ R2;
ffa00408:	10 54       	R0 = R0 & R2;
ffa0040a:	08 4b       	BITTGL (R0, 0x1);		/* bit  1 */
ffa0040c:	11 4f       	R1 <<= 0x2;
ffa0040e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00412:	41 56       	R1 = R1 | R0;
ffa00414:	01 30       	R0 = R1;
ffa00416:	01 e8 00 00 	UNLINK;
ffa0041a:	10 00       	RTS;

ffa0041c <_exception_report>:
ffa0041c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0041e:	38 30       	R7 = R0;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900056(-7339946) */
ffa00424:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00428:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0042c:	31 30       	R6 = R1;
ffa0042e:	00 e3 cf 06 	CALL 0xffa011cc <_printf_str>;
ffa00432:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00434:	82 c6 97 83 	R1 = R7 >> 0xe;
ffa00438:	41 54       	R1 = R1 & R0;
ffa0043a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001f(-7340001) */
ffa0043e:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa00442:	00 e3 d9 04 	CALL 0xffa00df4 <_printf_hex>;
ffa00446:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa0044a:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0044e:	00 e3 bf 06 	CALL 0xffa011cc <_printf_str>;
ffa00452:	f9 61       	R1 = 0x3f (X);		/*		R1=0x3f( 63) */
ffa00454:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00458:	4f 54       	R1 = R7 & R1;
ffa0045a:	00 e1 18 00 	R0.L = 0x18;		/* ( 24)	R0=0xff900018(-7340008) */
ffa0045e:	00 e3 cb 04 	CALL 0xffa00df4 <_printf_hex>;
ffa00462:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900018(-7340008) */
ffa00466:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0046a:	00 e3 b1 06 	CALL 0xffa011cc <_printf_str>;
ffa0046e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00472:	0e 30       	R1 = R6;
ffa00474:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00478:	00 e3 be 04 	CALL 0xffa00df4 <_printf_hex>;
ffa0047c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa00480:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00484:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900800 */
ffa00488:	0d e1 58 0c 	P5.L = 0xc58;		/* (3160)	P5=0xff900c58 <_g_excregs> */
ffa0048c:	00 e3 a0 06 	CALL 0xffa011cc <_printf_str>;
ffa00490:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00494:	29 91       	R1 = [P5];
ffa00496:	00 e1 2c 00 	R0.L = 0x2c;		/* ( 44)	R0=0xff90002c(-7339988) */
ffa0049a:	00 e3 ad 04 	CALL 0xffa00df4 <_printf_hex>;
ffa0049e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004a2:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa004a6:	00 e3 93 06 	CALL 0xffa011cc <_printf_str>;
ffa004aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa004ae:	69 a0       	R1 = [P5 + 0x4];
ffa004b0:	00 e1 30 00 	R0.L = 0x30;		/* ( 48)	R0=0xff900030(-7339984) */
ffa004b4:	00 e3 a0 04 	CALL 0xffa00df4 <_printf_hex>;
ffa004b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900030(-7339984) */
ffa004bc:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa004c0:	00 e3 86 06 	CALL 0xffa011cc <_printf_str>;
ffa004c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa004c8:	a9 a0       	R1 = [P5 + 0x8];
ffa004ca:	00 e1 34 00 	R0.L = 0x34;		/* ( 52)	R0=0xff900034(-7339980) */
ffa004ce:	00 e3 93 04 	CALL 0xffa00df4 <_printf_hex>;
ffa004d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900034(-7339980) */
ffa004d6:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa004da:	00 e3 79 06 	CALL 0xffa011cc <_printf_str>;
ffa004de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa004e2:	e9 a0       	R1 = [P5 + 0xc];
ffa004e4:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0xff900038(-7339976) */
ffa004e8:	00 e3 86 04 	CALL 0xffa00df4 <_printf_hex>;
ffa004ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900038(-7339976) */
ffa004f0:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa004f4:	00 e3 6c 06 	CALL 0xffa011cc <_printf_str>;
ffa004f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa004fc:	29 a1       	R1 = [P5 + 0x10];
ffa004fe:	00 e1 3c 00 	R0.L = 0x3c;		/* ( 60)	R0=0xff90003c(-7339972) */
ffa00502:	00 e3 79 04 	CALL 0xffa00df4 <_printf_hex>;
ffa00506:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003c(-7339972) */
ffa0050a:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0050e:	00 e3 5f 06 	CALL 0xffa011cc <_printf_str>;
ffa00512:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00516:	69 a1       	R1 = [P5 + 0x14];
ffa00518:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0xff900040(-7339968) */
ffa0051c:	00 e3 6c 04 	CALL 0xffa00df4 <_printf_hex>;
ffa00520:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900040(-7339968) */
ffa00524:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00528:	00 e3 52 06 	CALL 0xffa011cc <_printf_str>;
ffa0052c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00530:	a9 a1       	R1 = [P5 + 0x18];
ffa00532:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa00536:	00 e3 5f 04 	CALL 0xffa00df4 <_printf_hex>;
ffa0053a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0053e:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00542:	00 e3 45 06 	CALL 0xffa011cc <_printf_str>;
ffa00546:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa0054a:	e9 a1       	R1 = [P5 + 0x1c];
ffa0054c:	00 e1 48 00 	R0.L = 0x48;		/* ( 72)	R0=0xff900048(-7339960) */
ffa00550:	00 e3 52 04 	CALL 0xffa00df4 <_printf_hex>;
ffa00554:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900048(-7339960) */
ffa00558:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0055c:	00 e3 38 06 	CALL 0xffa011cc <_printf_str>;
ffa00560:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00564:	29 a2       	R1 = [P5 + 0x20];
ffa00566:	00 e1 4c 00 	R0.L = 0x4c;		/* ( 76)	R0=0xff90004c(-7339956) */
ffa0056a:	00 e3 45 04 	CALL 0xffa00df4 <_printf_hex>;
ffa0056e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90004c(-7339956) */
ffa00572:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00576:	00 e3 2b 06 	CALL 0xffa011cc <_printf_str>;
ffa0057a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa0057e:	69 a2       	R1 = [P5 + 0x24];
ffa00580:	00 e1 50 00 	R0.L = 0x50;		/* ( 80)	R0=0xff900050(-7339952) */
ffa00584:	00 e3 38 04 	CALL 0xffa00df4 <_printf_hex>;
ffa00588:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa0058c:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00590:	00 e3 1e 06 	CALL 0xffa011cc <_printf_str>;
ffa00594:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00598:	a9 a2       	R1 = [P5 + 0x28];
ffa0059a:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa0059e:	00 e3 2b 04 	CALL 0xffa00df4 <_printf_hex>;
ffa005a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa005a6:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa005aa:	00 e3 11 06 	CALL 0xffa011cc <_printf_str>;
ffa005ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa005b2:	e9 a2       	R1 = [P5 + 0x2c];
ffa005b4:	00 e1 58 00 	R0.L = 0x58;		/* ( 88)	R0=0xff900058(-7339944) */
ffa005b8:	00 e3 1e 04 	CALL 0xffa00df4 <_printf_hex>;
ffa005bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900058(-7339944) */
ffa005c0:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa005c4:	00 e3 04 06 	CALL 0xffa011cc <_printf_str>;
ffa005c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa005cc:	29 a3       	R1 = [P5 + 0x30];
ffa005ce:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005d2:	00 e3 11 04 	CALL 0xffa00df4 <_printf_hex>;
ffa005d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005da:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa005de:	00 e3 f7 05 	CALL 0xffa011cc <_printf_str>;
ffa005e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa005e6:	69 a3       	R1 = [P5 + 0x34];
ffa005e8:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa005ec:	00 e3 04 04 	CALL 0xffa00df4 <_printf_hex>;
ffa005f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900060(-7339936) */
ffa005f4:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa005f8:	00 e3 ea 05 	CALL 0xffa011cc <_printf_str>;
ffa005fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00600:	a9 a3       	R1 = [P5 + 0x38];
ffa00602:	00 e1 64 00 	R0.L = 0x64;		/* (100)	R0=0xff900064(-7339932) */
ffa00606:	00 e3 f7 03 	CALL 0xffa00df4 <_printf_hex>;
ffa0060a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900064(-7339932) */
ffa0060e:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa00612:	00 e3 dd 05 	CALL 0xffa011cc <_printf_str>;
ffa00616:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa0061a:	e9 a3       	R1 = [P5 + 0x3c];
ffa0061c:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00620:	00 e3 ea 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00624:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa00628:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa0062c:	00 e3 d0 05 	CALL 0xffa011cc <_printf_str>;
ffa00630:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa00634:	29 e4 10 00 	R1 = [P5 + 0x40];
ffa00638:	00 e1 6c 00 	R0.L = 0x6c;		/* (108)	R0=0xff90006c(-7339924) */
ffa0063c:	00 e3 dc 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00640:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90006c(-7339924) */
ffa00644:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00648:	00 e3 c2 05 	CALL 0xffa011cc <_printf_str>;
ffa0064c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa00650:	29 e4 11 00 	R1 = [P5 + 0x44];
ffa00654:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00658:	00 e3 ce 03 	CALL 0xffa00df4 <_printf_hex>;
ffa0065c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900070(-7339920) */
ffa00660:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa00664:	00 e3 b4 05 	CALL 0xffa011cc <_printf_str>;
ffa00668:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa0066c:	29 e4 12 00 	R1 = [P5 + 0x48];
ffa00670:	00 e1 74 00 	R0.L = 0x74;		/* (116)	R0=0xff900074(-7339916) */
ffa00674:	00 e3 c0 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00678:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900074(-7339916) */
ffa0067c:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa00680:	00 e3 a6 05 	CALL 0xffa011cc <_printf_str>;
ffa00684:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa00688:	29 e4 13 00 	R1 = [P5 + 0x4c];
ffa0068c:	00 e1 78 00 	R0.L = 0x78;		/* (120)	R0=0xff900078(-7339912) */
ffa00690:	00 e3 b2 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00694:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900078(-7339912) */
ffa00698:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0069c:	00 e3 98 05 	CALL 0xffa011cc <_printf_str>;
ffa006a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa006a4:	29 e4 14 00 	R1 = [P5 + 0x50];
ffa006a8:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa006ac:	00 e3 a4 03 	CALL 0xffa00df4 <_printf_hex>;
ffa006b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa006b4:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa006b8:	00 e3 8a 05 	CALL 0xffa011cc <_printf_str>;
ffa006bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa006c0:	29 e4 15 00 	R1 = [P5 + 0x54];
ffa006c4:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0xff900080(-7339904) */
ffa006c8:	00 e3 96 03 	CALL 0xffa00df4 <_printf_hex>;
ffa006cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900080(-7339904) */
ffa006d0:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa006d4:	00 e3 7c 05 	CALL 0xffa011cc <_printf_str>;
ffa006d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa006dc:	29 e4 16 00 	R1 = [P5 + 0x58];
ffa006e0:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa006e4:	00 e3 88 03 	CALL 0xffa00df4 <_printf_hex>;
ffa006e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900084(-7339900) */
ffa006ec:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa006f0:	00 e3 6e 05 	CALL 0xffa011cc <_printf_str>;
ffa006f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa006f8:	29 e4 17 00 	R1 = [P5 + 0x5c];
ffa006fc:	00 e1 88 00 	R0.L = 0x88;		/* (136)	R0=0xff900088(-7339896) */
ffa00700:	00 e3 7a 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00704:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900088(-7339896) */
ffa00708:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa0070c:	00 e3 60 05 	CALL 0xffa011cc <_printf_str>;
ffa00710:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa00714:	29 e4 18 00 	R1 = [P5 + 0x60];
ffa00718:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa0071c:	00 e3 6c 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00720:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90008c(-7339892) */
ffa00724:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa00728:	00 e3 52 05 	CALL 0xffa011cc <_printf_str>;
ffa0072c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa00730:	29 e4 19 00 	R1 = [P5 + 0x64];
ffa00734:	00 e1 90 00 	R0.L = 0x90;		/* (144)	R0=0xff900090(-7339888) */
ffa00738:	00 e3 5e 03 	CALL 0xffa00df4 <_printf_hex>;
ffa0073c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900090(-7339888) */
ffa00740:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa00744:	00 e3 44 05 	CALL 0xffa011cc <_printf_str>;
ffa00748:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa0074c:	29 e4 1a 00 	R1 = [P5 + 0x68];
ffa00750:	00 e1 94 00 	R0.L = 0x94;		/* (148)	R0=0xff900094(-7339884) */
ffa00754:	00 e3 50 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00758:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900094(-7339884) */
ffa0075c:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa00760:	00 e3 36 05 	CALL 0xffa011cc <_printf_str>;
ffa00764:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa00768:	29 e4 1b 00 	R1 = [P5 + 0x6c];
ffa0076c:	00 e1 98 00 	R0.L = 0x98;		/* (152)	R0=0xff900098(-7339880) */
ffa00770:	00 e3 42 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00774:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900098(-7339880) */
ffa00778:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa0077c:	00 e3 28 05 	CALL 0xffa011cc <_printf_str>;
ffa00780:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa00784:	29 e4 1c 00 	R1 = [P5 + 0x70];
ffa00788:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa0078c:	00 e3 34 03 	CALL 0xffa00df4 <_printf_hex>;
ffa00790:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa00794:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa00798:	00 e3 1a 05 	CALL 0xffa011cc <_printf_str>;
ffa0079c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b0(-7338576) */
ffa007a0:	29 e4 1d 00 	R1 = [P5 + 0x74];
ffa007a4:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa007a8:	00 e3 26 03 	CALL 0xffa00df4 <_printf_hex>;
ffa007ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa007b0:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa007b4:	00 e3 0c 05 	CALL 0xffa011cc <_printf_str>;
ffa007b8:	00 00       	NOP;
ffa007ba:	ff 2f       	JUMP.S 0xffa007b8 <_exception_report+0x39c>;

ffa007bc <_main>:
ffa007bc:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00000(-2097152) */
ffa007c0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa007c2:	20 e1 01 10 	R0 = 0x1001 (X);		/*		R0=0x1001(4097) */
ffa007c6:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa007ca:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa007ce:	10 93       	[P2] = R0;
ffa007d0:	23 00       	CSYNC;
ffa007d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa007d6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007d8:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xffc00800(-4192256) */
ffa007dc:	11 97       	W[P2] = R1;
ffa007de:	22 6c       	P2 += 0x4;		/* (  4) */
ffa007e0:	11 97       	W[P2] = R1;
ffa007e2:	e2 6c       	P2 += 0x1c;		/* ( 28) */
ffa007e4:	11 97       	W[P2] = R1;
ffa007e6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa007e8:	11 97       	W[P2] = R1;
ffa007ea:	22 6f       	P2 += -0x1c;		/* (-28) */
ffa007ec:	11 97       	W[P2] = R1;
ffa007ee:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa007f0:	11 97       	W[P2] = R1;
ffa007f2:	22 6f       	P2 += -0x1c;		/* (-28) */
ffa007f4:	11 97       	W[P2] = R1;
ffa007f6:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa007f8:	11 97       	W[P2] = R1;
ffa007fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa007fe:	0a e1 00 09 	P2.L = 0x900;		/* (2304)	P2=0xffc00900(-4192000) */
ffa00802:	11 97       	W[P2] = R1;
ffa00804:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00806:	11 97       	W[P2] = R1;
ffa00808:	e2 6c       	P2 += 0x1c;		/* ( 28) */
ffa0080a:	11 97       	W[P2] = R1;
ffa0080c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0080e:	11 97       	W[P2] = R1;
ffa00810:	22 6f       	P2 += -0x1c;		/* (-28) */
ffa00812:	11 97       	W[P2] = R1;
ffa00814:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa00816:	11 97       	W[P2] = R1;
ffa00818:	22 6f       	P2 += -0x1c;		/* (-28) */
ffa0081a:	11 97       	W[P2] = R1;
ffa0081c:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0081e:	11 97       	W[P2] = R1;
ffa00820:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00900(-4192000) */
ffa00824:	20 e1 87 38 	R0 = 0x3887 (X);		/*		R0=0x3887(14471) */
ffa00828:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa0082c:	10 97       	W[P2] = R0;
ffa0082e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00832:	20 e1 06 38 	R0 = 0x3806 (X);		/*		R0=0x3806(14342) */
ffa00836:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0083a:	10 97       	W[P2] = R0;
ffa0083c:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa00840:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00842:	10 97       	W[P2] = R0;
ffa00844:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00848:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa0084c:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00850:	10 97       	W[P2] = R0;
ffa00852:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00856:	20 e1 f7 76 	R0 = 0x76f7 (X);		/*		R0=0x76f7(30455) */
ffa0085a:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa0085e:	10 97       	W[P2] = R0;
ffa00860:	20 e1 08 09 	R0 = 0x908 (X);		/*		R0=0x908(2312) */
ffa00864:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00866:	10 97       	W[P2] = R0;
ffa00868:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa0086c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0086e:	0a e1 08 32 	P2.L = 0x3208;		/* (12808)	P2=0xffc03208(-4181496) */
ffa00872:	10 97       	W[P2] = R0;
ffa00874:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03208(-4181496) */
ffa00878:	0a e1 30 17 	P2.L = 0x1730;		/* (5936)	P2=0xffc01730(-4188368) */
ffa0087c:	11 97       	W[P2] = R1;
ffa0087e:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00880:	11 97       	W[P2] = R1;
ffa00882:	24 00       	SSYNC;
ffa00884:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00708(-4192504) */
ffa00888:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01730(-4188368) */
ffa0088c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00508(-4193016) */
ffa00890:	09 e1 04 04 	P1.L = 0x404;		/* (1028)	P1=0xffc00404(-4193276) */
ffa00894:	08 e1 0c 04 	P0.L = 0x40c;		/* (1036)	P0=0xffc0040c(-4193268) */
ffa00898:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa0089c:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa008a0:	09 97       	W[P1] = R1;
ffa008a2:	11 97       	W[P2] = R1;
ffa008a4:	00 97       	W[P0] = R0;
ffa008a6:	82 6f       	P2 += -0x10;		/* (-16) */
ffa008a8:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa008ac:	10 97       	W[P2] = R0;
ffa008ae:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa008b0:	09 97       	W[P1] = R1;
ffa008b2:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa008b4:	00 97       	W[P0] = R0;
ffa008b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa008b8:	10 97       	W[P2] = R0;
ffa008ba:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa008bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa008c0:	b8 4f       	R0 <<= 0x17;
ffa008c2:	0a e1 d4 0c 	P2.L = 0xcd4;		/* (3284)	P2=0xff900cd4 <_printf_temp> */
ffa008c6:	10 93       	[P2] = R0;
ffa008c8:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa008cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd4 <_printf_temp> */
ffa008d0:	0a e1 d8 0c 	P2.L = 0xcd8;		/* (3288)	P2=0xff900cd8 <_printf_out> */
ffa008d4:	50 4f       	R0 <<= 0xa;
ffa008d6:	10 93       	[P2] = R0;
ffa008d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa008dc:	21 e1 7a 01 	R1 = 0x17a (X);		/*		R1=0x17a(378) */
ffa008e0:	00 e1 a4 00 	R0.L = 0xa4;		/* (164)	R0=0xff9000a4(-7339868) */
ffa008e4:	00 e3 84 03 	CALL 0xffa00fec <_printf_int>;
ffa008e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a4(-7339868) */
ffa008ec:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa008f0:	00 e3 6e 04 	CALL 0xffa011cc <_printf_str>;
ffa008f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa008f8:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa008fc:	00 e3 68 04 	CALL 0xffa011cc <_printf_str>;
ffa00900:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x400404 */
ffa00904:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00906:	23 e1 ca de 	R3 = -0x2136 (X);		/*		R3=0xffffdeca(-8502) */
ffa0090a:	20 e1 ad fb 	R0 = -0x453 (X);		/*		R0=0xfffffbad(-1107) */
ffa0090e:	21 e1 ed c0 	R1 = -0x3f13 (X);		/*		R1=0xffffc0ed(-16147) */
ffa00912:	22 e1 be ba 	R2 = -0x4542 (X);		/*		R2=0xffffbabe(-17730) */
ffa00916:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa0091a:	b2 e0 06 10 	LSETUP(0xffa0091e <_main+0x162>, 0xffa00926 <_main+0x16a>) LC1 = P1;
ffa0091e:	13 97       	W[P2] = R3;
ffa00920:	50 b4       	W[P2 + 0x2] = R0;
ffa00922:	91 b4       	W[P2 + 0x4] = R1;
ffa00924:	d2 b4       	W[P2 + 0x6] = R2;
ffa00926:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00928:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0092a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0092c:	02 20       	JUMP.S 0xffa00930 <_main+0x174>;
ffa0092e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00930:	2f 95       	R7 = W[P5] (Z);
ffa00932:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00936:	07 08       	CC = R7 == R0;
ffa00938:	1a 18       	IF CC JUMP 0xffa0096c <_main+0x1b0>;
ffa0093a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa0093e:	0e 30       	R1 = R6;
ffa00940:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00944:	00 e3 58 02 	CALL 0xffa00df4 <_printf_hex>;
ffa00948:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa0094c:	0f 30       	R1 = R7;
ffa0094e:	00 e1 d4 00 	R0.L = 0xd4;		/* (212)	R0=0xff9000d4(-7339820) */
ffa00952:	00 e3 51 02 	CALL 0xffa00df4 <_printf_hex>;
ffa00956:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d4(-7339820) */
ffa0095a:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0095e:	00 e3 37 04 	CALL 0xffa011cc <_printf_str>;
ffa00962:	20 e1 35 0c 	R0 = 0xc35 (X);		/*		R0=0xc35(3125) */
ffa00966:	38 4f       	R0 <<= 0x7;
ffa00968:	ff e3 2c fc 	CALL 0xffa001c0 <_delay>;
ffa0096c:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa0096e:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00972:	08 08       	CC = R0 == R1;
ffa00974:	08 18       	IF CC JUMP 0xffa00984 <_main+0x1c8>;
ffa00976:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900c35(-7336907) */
ffa0097a:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa0097e:	0e 30       	R1 = R6;
ffa00980:	00 e3 3a 02 	CALL 0xffa00df4 <_printf_hex>;
ffa00984:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00986:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa0098a:	08 08       	CC = R0 == R1;
ffa0098c:	08 18       	IF CC JUMP 0xffa0099c <_main+0x1e0>;
ffa0098e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa00992:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00996:	0e 30       	R1 = R6;
ffa00998:	00 e3 2e 02 	CALL 0xffa00df4 <_printf_hex>;
ffa0099c:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa0099e:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa009a2:	08 08       	CC = R0 == R1;
ffa009a4:	08 18       	IF CC JUMP 0xffa009b4 <_main+0x1f8>;
ffa009a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa009aa:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa009ae:	0e 30       	R1 = R6;
ffa009b0:	00 e3 22 02 	CALL 0xffa00df4 <_printf_hex>;
ffa009b4:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa009b8:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa009bc:	55 08       	CC = P5 == P2;
ffa009be:	0e 64       	R6 += 0x1;		/* (  1) */
ffa009c0:	b7 17       	IF !CC JUMP 0xffa0092e <_main+0x172> (BP);
ffa009c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa009c6:	00 e1 dc 00 	R0.L = 0xdc;		/* (220)	R0=0xff9000dc(-7339812) */
ffa009ca:	00 e3 01 04 	CALL 0xffa011cc <_printf_str>;
ffa009ce:	00 e3 b5 14 	CALL 0xffa03338 <_bfin_EMAC_init>;
ffa009d2:	00 0c       	CC = R0 == 0x0;
ffa009d4:	38 30       	R7 = R0;
ffa009d6:	ae 18       	IF CC JUMP 0xffa00b32 <_main+0x376>;
ffa009d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90fff8 */
ffa009dc:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa009de:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_mouseXpos> */
ffa009e2:	10 9b       	B[P2] = R0;
ffa009e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_g_mouseXpos> */
ffa009e8:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa009ea:	0a e1 4d 0c 	P2.L = 0xc4d;		/* (3149)	P2=0xff900c4d <_g_mouseXneg> */
ffa009ee:	10 9b       	B[P2] = R0;
ffa009f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4d <_g_mouseXneg> */
ffa009f4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa009f6:	0a e1 d0 0c 	P2.L = 0xcd0;		/* (3280)	P2=0xff900cd0 <_g_mouseYpos> */
ffa009fa:	10 9b       	B[P2] = R0;
ffa009fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd0 <_g_mouseYpos> */
ffa00a00:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00a02:	0a e1 d1 0c 	P2.L = 0xcd1;		/* (3281)	P2=0xff900cd1 <_g_mouseYneg> */
ffa00a06:	10 9b       	B[P2] = R0;
ffa00a08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd1 <_g_mouseYneg> */
ffa00a0c:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_g_mouseShift> */
ffa00a10:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00a12:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa00a16:	10 93       	[P2] = R0;
ffa00a18:	0c e1 54 0c 	P4.L = 0xc54;		/* (3156)	P4=0xff900c54 <_g_streamEnabled> */
ffa00a1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a1e:	20 9b       	B[P4] = R0;
ffa00a20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00a24:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa00a28:	00 e3 d2 03 	CALL 0xffa011cc <_printf_str>;
ffa00a2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa00a30:	20 e1 13 01 	R0 = 0x113 (X);		/*		R0=0x113(275) */
ffa00a34:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa00a38:	10 97       	W[P2] = R0;
ffa00a3a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa00a3e:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa00a42:	10 97       	W[P2] = R0;
ffa00a44:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00924(-4191964) */
ffa00a48:	20 e1 01 44 	R0 = 0x4401 (X);		/*		R0=0x4401(17409) */
ffa00a4c:	0a e1 20 08 	P2.L = 0x820;		/* (2080)	P2=0xffc00820(-4192224) */
ffa00a50:	10 97       	W[P2] = R0;
ffa00a52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00820(-4192224) */
ffa00a56:	0a e1 20 09 	P2.L = 0x920;		/* (2336)	P2=0xffc00920(-4191968) */
ffa00a5a:	10 97       	W[P2] = R0;
ffa00a5c:	20 e1 95 00 	R0 = 0x95 (X);		/*		R0=0x95(149) */
ffa00a60:	42 6f       	P2 += -0x18;		/* (-24) */
ffa00a62:	10 97       	W[P2] = R0;
ffa00a64:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa00a66:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00a68:	10 97       	W[P2] = R0;
ffa00a6a:	77 30       	R6 = FP;
ffa00a6c:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa00a6e:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00a70:	67 30       	R4 = FP;
ffa00a72:	4b e1 80 ff 	P3.H = 0xff80;		/* (-128)	P3=0xff800000 */
ffa00a76:	10 97       	W[P2] = R0;
ffa00a78:	c6 67       	R6 += -0x8;		/* ( -8) */
ffa00a7a:	20 e1 03 46 	R0 = 0x4603 (X);		/*		R0=0x4603(17923) */
ffa00a7e:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa00a80:	fc 67       	R4 += -0x1;		/* ( -1) */
ffa00a82:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa00a86:	0b e1 08 08 	P3.L = 0x808;		/* (2056)	P3=0xff800808 */
ffa00a8a:	10 97       	W[P2] = R0;
ffa00a8c:	08 20       	JUMP.S 0xffa00a9c <_main+0x2e0>;
ffa00a8e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00920(-4191968) */
ffa00a92:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00a96:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa00a9a:	10 97       	W[P2] = R0;
ffa00a9c:	07 0c       	CC = R7 == 0x0;
ffa00a9e:	f8 17       	IF !CC JUMP 0xffa00a8e <_main+0x2d2> (BP);
ffa00aa0:	06 30       	R0 = R6;
ffa00aa2:	00 e3 5b 1a 	CALL 0xffa03f58 <_bfin_EMAC_recv>;
ffa00aa6:	00 e3 57 0c 	CALL 0xffa02354 <_bfin_EMAC_send_check>;
ffa00aaa:	00 0c       	CC = R0 == 0x0;
ffa00aac:	f1 1f       	IF CC JUMP 0xffa00a8e <_main+0x2d2> (BP);
ffa00aae:	20 99       	R0 = B[P4] (Z);
ffa00ab0:	00 0c       	CC = R0 == 0x0;
ffa00ab2:	ee 1f       	IF CC JUMP 0xffa00a8e <_main+0x2d2> (BP);
ffa00ab4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80070c */
ffa00ab8:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800000 */
ffa00abc:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa00ac0:	0d e1 08 08 	P5.L = 0x808;		/* (2056)	P5=0xff800808 */
ffa00ac4:	11 91       	R1 = [P2];
ffa00ac6:	28 91       	R0 = [P5];
ffa00ac8:	81 09       	CC = R1 < R0 (IU);
ffa00aca:	03 14       	IF !CC JUMP 0xffa00ad0 <_main+0x314> (BP);
ffa00acc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ace:	28 93       	[P5] = R0;
ffa00ad0:	01 52       	R0 = R1 - R0;
ffa00ad2:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa00ad6:	08 0a       	CC = R0 <= R1 (IU);
ffa00ad8:	db 1f       	IF CC JUMP 0xffa00a8e <_main+0x2d2> (BP);
ffa00ada:	20 e1 04 02 	R0 = 0x204 (X);		/*		R0=0x204(516) */
ffa00ade:	0c 30       	R1 = R4;
ffa00ae0:	00 e3 76 13 	CALL 0xffa031cc <_udp_packet_setup>;
ffa00ae4:	10 32       	P2 = R0;
ffa00ae6:	e0 bb       	[FP -0x8] = R0;
ffa00ae8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00aec:	00 0d       	CC = R0 <= 0x0;
ffa00aee:	1e 18       	IF CC JUMP 0xffa00b2a <_main+0x36e>;
ffa00af0:	00 00       	NOP;
ffa00af2:	00 00       	NOP;
ffa00af4:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00af8:	28 91       	R0 = [P5];
ffa00afa:	10 92       	[P2++] = R0;
ffa00afc:	29 91       	R1 = [P5];
ffa00afe:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa00b00:	01 54       	R0 = R1 & R0;
ffa00b02:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00b04:	52 30       	R2 = P2;
ffa00b06:	42 32       	P0 = P2;
ffa00b08:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa00b0c:	b2 e0 06 10 	LSETUP(0xffa00b10 <_main+0x354>, 0xffa00b18 <_main+0x35c>) LC1 = P1;
ffa00b10:	08 54       	R0 = R0 & R1;
ffa00b12:	10 32       	P2 = R0;
ffa00b14:	10 90       	R0 = [P2++];
ffa00b16:	00 92       	[P0++] = R0;
ffa00b18:	42 30       	R0 = P2;
ffa00b1a:	2a 50       	R0 = R2 + R5;
ffa00b1c:	e0 bb       	[FP -0x8] = R0;
ffa00b1e:	18 91       	R0 = [P3];
ffa00b20:	28 50       	R0 = R0 + R5;
ffa00b22:	18 93       	[P3] = R0;
ffa00b24:	00 e3 de 0e 	CALL 0xffa028e0 <_bfin_EMAC_send_nocopy>;
ffa00b28:	b3 2f       	JUMP.S 0xffa00a8e <_main+0x2d2>;
ffa00b2a:	28 91       	R0 = [P5];
ffa00b2c:	28 50       	R0 = R0 + R5;
ffa00b2e:	28 93       	[P5] = R0;
ffa00b30:	af 2f       	JUMP.S 0xffa00a8e <_main+0x2d2>;
ffa00b32:	00 e3 a1 19 	CALL 0xffa03e74 <_DHCP_req>;
ffa00b36:	51 2f       	JUMP.S 0xffa009d8 <_main+0x21c>;

ffa00b38 <_uart_str>:
ffa00b38:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00804(-4192252) */
ffa00b3c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00b40:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00b44:	08 32       	P1 = R0;
ffa00b46:	50 95       	R0 = W[P2] (X);
ffa00b48:	c0 42       	R0 = R0.L (Z);
ffa00b4a:	08 0c       	CC = R0 == 0x1;
ffa00b4c:	06 18       	IF CC JUMP 0xffa00b58 <_uart_str+0x20>;
ffa00b4e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00b50:	02 30       	R0 = R2;
ffa00b52:	01 e8 00 00 	UNLINK;
ffa00b56:	10 00       	RTS;
ffa00b58:	48 99       	R0 = B[P1] (X);
ffa00b5a:	01 43       	R1 = R0.B (X);
ffa00b5c:	01 0c       	CC = R1 == 0x0;
ffa00b5e:	f8 1b       	IF CC JUMP 0xffa00b4e <_uart_str+0x16>;
ffa00b60:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa00b64:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00b66:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00b68:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00b6c:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00b70:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa00b72:	b2 e0 1c 00 	LSETUP(0xffa00b76 <_uart_str+0x3e>, 0xffa00baa <_uart_str+0x72>) LC1 = P0;
ffa00b76:	19 08       	CC = R1 == R3;
ffa00b78:	1b 18       	IF CC JUMP 0xffa00bae <_uart_str+0x76>;
ffa00b7a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00b7e:	00 43       	R0 = R0.B (X);
ffa00b80:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00b84:	10 97       	W[P2] = R0;
ffa00b86:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00b88:	50 95       	R0 = W[P2] (X);
ffa00b8a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00b8c:	0a 10       	IF !CC JUMP 0xffa00ba0 <_uart_str+0x68>;
ffa00b8e:	00 00       	NOP;
ffa00b90:	00 00       	NOP;
ffa00b92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00b96:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00b9a:	50 95       	R0 = W[P2] (X);
ffa00b9c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00b9e:	f9 1f       	IF CC JUMP 0xffa00b90 <_uart_str+0x58> (BP);
ffa00ba0:	48 99       	R0 = B[P1] (X);
ffa00ba2:	01 43       	R1 = R0.B (X);
ffa00ba4:	01 0c       	CC = R1 == 0x0;
ffa00ba6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00ba8:	d4 1b       	IF CC JUMP 0xffa00b50 <_uart_str+0x18>;
ffa00baa:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00bac:	d2 2f       	JUMP.S 0xffa00b50 <_uart_str+0x18>;
ffa00bae:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00bb0:	20 9f       	W[I0] = R0.L;
ffa00bb2:	02 20       	JUMP.S 0xffa00bb6 <_uart_str+0x7e>;
ffa00bb4:	00 00       	NOP;
ffa00bb6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00bba:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00bbe:	50 95       	R0 = W[P2] (X);
ffa00bc0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00bc2:	f9 1f       	IF CC JUMP 0xffa00bb4 <_uart_str+0x7c> (BP);
ffa00bc4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00bc8:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00bca:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00bce:	10 97       	W[P2] = R0;
ffa00bd0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00bd2:	50 95       	R0 = W[P2] (X);
ffa00bd4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00bd6:	e5 13       	IF !CC JUMP 0xffa00ba0 <_uart_str+0x68>;
ffa00bd8:	00 00       	NOP;
ffa00bda:	00 00       	NOP;
ffa00bdc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00be0:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00be4:	50 95       	R0 = W[P2] (X);
ffa00be6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00be8:	f9 1f       	IF CC JUMP 0xffa00bda <_uart_str+0xa2> (BP);
ffa00bea:	db 2f       	JUMP.S 0xffa00ba0 <_uart_str+0x68>;

ffa00bec <_printf_newline>:
ffa00bec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00bf0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00bf4:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00bf8:	50 95       	R0 = W[P2] (X);
ffa00bfa:	c0 42       	R0 = R0.L (Z);
ffa00bfc:	08 0c       	CC = R0 == 0x1;
ffa00bfe:	04 18       	IF CC JUMP 0xffa00c06 <_printf_newline+0x1a>;
ffa00c00:	01 e8 00 00 	UNLINK;
ffa00c04:	10 00       	RTS;
ffa00c06:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00c0a:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00400(-4193280) */
ffa00c0e:	08 e1 e0 07 	P0.L = 0x7e0;		/* (2016)	P0=0xff9007e0 */
ffa00c12:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00c14:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00c16:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00c1a:	29 e1 00 04 	P1 = 0x400 (X);		/*		P1=0x400(1024) */
ffa00c1e:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa00c20:	b2 e0 1c 10 	LSETUP(0xffa00c24 <_printf_newline+0x38>, 0xffa00c58 <_printf_newline+0x6c>) LC1 = P1;
ffa00c24:	11 08       	CC = R1 == R2;
ffa00c26:	1b 18       	IF CC JUMP 0xffa00c5c <_printf_newline+0x70>;
ffa00c28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00c2c:	00 43       	R0 = R0.B (X);
ffa00c2e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00c32:	10 97       	W[P2] = R0;
ffa00c34:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00c36:	50 95       	R0 = W[P2] (X);
ffa00c38:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00c3a:	0a 10       	IF !CC JUMP 0xffa00c4e <_printf_newline+0x62>;
ffa00c3c:	00 00       	NOP;
ffa00c3e:	00 00       	NOP;
ffa00c40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00c44:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00c48:	50 95       	R0 = W[P2] (X);
ffa00c4a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00c4c:	f9 1f       	IF CC JUMP 0xffa00c3e <_printf_newline+0x52> (BP);
ffa00c4e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00c50:	40 99       	R0 = B[P0] (X);
ffa00c52:	01 43       	R1 = R0.B (X);
ffa00c54:	01 0c       	CC = R1 == 0x0;
ffa00c56:	d5 1b       	IF CC JUMP 0xffa00c00 <_printf_newline+0x14>;
ffa00c58:	00 00       	NOP;
ffa00c5a:	d3 2f       	JUMP.S 0xffa00c00 <_printf_newline+0x14>;
ffa00c5c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00c5e:	20 9f       	W[I0] = R0.L;
ffa00c60:	02 20       	JUMP.S 0xffa00c64 <_printf_newline+0x78>;
ffa00c62:	00 00       	NOP;
ffa00c64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00c68:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00c6c:	50 95       	R0 = W[P2] (X);
ffa00c6e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00c70:	f9 1f       	IF CC JUMP 0xffa00c62 <_printf_newline+0x76> (BP);
ffa00c72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00c76:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00c78:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00c7c:	10 97       	W[P2] = R0;
ffa00c7e:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00c80:	50 95       	R0 = W[P2] (X);
ffa00c82:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00c84:	e5 13       	IF !CC JUMP 0xffa00c4e <_printf_newline+0x62>;
ffa00c86:	00 00       	NOP;
ffa00c88:	00 00       	NOP;
ffa00c8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00c8e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00c92:	50 95       	R0 = W[P2] (X);
ffa00c94:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00c96:	f9 1f       	IF CC JUMP 0xffa00c88 <_printf_newline+0x9c> (BP);
ffa00c98:	db 2f       	JUMP.S 0xffa00c4e <_printf_newline+0x62>;
	...

ffa00c9c <_printf_hex_byte>:
ffa00c9c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00c9e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ca2:	28 32       	P5 = R0;
ffa00ca4:	39 30       	R7 = R1;
ffa00ca6:	00 e3 9b 03 	CALL 0xffa013dc <_strlen_>;
ffa00caa:	10 30       	R2 = R0;
ffa00cac:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00cb0:	02 09       	CC = R2 <= R0;
ffa00cb2:	96 10       	IF !CC JUMP 0xffa00dde <_printf_hex_byte+0x142>;
ffa00cb4:	02 0d       	CC = R2 <= 0x0;
ffa00cb6:	99 18       	IF CC JUMP 0xffa00de8 <_printf_hex_byte+0x14c>;
ffa00cb8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff9007e0 */
ffa00cbc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cbe:	08 e1 d8 0c 	P0.L = 0xcd8;		/* (3288)	P0=0xff900cd8 <_printf_out> */
ffa00cc2:	09 32       	P1 = R1;
ffa00cc4:	42 91       	P2 = [P0];
ffa00cc6:	09 64       	R1 += 0x1;		/* (  1) */
ffa00cc8:	68 98       	R0 = B[P5++] (X);
ffa00cca:	0a 08       	CC = R2 == R1;
ffa00ccc:	8a 5a       	P2 = P2 + P1;
ffa00cce:	10 9b       	B[P2] = R0;
ffa00cd0:	f9 17       	IF !CC JUMP 0xffa00cc2 <_printf_hex_byte+0x26> (BP);
ffa00cd2:	0a 32       	P1 = R2;
ffa00cd4:	42 91       	P2 = [P0];
ffa00cd6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00cd8:	79 43       	R1 = R7.B (Z);
ffa00cda:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00cdc:	8a 5a       	P2 = P2 + P1;
ffa00cde:	10 9b       	B[P2] = R0;
ffa00ce0:	42 91       	P2 = [P0];
ffa00ce2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00ce4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00ce8:	8a 5a       	P2 = P2 + P1;
ffa00cea:	10 9b       	B[P2] = R0;
ffa00cec:	82 c6 e1 81 	R0 = R1 >> 0x4;
ffa00cf0:	10 09       	CC = R0 <= R2;
ffa00cf2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00cf4:	22 14       	IF !CC JUMP 0xffa00d38 <_printf_hex_byte+0x9c> (BP);
ffa00cf6:	42 91       	P2 = [P0];
ffa00cf8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00cfa:	91 5a       	P2 = P1 + P2;
ffa00cfc:	10 9b       	B[P2] = R0;
ffa00cfe:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00d00:	01 54       	R0 = R1 & R0;
ffa00d02:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00d04:	08 09       	CC = R0 <= R1;
ffa00d06:	22 1c       	IF CC JUMP 0xffa00d4a <_printf_hex_byte+0xae> (BP);
ffa00d08:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00d0a:	42 91       	P2 = [P0];
ffa00d0c:	91 5a       	P2 = P1 + P2;
ffa00d0e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00d12:	42 91       	P2 = [P0];
ffa00d14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d16:	91 5a       	P2 = P1 + P2;
ffa00d18:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa00d1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00d20:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00d24:	50 95       	R0 = W[P2] (X);
ffa00d26:	c0 42       	R0 = R0.L (Z);
ffa00d28:	08 0c       	CC = R0 == 0x1;
ffa00d2a:	41 91       	P1 = [P0];
ffa00d2c:	11 18       	IF CC JUMP 0xffa00d4e <_printf_hex_byte+0xb2>;
ffa00d2e:	01 e8 00 00 	UNLINK;
ffa00d32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d34:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00d36:	10 00       	RTS;
ffa00d38:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00d3a:	42 91       	P2 = [P0];
ffa00d3c:	91 5a       	P2 = P1 + P2;
ffa00d3e:	10 9b       	B[P2] = R0;
ffa00d40:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00d42:	01 54       	R0 = R1 & R0;
ffa00d44:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00d46:	08 09       	CC = R0 <= R1;
ffa00d48:	e0 17       	IF !CC JUMP 0xffa00d08 <_printf_hex_byte+0x6c> (BP);
ffa00d4a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00d4c:	df 2f       	JUMP.S 0xffa00d0a <_printf_hex_byte+0x6e>;
ffa00d4e:	48 99       	R0 = B[P1] (X);
ffa00d50:	01 43       	R1 = R0.B (X);
ffa00d52:	01 0c       	CC = R1 == 0x0;
ffa00d54:	ed 1b       	IF CC JUMP 0xffa00d2e <_printf_hex_byte+0x92>;
ffa00d56:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00808(-4192248) */
ffa00d5a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d5c:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0xffc00400(-4193280) */
ffa00d60:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00d64:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa00d66:	b2 e0 1b 00 	LSETUP(0xffa00d6a <_printf_hex_byte+0xce>, 0xffa00d9c <_printf_hex_byte+0x100>) LC1 = P0;
ffa00d6a:	11 08       	CC = R1 == R2;
ffa00d6c:	1a 18       	IF CC JUMP 0xffa00da0 <_printf_hex_byte+0x104>;
ffa00d6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00d72:	00 43       	R0 = R0.B (X);
ffa00d74:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00d78:	10 97       	W[P2] = R0;
ffa00d7a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00d7c:	50 95       	R0 = W[P2] (X);
ffa00d7e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00d80:	0a 10       	IF !CC JUMP 0xffa00d94 <_printf_hex_byte+0xf8>;
ffa00d82:	00 00       	NOP;
ffa00d84:	00 00       	NOP;
ffa00d86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00d8a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00d8e:	50 95       	R0 = W[P2] (X);
ffa00d90:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00d92:	f9 1f       	IF CC JUMP 0xffa00d84 <_printf_hex_byte+0xe8> (BP);
ffa00d94:	48 99       	R0 = B[P1] (X);
ffa00d96:	01 43       	R1 = R0.B (X);
ffa00d98:	01 0c       	CC = R1 == 0x0;
ffa00d9a:	ca 1b       	IF CC JUMP 0xffa00d2e <_printf_hex_byte+0x92>;
ffa00d9c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d9e:	c8 2f       	JUMP.S 0xffa00d2e <_printf_hex_byte+0x92>;
ffa00da0:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00da2:	28 97       	W[P5] = R0;
ffa00da4:	02 20       	JUMP.S 0xffa00da8 <_printf_hex_byte+0x10c>;
ffa00da6:	00 00       	NOP;
ffa00da8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00dac:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00db0:	50 95       	R0 = W[P2] (X);
ffa00db2:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00db4:	f9 1f       	IF CC JUMP 0xffa00da6 <_printf_hex_byte+0x10a> (BP);
ffa00db6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00dba:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00dbc:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00dc0:	10 97       	W[P2] = R0;
ffa00dc2:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00dc4:	50 95       	R0 = W[P2] (X);
ffa00dc6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00dc8:	e6 13       	IF !CC JUMP 0xffa00d94 <_printf_hex_byte+0xf8>;
ffa00dca:	00 00       	NOP;
ffa00dcc:	00 00       	NOP;
ffa00dce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00dd2:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00dd6:	50 95       	R0 = W[P2] (X);
ffa00dd8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00dda:	f9 1f       	IF CC JUMP 0xffa00dcc <_printf_hex_byte+0x130> (BP);
ffa00ddc:	dc 2f       	JUMP.S 0xffa00d94 <_printf_hex_byte+0xf8>;
ffa00dde:	01 e8 00 00 	UNLINK;
ffa00de2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00de4:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00de6:	10 00       	RTS;
ffa00de8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00dec:	08 e1 d8 0c 	P0.L = 0xcd8;		/* (3288)	P0=0xff900cd8 <_printf_out> */
ffa00df0:	71 2f       	JUMP.S 0xffa00cd2 <_printf_hex_byte+0x36>;
	...

ffa00df4 <_printf_hex>:
ffa00df4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00df6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00dfa:	28 32       	P5 = R0;
ffa00dfc:	39 30       	R7 = R1;
ffa00dfe:	00 e3 ef 02 	CALL 0xffa013dc <_strlen_>;
ffa00e02:	10 30       	R2 = R0;
ffa00e04:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00e08:	02 09       	CC = R2 <= R0;
ffa00e0a:	e7 10       	IF !CC JUMP 0xffa00fd8 <_printf_hex+0x1e4>;
ffa00e0c:	02 0d       	CC = R2 <= 0x0;
ffa00e0e:	ea 18       	IF CC JUMP 0xffa00fe2 <_printf_hex+0x1ee>;
ffa00e10:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900cd8 <_printf_out> */
ffa00e14:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e16:	08 e1 d8 0c 	P0.L = 0xcd8;		/* (3288)	P0=0xff900cd8 <_printf_out> */
ffa00e1a:	09 32       	P1 = R1;
ffa00e1c:	42 91       	P2 = [P0];
ffa00e1e:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e20:	68 98       	R0 = B[P5++] (X);
ffa00e22:	0a 08       	CC = R2 == R1;
ffa00e24:	8a 5a       	P2 = P2 + P1;
ffa00e26:	10 9b       	B[P2] = R0;
ffa00e28:	f9 17       	IF !CC JUMP 0xffa00e1a <_printf_hex+0x26> (BP);
ffa00e2a:	0a 32       	P1 = R2;
ffa00e2c:	42 91       	P2 = [P0];
ffa00e2e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e30:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00e32:	8a 5a       	P2 = P2 + P1;
ffa00e34:	10 9b       	B[P2] = R0;
ffa00e36:	42 91       	P2 = [P0];
ffa00e38:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e3a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00e3e:	8a 5a       	P2 = P2 + P1;
ffa00e40:	10 9b       	B[P2] = R0;
ffa00e42:	82 c6 27 81 	R0 = R7 >> 0x1c;
ffa00e46:	08 09       	CC = R0 <= R1;
ffa00e48:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e4a:	6f 14       	IF !CC JUMP 0xffa00f28 <_printf_hex+0x134> (BP);
ffa00e4c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00e4e:	42 91       	P2 = [P0];
ffa00e50:	82 c6 47 03 	R1 = R7 >>> 0x18;
ffa00e54:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00e56:	91 5a       	P2 = P1 + P2;
ffa00e58:	10 9b       	B[P2] = R0;
ffa00e5a:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00e5c:	01 54       	R0 = R1 & R0;
ffa00e5e:	10 09       	CC = R0 <= R2;
ffa00e60:	ba 14       	IF !CC JUMP 0xffa00fd4 <_printf_hex+0x1e0> (BP);
ffa00e62:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00e64:	42 91       	P2 = [P0];
ffa00e66:	82 c6 67 03 	R1 = R7 >>> 0x14;
ffa00e6a:	91 5a       	P2 = P1 + P2;
ffa00e6c:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00e70:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00e72:	01 54       	R0 = R1 & R0;
ffa00e74:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00e76:	08 09       	CC = R0 <= R1;
ffa00e78:	ac 14       	IF !CC JUMP 0xffa00fd0 <_printf_hex+0x1dc> (BP);
ffa00e7a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00e7c:	42 91       	P2 = [P0];
ffa00e7e:	82 c6 87 03 	R1 = R7 >>> 0x10;
ffa00e82:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00e84:	91 5a       	P2 = P1 + P2;
ffa00e86:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa00e8a:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00e8c:	01 54       	R0 = R1 & R0;
ffa00e8e:	10 09       	CC = R0 <= R2;
ffa00e90:	9e 14       	IF !CC JUMP 0xffa00fcc <_printf_hex+0x1d8> (BP);
ffa00e92:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00e94:	42 91       	P2 = [P0];
ffa00e96:	82 c6 a7 03 	R1 = R7 >>> 0xc;
ffa00e9a:	91 5a       	P2 = P1 + P2;
ffa00e9c:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa00ea0:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00ea2:	01 54       	R0 = R1 & R0;
ffa00ea4:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00ea6:	08 09       	CC = R0 <= R1;
ffa00ea8:	90 14       	IF !CC JUMP 0xffa00fc8 <_printf_hex+0x1d4> (BP);
ffa00eaa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00eac:	42 91       	P2 = [P0];
ffa00eae:	82 c6 c7 03 	R1 = R7 >>> 0x8;
ffa00eb2:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00eb4:	91 5a       	P2 = P1 + P2;
ffa00eb6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa00eba:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00ebc:	01 54       	R0 = R1 & R0;
ffa00ebe:	10 09       	CC = R0 <= R2;
ffa00ec0:	82 14       	IF !CC JUMP 0xffa00fc4 <_printf_hex+0x1d0> (BP);
ffa00ec2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ec4:	42 91       	P2 = [P0];
ffa00ec6:	82 c6 e7 03 	R1 = R7 >>> 0x4;
ffa00eca:	91 5a       	P2 = P1 + P2;
ffa00ecc:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa00ed0:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00ed2:	01 54       	R0 = R1 & R0;
ffa00ed4:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00ed6:	08 09       	CC = R0 <= R1;
ffa00ed8:	74 14       	IF !CC JUMP 0xffa00fc0 <_printf_hex+0x1cc> (BP);
ffa00eda:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00edc:	42 91       	P2 = [P0];
ffa00ede:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00ee0:	91 5a       	P2 = P1 + P2;
ffa00ee2:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa00ee6:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00ee8:	07 54       	R0 = R7 & R0;
ffa00eea:	10 09       	CC = R0 <= R2;
ffa00eec:	68 1c       	IF CC JUMP 0xffa00fbc <_printf_hex+0x1c8> (BP);
ffa00eee:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00ef0:	42 91       	P2 = [P0];
ffa00ef2:	91 5a       	P2 = P1 + P2;
ffa00ef4:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa00ef8:	42 91       	P2 = [P0];
ffa00efa:	41 6c       	P1 += 0x8;		/* (  8) */
ffa00efc:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00efe:	8a 5a       	P2 = P2 + P1;
ffa00f00:	10 9b       	B[P2] = R0;
ffa00f02:	42 91       	P2 = [P0];
ffa00f04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f06:	8a 5a       	P2 = P2 + P1;
ffa00f08:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00f0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00f10:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00f14:	50 95       	R0 = W[P2] (X);
ffa00f16:	c0 42       	R0 = R0.L (Z);
ffa00f18:	08 0c       	CC = R0 == 0x1;
ffa00f1a:	41 91       	P1 = [P0];
ffa00f1c:	08 18       	IF CC JUMP 0xffa00f2c <_printf_hex+0x138>;
ffa00f1e:	01 e8 00 00 	UNLINK;
ffa00f22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f24:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00f26:	10 00       	RTS;
ffa00f28:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00f2a:	92 2f       	JUMP.S 0xffa00e4e <_printf_hex+0x5a>;
ffa00f2c:	48 99       	R0 = B[P1] (X);
ffa00f2e:	01 43       	R1 = R0.B (X);
ffa00f30:	01 0c       	CC = R1 == 0x0;
ffa00f32:	f6 1b       	IF CC JUMP 0xffa00f1e <_printf_hex+0x12a>;
ffa00f34:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00400(-4193280) */
ffa00f38:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00f3a:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0xffc00400(-4193280) */
ffa00f3e:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00f42:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa00f44:	b2 e0 1b 00 	LSETUP(0xffa00f48 <_printf_hex+0x154>, 0xffa00f7a <_printf_hex+0x186>) LC1 = P0;
ffa00f48:	11 08       	CC = R1 == R2;
ffa00f4a:	1a 18       	IF CC JUMP 0xffa00f7e <_printf_hex+0x18a>;
ffa00f4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00f50:	00 43       	R0 = R0.B (X);
ffa00f52:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00f56:	10 97       	W[P2] = R0;
ffa00f58:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00f5a:	50 95       	R0 = W[P2] (X);
ffa00f5c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00f5e:	0a 10       	IF !CC JUMP 0xffa00f72 <_printf_hex+0x17e>;
ffa00f60:	00 00       	NOP;
ffa00f62:	00 00       	NOP;
ffa00f64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00f68:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00f6c:	50 95       	R0 = W[P2] (X);
ffa00f6e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00f70:	f9 1f       	IF CC JUMP 0xffa00f62 <_printf_hex+0x16e> (BP);
ffa00f72:	48 99       	R0 = B[P1] (X);
ffa00f74:	01 43       	R1 = R0.B (X);
ffa00f76:	01 0c       	CC = R1 == 0x0;
ffa00f78:	d3 1b       	IF CC JUMP 0xffa00f1e <_printf_hex+0x12a>;
ffa00f7a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00f7c:	d1 2f       	JUMP.S 0xffa00f1e <_printf_hex+0x12a>;
ffa00f7e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00f80:	28 97       	W[P5] = R0;
ffa00f82:	02 20       	JUMP.S 0xffa00f86 <_printf_hex+0x192>;
ffa00f84:	00 00       	NOP;
ffa00f86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00f8a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00f8e:	50 95       	R0 = W[P2] (X);
ffa00f90:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00f92:	f9 1f       	IF CC JUMP 0xffa00f84 <_printf_hex+0x190> (BP);
ffa00f94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00f98:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00f9a:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00f9e:	10 97       	W[P2] = R0;
ffa00fa0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00fa2:	50 95       	R0 = W[P2] (X);
ffa00fa4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00fa6:	e6 13       	IF !CC JUMP 0xffa00f72 <_printf_hex+0x17e>;
ffa00fa8:	00 00       	NOP;
ffa00faa:	00 00       	NOP;
ffa00fac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00fb0:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00fb4:	50 95       	R0 = W[P2] (X);
ffa00fb6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00fb8:	f9 1f       	IF CC JUMP 0xffa00faa <_printf_hex+0x1b6> (BP);
ffa00fba:	dc 2f       	JUMP.S 0xffa00f72 <_printf_hex+0x17e>;
ffa00fbc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00fbe:	99 2f       	JUMP.S 0xffa00ef0 <_printf_hex+0xfc>;
ffa00fc0:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fc2:	8d 2f       	JUMP.S 0xffa00edc <_printf_hex+0xe8>;
ffa00fc4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fc6:	7f 2f       	JUMP.S 0xffa00ec4 <_printf_hex+0xd0>;
ffa00fc8:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fca:	71 2f       	JUMP.S 0xffa00eac <_printf_hex+0xb8>;
ffa00fcc:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fce:	63 2f       	JUMP.S 0xffa00e94 <_printf_hex+0xa0>;
ffa00fd0:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fd2:	55 2f       	JUMP.S 0xffa00e7c <_printf_hex+0x88>;
ffa00fd4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00fd6:	47 2f       	JUMP.S 0xffa00e64 <_printf_hex+0x70>;
ffa00fd8:	01 e8 00 00 	UNLINK;
ffa00fdc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00fde:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fe0:	10 00       	RTS;
ffa00fe2:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00fe6:	08 e1 d8 0c 	P0.L = 0xcd8;		/* (3288)	P0=0xff900cd8 <_printf_out> */
ffa00fea:	20 2f       	JUMP.S 0xffa00e2a <_printf_hex+0x36>;

ffa00fec <_printf_int>:
ffa00fec:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00fee:	01 0c       	CC = R1 == 0x0;
ffa00ff0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ff4:	28 32       	P5 = R0;
ffa00ff6:	39 30       	R7 = R1;
ffa00ff8:	47 14       	IF !CC JUMP 0xffa01086 <_printf_int+0x9a> (BP);
ffa00ffa:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900808 */
ffa00ffe:	0b e1 d4 0c 	P3.L = 0xcd4;		/* (3284)	P3=0xff900cd4 <_printf_temp> */
ffa01002:	5a 91       	P2 = [P3];
ffa01004:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01006:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa01008:	10 9b       	B[P2] = R0;
ffa0100a:	45 30       	R0 = P5;
ffa0100c:	00 e3 e8 01 	CALL 0xffa013dc <_strlen_>;
ffa01010:	c6 50       	R3 = R6 + R0;
ffa01012:	10 30       	R2 = R0;
ffa01014:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa01018:	03 09       	CC = R3 <= R0;
ffa0101a:	9c 10       	IF !CC JUMP 0xffa01152 <_printf_int+0x166>;
ffa0101c:	02 0d       	CC = R2 <= 0x0;
ffa0101e:	c7 18       	IF CC JUMP 0xffa011ac <_printf_int+0x1c0>;
ffa01020:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900cd8 <_printf_out> */
ffa01024:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01026:	08 e1 d8 0c 	P0.L = 0xcd8;		/* (3288)	P0=0xff900cd8 <_printf_out> */
ffa0102a:	09 32       	P1 = R1;
ffa0102c:	42 91       	P2 = [P0];
ffa0102e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01030:	68 98       	R0 = B[P5++] (X);
ffa01032:	0a 08       	CC = R2 == R1;
ffa01034:	8a 5a       	P2 = P2 + P1;
ffa01036:	10 9b       	B[P2] = R0;
ffa01038:	f9 17       	IF !CC JUMP 0xffa0102a <_printf_int+0x3e> (BP);
ffa0103a:	06 0d       	CC = R6 <= 0x0;
ffa0103c:	12 18       	IF CC JUMP 0xffa01060 <_printf_int+0x74>;
ffa0103e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01040:	00 91       	R0 = [P0];
ffa01042:	04 cc 08 00 	R0 = R1 + R0 (NS) || P2 = [P3] || NOP;
ffa01046:	5a 91 00 00 
ffa0104a:	10 50       	R0 = R0 + R2;
ffa0104c:	08 32       	P1 = R0;
ffa0104e:	0e 52       	R0 = R6 - R1;
ffa01050:	28 32       	P5 = R0;
ffa01052:	09 64       	R1 += 0x1;		/* (  1) */
ffa01054:	0e 08       	CC = R6 == R1;
ffa01056:	95 5a       	P2 = P5 + P2;
ffa01058:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0105c:	08 9b       	B[P1] = R0;
ffa0105e:	f1 17       	IF !CC JUMP 0xffa01040 <_printf_int+0x54> (BP);
ffa01060:	0b 32       	P1 = R3;
ffa01062:	42 91       	P2 = [P0];
ffa01064:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01066:	91 5a       	P2 = P1 + P2;
ffa01068:	10 9b       	B[P2] = R0;
ffa0106a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0106e:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01072:	50 95       	R0 = W[P2] (X);
ffa01074:	c0 42       	R0 = R0.L (Z);
ffa01076:	08 0c       	CC = R0 == 0x1;
ffa01078:	41 91       	P1 = [P0];
ffa0107a:	24 18       	IF CC JUMP 0xffa010c2 <_printf_int+0xd6>;
ffa0107c:	01 e8 00 00 	UNLINK;
ffa01080:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01082:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01084:	10 00       	RTS;
ffa01086:	01 0d       	CC = R1 <= 0x0;
ffa01088:	6a 18       	IF CC JUMP 0xffa0115c <_printf_int+0x170>;
ffa0108a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900cd4 <_printf_temp> */
ffa0108e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01090:	0b e1 d4 0c 	P3.L = 0xcd4;		/* (3284)	P3=0xff900cd4 <_printf_temp> */
ffa01094:	05 20       	JUMP.S 0xffa0109e <_printf_int+0xb2>;
ffa01096:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0109a:	06 08       	CC = R6 == R0;
ffa0109c:	b7 1b       	IF CC JUMP 0xffa0100a <_printf_int+0x1e>;
ffa0109e:	07 30       	R0 = R7;
ffa010a0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa010a2:	00 e3 cd 05 	CALL 0xffa01c3c <_mod>;
ffa010a6:	0e 32       	P1 = R6;
ffa010a8:	5a 91       	P2 = [P3];
ffa010aa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa010ac:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa010ae:	0e 64       	R6 += 0x1;		/* (  1) */
ffa010b0:	8a 5a       	P2 = P2 + P1;
ffa010b2:	10 9b       	B[P2] = R0;
ffa010b4:	07 30       	R0 = R7;
ffa010b6:	00 e3 5d 01 	CALL 0xffa01370 <_div>;
ffa010ba:	00 0d       	CC = R0 <= 0x0;
ffa010bc:	38 30       	R7 = R0;
ffa010be:	ec 17       	IF !CC JUMP 0xffa01096 <_printf_int+0xaa> (BP);
ffa010c0:	a5 2f       	JUMP.S 0xffa0100a <_printf_int+0x1e>;
ffa010c2:	48 99       	R0 = B[P1] (X);
ffa010c4:	01 43       	R1 = R0.B (X);
ffa010c6:	01 0c       	CC = R1 == 0x0;
ffa010c8:	da 1b       	IF CC JUMP 0xffa0107c <_printf_int+0x90>;
ffa010ca:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00400(-4193280) */
ffa010ce:	09 6c       	P1 += 0x1;		/* (  1) */
ffa010d0:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0xffc00400(-4193280) */
ffa010d4:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa010d8:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa010da:	b2 e0 1b 00 	LSETUP(0xffa010de <_printf_int+0xf2>, 0xffa01110 <_printf_int+0x124>) LC1 = P0;
ffa010de:	11 08       	CC = R1 == R2;
ffa010e0:	1a 18       	IF CC JUMP 0xffa01114 <_printf_int+0x128>;
ffa010e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa010e6:	00 43       	R0 = R0.B (X);
ffa010e8:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010ec:	10 97       	W[P2] = R0;
ffa010ee:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010f0:	50 95       	R0 = W[P2] (X);
ffa010f2:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010f4:	0a 10       	IF !CC JUMP 0xffa01108 <_printf_int+0x11c>;
ffa010f6:	00 00       	NOP;
ffa010f8:	00 00       	NOP;
ffa010fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa010fe:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01102:	50 95       	R0 = W[P2] (X);
ffa01104:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01106:	f9 1f       	IF CC JUMP 0xffa010f8 <_printf_int+0x10c> (BP);
ffa01108:	48 99       	R0 = B[P1] (X);
ffa0110a:	01 43       	R1 = R0.B (X);
ffa0110c:	01 0c       	CC = R1 == 0x0;
ffa0110e:	b7 1b       	IF CC JUMP 0xffa0107c <_printf_int+0x90>;
ffa01110:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01112:	b5 2f       	JUMP.S 0xffa0107c <_printf_int+0x90>;
ffa01114:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01116:	28 97       	W[P5] = R0;
ffa01118:	02 20       	JUMP.S 0xffa0111c <_printf_int+0x130>;
ffa0111a:	00 00       	NOP;
ffa0111c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01120:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01124:	50 95       	R0 = W[P2] (X);
ffa01126:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01128:	f9 1f       	IF CC JUMP 0xffa0111a <_printf_int+0x12e> (BP);
ffa0112a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0112e:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa01130:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01134:	10 97       	W[P2] = R0;
ffa01136:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01138:	50 95       	R0 = W[P2] (X);
ffa0113a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0113c:	e6 13       	IF !CC JUMP 0xffa01108 <_printf_int+0x11c>;
ffa0113e:	00 00       	NOP;
ffa01140:	00 00       	NOP;
ffa01142:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01146:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0114a:	50 95       	R0 = W[P2] (X);
ffa0114c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0114e:	f9 1f       	IF CC JUMP 0xffa01140 <_printf_int+0x154> (BP);
ffa01150:	dc 2f       	JUMP.S 0xffa01108 <_printf_int+0x11c>;
ffa01152:	01 e8 00 00 	UNLINK;
ffa01156:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01158:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0115a:	10 00       	RTS;
ffa0115c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0115e:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01160:	f8 4f       	R0 <<= 0x1f;
ffa01162:	f8 53       	R7 = R0 - R7;
ffa01164:	07 0d       	CC = R7 <= 0x0;
ffa01166:	2c 18       	IF CC JUMP 0xffa011be <_printf_int+0x1d2>;
ffa01168:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900cd4 <_printf_temp> */
ffa0116c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0116e:	0b e1 d4 0c 	P3.L = 0xcd4;		/* (3284)	P3=0xff900cd4 <_printf_temp> */
ffa01172:	05 20       	JUMP.S 0xffa0117c <_printf_int+0x190>;
ffa01174:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01178:	4c 08       	CC = P4 == P1;
ffa0117a:	1e 18       	IF CC JUMP 0xffa011b6 <_printf_int+0x1ca>;
ffa0117c:	07 30       	R0 = R7;
ffa0117e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01180:	00 e3 5e 05 	CALL 0xffa01c3c <_mod>;
ffa01184:	5a 91       	P2 = [P3];
ffa01186:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01188:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0118a:	a2 5a       	P2 = P2 + P4;
ffa0118c:	10 9b       	B[P2] = R0;
ffa0118e:	07 30       	R0 = R7;
ffa01190:	00 e3 f0 00 	CALL 0xffa01370 <_div>;
ffa01194:	00 0d       	CC = R0 <= 0x0;
ffa01196:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01198:	38 30       	R7 = R0;
ffa0119a:	ed 17       	IF !CC JUMP 0xffa01174 <_printf_int+0x188> (BP);
ffa0119c:	74 30       	R6 = P4;
ffa0119e:	4c 32       	P1 = P4;
ffa011a0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa011a2:	5a 91       	P2 = [P3];
ffa011a4:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa011a6:	8a 5a       	P2 = P2 + P1;
ffa011a8:	10 9b       	B[P2] = R0;
ffa011aa:	30 2f       	JUMP.S 0xffa0100a <_printf_int+0x1e>;
ffa011ac:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa011b0:	08 e1 d8 0c 	P0.L = 0xcd8;		/* (3288)	P0=0xff900cd8 <_printf_out> */
ffa011b4:	43 2f       	JUMP.S 0xffa0103a <_printf_int+0x4e>;
ffa011b6:	4c 32       	P1 = P4;
ffa011b8:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa011bc:	f3 2f       	JUMP.S 0xffa011a2 <_printf_int+0x1b6>;
ffa011be:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900cd4 <_printf_temp> */
ffa011c2:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa011c4:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa011c6:	0b e1 d4 0c 	P3.L = 0xcd4;		/* (3284)	P3=0xff900cd4 <_printf_temp> */
ffa011ca:	ec 2f       	JUMP.S 0xffa011a2 <_printf_int+0x1b6>;

ffa011cc <_printf_str>:
ffa011cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011d4:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa011d8:	08 32       	P1 = R0;
ffa011da:	50 95       	R0 = W[P2] (X);
ffa011dc:	c0 42       	R0 = R0.L (Z);
ffa011de:	08 0c       	CC = R0 == 0x1;
ffa011e0:	06 18       	IF CC JUMP 0xffa011ec <_printf_str+0x20>;
ffa011e2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa011e4:	02 30       	R0 = R2;
ffa011e6:	01 e8 00 00 	UNLINK;
ffa011ea:	10 00       	RTS;
ffa011ec:	48 99       	R0 = B[P1] (X);
ffa011ee:	01 43       	R1 = R0.B (X);
ffa011f0:	01 0c       	CC = R1 == 0x0;
ffa011f2:	f8 1b       	IF CC JUMP 0xffa011e2 <_printf_str+0x16>;
ffa011f4:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00400(-4193280) */
ffa011f8:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011fa:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa011fc:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa01200:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa01204:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa01206:	b2 e0 1c 00 	LSETUP(0xffa0120a <_printf_str+0x3e>, 0xffa0123e <_printf_str+0x72>) LC1 = P0;
ffa0120a:	19 08       	CC = R1 == R3;
ffa0120c:	1b 18       	IF CC JUMP 0xffa01242 <_printf_str+0x76>;
ffa0120e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa01212:	00 43       	R0 = R0.B (X);
ffa01214:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01218:	10 97       	W[P2] = R0;
ffa0121a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0121c:	50 95       	R0 = W[P2] (X);
ffa0121e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01220:	0a 10       	IF !CC JUMP 0xffa01234 <_printf_str+0x68>;
ffa01222:	00 00       	NOP;
ffa01224:	00 00       	NOP;
ffa01226:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0122a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0122e:	50 95       	R0 = W[P2] (X);
ffa01230:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01232:	f9 1f       	IF CC JUMP 0xffa01224 <_printf_str+0x58> (BP);
ffa01234:	48 99       	R0 = B[P1] (X);
ffa01236:	01 43       	R1 = R0.B (X);
ffa01238:	01 0c       	CC = R1 == 0x0;
ffa0123a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0123c:	d4 1b       	IF CC JUMP 0xffa011e4 <_printf_str+0x18>;
ffa0123e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01240:	d2 2f       	JUMP.S 0xffa011e4 <_printf_str+0x18>;
ffa01242:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01244:	20 9f       	W[I0] = R0.L;
ffa01246:	02 20       	JUMP.S 0xffa0124a <_printf_str+0x7e>;
ffa01248:	00 00       	NOP;
ffa0124a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0124e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01252:	50 95       	R0 = W[P2] (X);
ffa01254:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01256:	f9 1f       	IF CC JUMP 0xffa01248 <_printf_str+0x7c> (BP);
ffa01258:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0125c:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0125e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01262:	10 97       	W[P2] = R0;
ffa01264:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01266:	50 95       	R0 = W[P2] (X);
ffa01268:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0126a:	e5 13       	IF !CC JUMP 0xffa01234 <_printf_str+0x68>;
ffa0126c:	00 00       	NOP;
ffa0126e:	00 00       	NOP;
ffa01270:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01274:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01278:	50 95       	R0 = W[P2] (X);
ffa0127a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0127c:	f9 1f       	IF CC JUMP 0xffa0126e <_printf_str+0xa2> (BP);
ffa0127e:	db 2f       	JUMP.S 0xffa01234 <_printf_str+0x68>;

ffa01280 <_printf_ip>:
ffa01280:	78 05       	[--SP] = (R7:7);
ffa01282:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01286:	39 30       	R7 = R1;
ffa01288:	49 43       	R1 = R1.B (Z);
ffa0128a:	ff e3 b1 fe 	CALL 0xffa00fec <_printf_int>;
ffa0128e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa01292:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01296:	49 43       	R1 = R1.B (Z);
ffa01298:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa0129c:	ff e3 a8 fe 	CALL 0xffa00fec <_printf_int>;
ffa012a0:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa012a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa012a8:	49 43       	R1 = R1.B (Z);
ffa012aa:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa012ae:	ff e3 9f fe 	CALL 0xffa00fec <_printf_int>;
ffa012b2:	c7 4e       	R7 >>= 0x18;
ffa012b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa012b8:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa012bc:	0f 30       	R1 = R7;
ffa012be:	ff e3 97 fe 	CALL 0xffa00fec <_printf_int>;
ffa012c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa012c6:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa012ca:	50 95       	R0 = W[P2] (X);
ffa012cc:	c0 42       	R0 = R0.L (Z);
ffa012ce:	08 0c       	CC = R0 == 0x1;
ffa012d0:	06 18       	IF CC JUMP 0xffa012dc <_printf_ip+0x5c>;
ffa012d2:	01 e8 00 00 	UNLINK;
ffa012d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012d8:	38 05       	(R7:7) = [SP++];
ffa012da:	10 00       	RTS;
ffa012dc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa012e0:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00400(-4193280) */
ffa012e4:	08 e1 b0 05 	P0.L = 0x5b0;		/* (1456)	P0=0xff9005b0 */
ffa012e8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa012ea:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa012ec:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa012f0:	29 e1 00 04 	P1 = 0x400 (X);		/*		P1=0x400(1024) */
ffa012f4:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa012f6:	b2 e0 1c 10 	LSETUP(0xffa012fa <_printf_ip+0x7a>, 0xffa0132e <_printf_ip+0xae>) LC1 = P1;
ffa012fa:	11 08       	CC = R1 == R2;
ffa012fc:	1b 18       	IF CC JUMP 0xffa01332 <_printf_ip+0xb2>;
ffa012fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa01302:	00 43       	R0 = R0.B (X);
ffa01304:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01308:	10 97       	W[P2] = R0;
ffa0130a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0130c:	50 95       	R0 = W[P2] (X);
ffa0130e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01310:	0a 10       	IF !CC JUMP 0xffa01324 <_printf_ip+0xa4>;
ffa01312:	00 00       	NOP;
ffa01314:	00 00       	NOP;
ffa01316:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0131a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0131e:	50 95       	R0 = W[P2] (X);
ffa01320:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01322:	f9 1f       	IF CC JUMP 0xffa01314 <_printf_ip+0x94> (BP);
ffa01324:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01326:	40 99       	R0 = B[P0] (X);
ffa01328:	01 43       	R1 = R0.B (X);
ffa0132a:	01 0c       	CC = R1 == 0x0;
ffa0132c:	d3 1b       	IF CC JUMP 0xffa012d2 <_printf_ip+0x52>;
ffa0132e:	00 00       	NOP;
ffa01330:	d1 2f       	JUMP.S 0xffa012d2 <_printf_ip+0x52>;
ffa01332:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01334:	20 9f       	W[I0] = R0.L;
ffa01336:	02 20       	JUMP.S 0xffa0133a <_printf_ip+0xba>;
ffa01338:	00 00       	NOP;
ffa0133a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0133e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01342:	50 95       	R0 = W[P2] (X);
ffa01344:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01346:	f9 1f       	IF CC JUMP 0xffa01338 <_printf_ip+0xb8> (BP);
ffa01348:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0134c:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0134e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01352:	10 97       	W[P2] = R0;
ffa01354:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01356:	50 95       	R0 = W[P2] (X);
ffa01358:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0135a:	e5 13       	IF !CC JUMP 0xffa01324 <_printf_ip+0xa4>;
ffa0135c:	00 00       	NOP;
ffa0135e:	00 00       	NOP;
ffa01360:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01364:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01368:	50 95       	R0 = W[P2] (X);
ffa0136a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0136c:	f9 1f       	IF CC JUMP 0xffa0135e <_printf_ip+0xde> (BP);
ffa0136e:	db 2f       	JUMP.S 0xffa01324 <_printf_ip+0xa4>;

ffa01370 <_div>:
ffa01370:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01374:	08 4f       	R0 <<= 0x1;
ffa01376:	48 42       	DIVS (R0, R1);
ffa01378:	08 42       	DIVQ (R0, R1);
ffa0137a:	08 42       	DIVQ (R0, R1);
ffa0137c:	08 42       	DIVQ (R0, R1);
ffa0137e:	08 42       	DIVQ (R0, R1);
ffa01380:	08 42       	DIVQ (R0, R1);
ffa01382:	08 42       	DIVQ (R0, R1);
ffa01384:	08 42       	DIVQ (R0, R1);
ffa01386:	08 42       	DIVQ (R0, R1);
ffa01388:	08 42       	DIVQ (R0, R1);
ffa0138a:	08 42       	DIVQ (R0, R1);
ffa0138c:	08 42       	DIVQ (R0, R1);
ffa0138e:	08 42       	DIVQ (R0, R1);
ffa01390:	08 42       	DIVQ (R0, R1);
ffa01392:	08 42       	DIVQ (R0, R1);
ffa01394:	08 42       	DIVQ (R0, R1);
ffa01396:	80 42       	R0 = R0.L (X);
ffa01398:	01 e8 00 00 	UNLINK;
ffa0139c:	10 00       	RTS;
	...

ffa013a0 <_memcpy_>:
ffa013a0:	02 0d       	CC = R2 <= 0x0;
ffa013a2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013a6:	08 32       	P1 = R0;
ffa013a8:	11 32       	P2 = R1;
ffa013aa:	08 18       	IF CC JUMP 0xffa013ba <_memcpy_+0x1a>;
ffa013ac:	00 00       	NOP;
ffa013ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013b0:	09 64       	R1 += 0x1;		/* (  1) */
ffa013b2:	48 98       	R0 = B[P1++] (X);
ffa013b4:	0a 08       	CC = R2 == R1;
ffa013b6:	10 9a       	B[P2++] = R0;
ffa013b8:	fc 17       	IF !CC JUMP 0xffa013b0 <_memcpy_+0x10> (BP);
ffa013ba:	01 e8 00 00 	UNLINK;
ffa013be:	10 00       	RTS;

ffa013c0 <_memset_>:
ffa013c0:	02 0d       	CC = R2 <= 0x0;
ffa013c2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013c6:	10 32       	P2 = R0;
ffa013c8:	06 18       	IF CC JUMP 0xffa013d4 <_memset_+0x14>;
ffa013ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013cc:	08 64       	R0 += 0x1;		/* (  1) */
ffa013ce:	02 08       	CC = R2 == R0;
ffa013d0:	11 9a       	B[P2++] = R1;
ffa013d2:	fd 17       	IF !CC JUMP 0xffa013cc <_memset_+0xc> (BP);
ffa013d4:	01 e8 00 00 	UNLINK;
ffa013d8:	10 00       	RTS;
	...

ffa013dc <_strlen_>:
ffa013dc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013e0:	10 32       	P2 = R0;
ffa013e2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013e4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa013e8:	b2 e0 06 10 	LSETUP(0xffa013ec <_strlen_+0x10>, 0xffa013f4 <_strlen_+0x18>) LC1 = P1;
ffa013ec:	50 99       	R0 = B[P2] (X);
ffa013ee:	00 0c       	CC = R0 == 0x0;
ffa013f0:	04 18       	IF CC JUMP 0xffa013f8 <_strlen_+0x1c>;
ffa013f2:	09 64       	R1 += 0x1;		/* (  1) */
ffa013f4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa013f6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013f8:	01 30       	R0 = R1;
ffa013fa:	01 e8 00 00 	UNLINK;
ffa013fe:	10 00       	RTS;

ffa01400 <_strcpy_>:
ffa01400:	12 32       	P2 = R2;
ffa01402:	c5 04       	[--SP] = (P5:5);
ffa01404:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01408:	29 32       	P5 = R1;
ffa0140a:	00 32       	P0 = R0;
ffa0140c:	51 99       	R1 = B[P2] (X);
ffa0140e:	08 43       	R0 = R1.B (X);
ffa01410:	00 0c       	CC = R0 == 0x0;
ffa01412:	17 18       	IF CC JUMP 0xffa01440 <_strcpy_+0x40>;
ffa01414:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01416:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01418:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa0141c:	b2 e0 09 10 	LSETUP(0xffa01420 <_strcpy_+0x20>, 0xffa0142e <_strcpy_+0x2e>) LC1 = P1;
ffa01420:	01 9a       	B[P0++] = R1;
ffa01422:	51 99       	R1 = B[P2] (X);
ffa01424:	08 43       	R0 = R1.B (X);
ffa01426:	00 0c       	CC = R0 == 0x0;
ffa01428:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0142a:	03 18       	IF CC JUMP 0xffa01430 <_strcpy_+0x30>;
ffa0142c:	00 00       	NOP;
ffa0142e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01430:	01 e8 00 00 	UNLINK;
ffa01434:	28 91       	R0 = [P5];
ffa01436:	10 50       	R0 = R0 + R2;
ffa01438:	28 93       	[P5] = R0;
ffa0143a:	40 30       	R0 = P0;
ffa0143c:	85 04       	(P5:5) = [SP++];
ffa0143e:	10 00       	RTS;
ffa01440:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01442:	f7 2f       	JUMP.S 0xffa01430 <_strcpy_+0x30>;

ffa01444 <_strcmp>:
ffa01444:	10 32       	P2 = R0;
ffa01446:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0144a:	01 32       	P0 = R1;
ffa0144c:	51 99       	R1 = B[P2] (X);
ffa0144e:	01 0c       	CC = R1 == 0x0;
ffa01450:	1b 18       	IF CC JUMP 0xffa01486 <_strcmp+0x42>;
ffa01452:	00 00       	NOP;
ffa01454:	00 00       	NOP;
ffa01456:	00 00       	NOP;
ffa01458:	40 99       	R0 = B[P0] (X);
ffa0145a:	00 0c       	CC = R0 == 0x0;
ffa0145c:	15 18       	IF CC JUMP 0xffa01486 <_strcmp+0x42>;
ffa0145e:	01 08       	CC = R1 == R0;
ffa01460:	1c 10       	IF !CC JUMP 0xffa01498 <_strcmp+0x54>;
ffa01462:	4a 32       	P1 = P2;
ffa01464:	50 32       	P2 = P0;
ffa01466:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01468:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0146a:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa0146e:	49 99       	R1 = B[P1] (X);
ffa01470:	01 0c       	CC = R1 == 0x0;
ffa01472:	0a 18       	IF CC JUMP 0xffa01486 <_strcmp+0x42>;
ffa01474:	00 00       	NOP;
ffa01476:	00 00       	NOP;
ffa01478:	00 00       	NOP;
ffa0147a:	50 99       	R0 = B[P2] (X);
ffa0147c:	00 0c       	CC = R0 == 0x0;
ffa0147e:	04 18       	IF CC JUMP 0xffa01486 <_strcmp+0x42>;
ffa01480:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa01482:	40 0c       	CC = P0 == 0x0;
ffa01484:	05 10       	IF !CC JUMP 0xffa0148e <_strcmp+0x4a>;
ffa01486:	01 e8 00 00 	UNLINK;
ffa0148a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0148c:	10 00       	RTS;
ffa0148e:	01 08       	CC = R1 == R0;
ffa01490:	04 10       	IF !CC JUMP 0xffa01498 <_strcmp+0x54>;
ffa01492:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01494:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01496:	ec 2f       	JUMP.S 0xffa0146e <_strcmp+0x2a>;
ffa01498:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0149a:	01 e8 00 00 	UNLINK;
ffa0149e:	10 00       	RTS;

ffa014a0 <_substr>:
ffa014a0:	f4 05       	[--SP] = (R7:6, P5:4);
ffa014a2:	20 32       	P4 = R0;
ffa014a4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014a8:	11 32       	P2 = R1;
ffa014aa:	32 30       	R6 = R2;
ffa014ac:	61 99       	R1 = B[P4] (X);
ffa014ae:	01 0c       	CC = R1 == 0x0;
ffa014b0:	14 18       	IF CC JUMP 0xffa014d8 <_substr+0x38>;
ffa014b2:	00 00       	NOP;
ffa014b4:	00 00       	NOP;
ffa014b6:	00 00       	NOP;
ffa014b8:	50 99       	R0 = B[P2] (X);
ffa014ba:	00 0c       	CC = R0 == 0x0;
ffa014bc:	0e 18       	IF CC JUMP 0xffa014d8 <_substr+0x38>;
ffa014be:	02 0d       	CC = R2 <= 0x0;
ffa014c0:	0c 18       	IF CC JUMP 0xffa014d8 <_substr+0x38>;
ffa014c2:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa014c4:	01 08       	CC = R1 == R0;
ffa014c6:	0f 18       	IF CC JUMP 0xffa014e4 <_substr+0x44>;
ffa014c8:	00 00       	NOP;
ffa014ca:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014cc:	0b 64       	R3 += 0x1;		/* (  1) */
ffa014ce:	50 99       	R0 = B[P2] (X);
ffa014d0:	00 0c       	CC = R0 == 0x0;
ffa014d2:	03 18       	IF CC JUMP 0xffa014d8 <_substr+0x38>;
ffa014d4:	1e 09       	CC = R6 <= R3;
ffa014d6:	f7 17       	IF !CC JUMP 0xffa014c4 <_substr+0x24> (BP);
ffa014d8:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa014da:	01 e8 00 00 	UNLINK;
ffa014de:	40 30       	R0 = P0;
ffa014e0:	b4 05       	(R7:6, P5:4) = [SP++];
ffa014e2:	10 00       	RTS;
ffa014e4:	52 30       	R2 = P2;
ffa014e6:	3b 30       	R7 = R3;
ffa014e8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa014ea:	0f 64       	R7 += 0x1;		/* (  1) */
ffa014ec:	12 32       	P2 = R2;
ffa014ee:	07 32       	P0 = R7;
ffa014f0:	4c 32       	P1 = P4;
ffa014f2:	6c 32       	P5 = P4;
ffa014f4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa014f6:	15 6c       	P5 += 0x2;		/* (  2) */
ffa014f8:	02 20       	JUMP.S 0xffa014fc <_substr+0x5c>;
ffa014fa:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014fc:	4b 99       	R3 = B[P1] (X);
ffa014fe:	50 99       	R0 = B[P2] (X);
ffa01500:	03 08       	CC = R3 == R0;
ffa01502:	0e 10       	IF !CC JUMP 0xffa0151e <_substr+0x7e>;
ffa01504:	03 0c       	CC = R3 == 0x0;
ffa01506:	0c 18       	IF CC JUMP 0xffa0151e <_substr+0x7e>;
ffa01508:	00 00       	NOP;
ffa0150a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0150c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0150e:	68 98       	R0 = B[P5++] (X);
ffa01510:	00 0c       	CC = R0 == 0x0;
ffa01512:	f4 17       	IF !CC JUMP 0xffa014fa <_substr+0x5a> (BP);
ffa01514:	01 e8 00 00 	UNLINK;
ffa01518:	40 30       	R0 = P0;
ffa0151a:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0151c:	10 00       	RTS;
ffa0151e:	12 32       	P2 = R2;
ffa01520:	1f 30       	R3 = R7;
ffa01522:	d6 2f       	JUMP.S 0xffa014ce <_substr+0x2e>;

ffa01524 <_sprintf_int>:
ffa01524:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01526:	01 0c       	CC = R1 == 0x0;
ffa01528:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0152c:	00 34       	I0 = R0;
ffa0152e:	11 30       	R2 = R1;
ffa01530:	1a 14       	IF !CC JUMP 0xffa01564 <_sprintf_int+0x40> (BP);
ffa01532:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900400 */
ffa01536:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa0153a:	6a 91       	P2 = [P5];
ffa0153c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0153e:	10 9b       	B[P2] = R0;
ffa01540:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa01542:	88 32       	P1 = I0;
ffa01544:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01546:	0a 52       	R0 = R2 - R1;
ffa01548:	00 32       	P0 = R0;
ffa0154a:	6a 91       	P2 = [P5];
ffa0154c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0154e:	91 08       	CC = R1 < R2;
ffa01550:	82 5a       	P2 = P2 + P0;
ffa01552:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01556:	08 9a       	B[P1++] = R0;
ffa01558:	f7 1f       	IF CC JUMP 0xffa01546 <_sprintf_int+0x22> (BP);
ffa0155a:	01 e8 00 00 	UNLINK;
ffa0155e:	02 30       	R0 = R2;
ffa01560:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01562:	10 00       	RTS;
ffa01564:	01 0d       	CC = R1 <= 0x0;
ffa01566:	3d 19       	IF CC JUMP 0xffa017e0 <_sprintf_int+0x2bc>;
ffa01568:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660000(1717960704) */
ffa0156c:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01570:	80 c0 0f 18 	A1 = R1.L * R7.L (FU);
ffa01574:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01578:	11 c1 0f 86 	A1 += R1.H * R7.L (M), A0 = R1.H * R7.H (IS);
ffa0157c:	11 c1 39 98 	A1 += R7.H * R1.L (M, IS);
ffa01580:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01584:	0b c4 00 00 	R0 = (A0 += A1);
ffa01588:	10 4d       	R0 >>>= 0x2;
ffa0158a:	f9 4d       	R1 >>>= 0x1f;
ffa0158c:	c8 52       	R3 = R0 - R1;
ffa0158e:	23 32       	P4 = R3;
ffa01590:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa01594:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa01598:	69 91       	P1 = [P5];
ffa0159a:	03 0d       	CC = R3 <= 0x0;
ffa0159c:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0159e:	92 5a       	P2 = P2 << 0x1;
ffa015a0:	4a 30       	R1 = P2;
ffa015a2:	0a 52       	R0 = R2 - R1;
ffa015a4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa015a6:	08 9b       	B[P1] = R0;
ffa015a8:	cc 1b       	IF CC JUMP 0xffa01540 <_sprintf_int+0x1c>;
ffa015aa:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa015ae:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa015b2:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa015b6:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa015ba:	69 91 00 00 
ffa015be:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa015c2:	0b c4 00 00 	R0 = (A0 += A1);
ffa015c6:	10 4d       	R0 >>>= 0x2;
ffa015c8:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa015cc:	88 52       	R2 = R0 - R1;
ffa015ce:	22 32       	P4 = R2;
ffa015d0:	02 0d       	CC = R2 <= 0x0;
ffa015d2:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa015d4:	92 5a       	P2 = P2 << 0x1;
ffa015d6:	4a 30       	R1 = P2;
ffa015d8:	0b 52       	R0 = R3 - R1;
ffa015da:	80 65       	R0 += 0x30;		/* ( 48) */
ffa015dc:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa015e0:	02 14       	IF !CC JUMP 0xffa015e4 <_sprintf_int+0xc0> (BP);
ffa015e2:	49 22       	JUMP.S 0xffa01a74 <_sprintf_int+0x550>;
ffa015e4:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa015e8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa015ec:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa015f0:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa015f4:	69 91 00 00 
ffa015f8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa015fc:	0b c4 00 00 	R0 = (A0 += A1);
ffa01600:	10 4d       	R0 >>>= 0x2;
ffa01602:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01606:	c8 52       	R3 = R0 - R1;
ffa01608:	23 32       	P4 = R3;
ffa0160a:	03 0d       	CC = R3 <= 0x0;
ffa0160c:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0160e:	92 5a       	P2 = P2 << 0x1;
ffa01610:	4a 30       	R1 = P2;
ffa01612:	0a 52       	R0 = R2 - R1;
ffa01614:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01616:	88 e6 02 00 	B[P1 + 0x2] = R0;
ffa0161a:	02 14       	IF !CC JUMP 0xffa0161e <_sprintf_int+0xfa> (BP);
ffa0161c:	2e 22       	JUMP.S 0xffa01a78 <_sprintf_int+0x554>;
ffa0161e:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01622:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01626:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa0162a:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa0162e:	69 91 00 00 
ffa01632:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01636:	0b c4 00 00 	R0 = (A0 += A1);
ffa0163a:	10 4d       	R0 >>>= 0x2;
ffa0163c:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01640:	88 52       	R2 = R0 - R1;
ffa01642:	22 32       	P4 = R2;
ffa01644:	02 0d       	CC = R2 <= 0x0;
ffa01646:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01648:	92 5a       	P2 = P2 << 0x1;
ffa0164a:	4a 30       	R1 = P2;
ffa0164c:	0b 52       	R0 = R3 - R1;
ffa0164e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01650:	88 e6 03 00 	B[P1 + 0x3] = R0;
ffa01654:	02 14       	IF !CC JUMP 0xffa01658 <_sprintf_int+0x134> (BP);
ffa01656:	13 22       	JUMP.S 0xffa01a7c <_sprintf_int+0x558>;
ffa01658:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa0165c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01660:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01664:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01668:	69 91 00 00 
ffa0166c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01670:	0b c4 00 00 	R0 = (A0 += A1);
ffa01674:	10 4d       	R0 >>>= 0x2;
ffa01676:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0167a:	c8 52       	R3 = R0 - R1;
ffa0167c:	23 32       	P4 = R3;
ffa0167e:	03 0d       	CC = R3 <= 0x0;
ffa01680:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01682:	92 5a       	P2 = P2 << 0x1;
ffa01684:	4a 30       	R1 = P2;
ffa01686:	0a 52       	R0 = R2 - R1;
ffa01688:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0168a:	88 e6 04 00 	B[P1 + 0x4] = R0;
ffa0168e:	f9 19       	IF CC JUMP 0xffa01a80 <_sprintf_int+0x55c>;
ffa01690:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01694:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01698:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa0169c:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa016a0:	69 91 00 00 
ffa016a4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa016a8:	0b c4 00 00 	R0 = (A0 += A1);
ffa016ac:	10 4d       	R0 >>>= 0x2;
ffa016ae:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa016b2:	88 52       	R2 = R0 - R1;
ffa016b4:	22 32       	P4 = R2;
ffa016b6:	02 0d       	CC = R2 <= 0x0;
ffa016b8:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa016ba:	92 5a       	P2 = P2 << 0x1;
ffa016bc:	4a 30       	R1 = P2;
ffa016be:	0b 52       	R0 = R3 - R1;
ffa016c0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa016c2:	88 e6 05 00 	B[P1 + 0x5] = R0;
ffa016c6:	df 19       	IF CC JUMP 0xffa01a84 <_sprintf_int+0x560>;
ffa016c8:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa016cc:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa016d0:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa016d4:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa016d8:	69 91 00 00 
ffa016dc:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa016e0:	0b c4 00 00 	R0 = (A0 += A1);
ffa016e4:	10 4d       	R0 >>>= 0x2;
ffa016e6:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa016ea:	c8 52       	R3 = R0 - R1;
ffa016ec:	23 32       	P4 = R3;
ffa016ee:	03 0d       	CC = R3 <= 0x0;
ffa016f0:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa016f2:	92 5a       	P2 = P2 << 0x1;
ffa016f4:	4a 30       	R1 = P2;
ffa016f6:	0a 52       	R0 = R2 - R1;
ffa016f8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa016fa:	88 e6 06 00 	B[P1 + 0x6] = R0;
ffa016fe:	c5 19       	IF CC JUMP 0xffa01a88 <_sprintf_int+0x564>;
ffa01700:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01704:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01708:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa0170c:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01710:	69 91 00 00 
ffa01714:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01718:	0b c4 00 00 	R0 = (A0 += A1);
ffa0171c:	10 4d       	R0 >>>= 0x2;
ffa0171e:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01722:	88 52       	R2 = R0 - R1;
ffa01724:	22 32       	P4 = R2;
ffa01726:	02 0d       	CC = R2 <= 0x0;
ffa01728:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0172a:	92 5a       	P2 = P2 << 0x1;
ffa0172c:	4a 30       	R1 = P2;
ffa0172e:	0b 52       	R0 = R3 - R1;
ffa01730:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01732:	88 e6 07 00 	B[P1 + 0x7] = R0;
ffa01736:	ad 19       	IF CC JUMP 0xffa01a90 <_sprintf_int+0x56c>;
ffa01738:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa0173c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01740:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01744:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01748:	69 91 00 00 
ffa0174c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01750:	0b c4 00 00 	R0 = (A0 += A1);
ffa01754:	10 4d       	R0 >>>= 0x2;
ffa01756:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0175a:	c8 52       	R3 = R0 - R1;
ffa0175c:	23 32       	P4 = R3;
ffa0175e:	03 0d       	CC = R3 <= 0x0;
ffa01760:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01762:	92 5a       	P2 = P2 << 0x1;
ffa01764:	4a 30       	R1 = P2;
ffa01766:	0a 52       	R0 = R2 - R1;
ffa01768:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0176a:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa0176e:	8f 19       	IF CC JUMP 0xffa01a8c <_sprintf_int+0x568>;
ffa01770:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01774:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01778:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa0177c:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01780:	69 91 00 00 
ffa01784:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01788:	0b c4 00 00 	R0 = (A0 += A1);
ffa0178c:	10 4d       	R0 >>>= 0x2;
ffa0178e:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01792:	88 52       	R2 = R0 - R1;
ffa01794:	22 32       	P4 = R2;
ffa01796:	02 0d       	CC = R2 <= 0x0;
ffa01798:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0179a:	92 5a       	P2 = P2 << 0x1;
ffa0179c:	4a 30       	R1 = P2;
ffa0179e:	0b 52       	R0 = R3 - R1;
ffa017a0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017a2:	88 e6 09 00 	B[P1 + 0x9] = R0;
ffa017a6:	77 19       	IF CC JUMP 0xffa01a94 <_sprintf_int+0x570>;
ffa017a8:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa017ac:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017b0:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa017b4:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa017b8:	69 91 00 00 
ffa017bc:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa017c0:	0b c4 00 00 	R0 = (A0 += A1);
ffa017c4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa017c8:	10 4d       	R0 >>>= 0x2;
ffa017ca:	08 52       	R0 = R0 - R1;
ffa017cc:	10 32       	P2 = R0;
ffa017ce:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa017d0:	92 5a       	P2 = P2 << 0x1;
ffa017d2:	4a 30       	R1 = P2;
ffa017d4:	0a 52       	R0 = R2 - R1;
ffa017d6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017d8:	5a 60       	R2 = 0xb (X);		/*		R2=0xb( 11) */
ffa017da:	88 e6 0a 00 	B[P1 + 0xa] = R0;
ffa017de:	b2 2e       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa017e0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa017e2:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa017e4:	f8 4f       	R0 <<= 0x1f;
ffa017e6:	90 52       	R2 = R0 - R2;
ffa017e8:	02 0d       	CC = R2 <= 0x0;
ffa017ea:	60 19       	IF CC JUMP 0xffa01aaa <_sprintf_int+0x586>;
ffa017ec:	46 e1 66 66 	R6.H = 0x6666;		/* (26214)	R6=0x66660001(1717960705) */
ffa017f0:	06 e1 67 66 	R6.L = 0x6667;		/* (26215)	R6=0x66666667(1717986919) */
ffa017f4:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa017f8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017fc:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa01800:	11 c1 32 98 	A1 += R6.H * R2.L (M, IS);
ffa01804:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01808:	0b c4 00 00 	R0 = (A0 += A1);
ffa0180c:	10 4d       	R0 >>>= 0x2;
ffa0180e:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01812:	c8 52       	R3 = R0 - R1;
ffa01814:	23 32       	P4 = R3;
ffa01816:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa0181a:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa0181e:	69 91       	P1 = [P5];
ffa01820:	03 0d       	CC = R3 <= 0x0;
ffa01822:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01824:	92 5a       	P2 = P2 << 0x1;
ffa01826:	4a 30       	R1 = P2;
ffa01828:	0a 52       	R0 = R2 - R1;
ffa0182a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0182c:	08 9b       	B[P1] = R0;
ffa0182e:	3c 19       	IF CC JUMP 0xffa01aa6 <_sprintf_int+0x582>;
ffa01830:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa01834:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01838:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa0183c:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01840:	69 91 00 00 
ffa01844:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01848:	0b c4 00 00 	R0 = (A0 += A1);
ffa0184c:	10 4d       	R0 >>>= 0x2;
ffa0184e:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01852:	88 52       	R2 = R0 - R1;
ffa01854:	22 32       	P4 = R2;
ffa01856:	02 0d       	CC = R2 <= 0x0;
ffa01858:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0185a:	92 5a       	P2 = P2 << 0x1;
ffa0185c:	4a 30       	R1 = P2;
ffa0185e:	0b 52       	R0 = R3 - R1;
ffa01860:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01862:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa01866:	1e 19       	IF CC JUMP 0xffa01aa2 <_sprintf_int+0x57e>;
ffa01868:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa0186c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01870:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa01874:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01878:	69 91 00 00 
ffa0187c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01880:	0b c4 00 00 	R0 = (A0 += A1);
ffa01884:	10 4d       	R0 >>>= 0x2;
ffa01886:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0188a:	c8 52       	R3 = R0 - R1;
ffa0188c:	23 32       	P4 = R3;
ffa0188e:	03 0d       	CC = R3 <= 0x0;
ffa01890:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01892:	92 5a       	P2 = P2 << 0x1;
ffa01894:	4a 30       	R1 = P2;
ffa01896:	0a 52       	R0 = R2 - R1;
ffa01898:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0189a:	88 e6 02 00 	B[P1 + 0x2] = R0;
ffa0189e:	fd 18       	IF CC JUMP 0xffa01a98 <_sprintf_int+0x574>;
ffa018a0:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa018a4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa018a8:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa018ac:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa018b0:	69 91 00 00 
ffa018b4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa018b8:	0b c4 00 00 	R0 = (A0 += A1);
ffa018bc:	10 4d       	R0 >>>= 0x2;
ffa018be:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa018c2:	c8 53       	R7 = R0 - R1;
ffa018c4:	27 32       	P4 = R7;
ffa018c6:	07 0d       	CC = R7 <= 0x0;
ffa018c8:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa018ca:	92 5a       	P2 = P2 << 0x1;
ffa018cc:	4a 30       	R1 = P2;
ffa018ce:	0b 52       	R0 = R3 - R1;
ffa018d0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa018d2:	88 e6 03 00 	B[P1 + 0x3] = R0;
ffa018d6:	f9 18       	IF CC JUMP 0xffa01ac8 <_sprintf_int+0x5a4>;
ffa018d8:	80 c0 3e 18 	A1 = R7.L * R6.L (FU);
ffa018dc:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa018e0:	11 c1 3e 86 	A1 += R7.H * R6.L (M), A0 = R7.H * R6.H (IS);
ffa018e4:	11 c9 37 98 	A1 += R6.H * R7.L (M, IS) || P1 = [P5] || NOP;
ffa018e8:	69 91 00 00 
ffa018ec:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa018f0:	0b c4 00 00 	R0 = (A0 += A1);
ffa018f4:	10 4d       	R0 >>>= 0x2;
ffa018f6:	82 c6 0f 03 	R1 = R7 >>> 0x1f;
ffa018fa:	88 52       	R2 = R0 - R1;
ffa018fc:	22 32       	P4 = R2;
ffa018fe:	02 0d       	CC = R2 <= 0x0;
ffa01900:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01902:	92 5a       	P2 = P2 << 0x1;
ffa01904:	4a 30       	R1 = P2;
ffa01906:	0f 52       	R0 = R7 - R1;
ffa01908:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0190a:	88 e6 04 00 	B[P1 + 0x4] = R0;
ffa0190e:	db 18       	IF CC JUMP 0xffa01ac4 <_sprintf_int+0x5a0>;
ffa01910:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa01914:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01918:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa0191c:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01920:	69 91 00 00 
ffa01924:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01928:	0b c4 00 00 	R0 = (A0 += A1);
ffa0192c:	10 4d       	R0 >>>= 0x2;
ffa0192e:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01932:	c8 52       	R3 = R0 - R1;
ffa01934:	23 32       	P4 = R3;
ffa01936:	03 0d       	CC = R3 <= 0x0;
ffa01938:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0193a:	92 5a       	P2 = P2 << 0x1;
ffa0193c:	4a 30       	R1 = P2;
ffa0193e:	0a 52       	R0 = R2 - R1;
ffa01940:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01942:	88 e6 05 00 	B[P1 + 0x5] = R0;
ffa01946:	bd 18       	IF CC JUMP 0xffa01ac0 <_sprintf_int+0x59c>;
ffa01948:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa0194c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01950:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa01954:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01958:	69 91 00 00 
ffa0195c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01960:	0b c4 00 00 	R0 = (A0 += A1);
ffa01964:	10 4d       	R0 >>>= 0x2;
ffa01966:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa0196a:	88 52       	R2 = R0 - R1;
ffa0196c:	22 32       	P4 = R2;
ffa0196e:	02 0d       	CC = R2 <= 0x0;
ffa01970:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01972:	92 5a       	P2 = P2 << 0x1;
ffa01974:	4a 30       	R1 = P2;
ffa01976:	0b 52       	R0 = R3 - R1;
ffa01978:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0197a:	88 e6 06 00 	B[P1 + 0x6] = R0;
ffa0197e:	9f 18       	IF CC JUMP 0xffa01abc <_sprintf_int+0x598>;
ffa01980:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa01984:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01988:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa0198c:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01990:	69 91 00 00 
ffa01994:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01998:	0b c4 00 00 	R0 = (A0 += A1);
ffa0199c:	10 4d       	R0 >>>= 0x2;
ffa0199e:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa019a2:	c8 52       	R3 = R0 - R1;
ffa019a4:	23 32       	P4 = R3;
ffa019a6:	03 0d       	CC = R3 <= 0x0;
ffa019a8:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa019aa:	92 5a       	P2 = P2 << 0x1;
ffa019ac:	4a 30       	R1 = P2;
ffa019ae:	0a 52       	R0 = R2 - R1;
ffa019b0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa019b2:	88 e6 07 00 	B[P1 + 0x7] = R0;
ffa019b6:	81 18       	IF CC JUMP 0xffa01ab8 <_sprintf_int+0x594>;
ffa019b8:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa019bc:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa019c0:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa019c4:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa019c8:	69 91 00 00 
ffa019cc:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa019d0:	0b c4 00 00 	R0 = (A0 += A1);
ffa019d4:	10 4d       	R0 >>>= 0x2;
ffa019d6:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa019da:	c8 53       	R7 = R0 - R1;
ffa019dc:	27 32       	P4 = R7;
ffa019de:	07 0d       	CC = R7 <= 0x0;
ffa019e0:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa019e2:	92 5a       	P2 = P2 << 0x1;
ffa019e4:	4a 30       	R1 = P2;
ffa019e6:	0b 52       	R0 = R3 - R1;
ffa019e8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa019ea:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa019ee:	6f 18       	IF CC JUMP 0xffa01acc <_sprintf_int+0x5a8>;
ffa019f0:	80 c0 3e 18 	A1 = R7.L * R6.L (FU);
ffa019f4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa019f8:	11 c1 3e 86 	A1 += R7.H * R6.L (M), A0 = R7.H * R6.H (IS);
ffa019fc:	11 c9 37 98 	A1 += R6.H * R7.L (M, IS) || P1 = [P5] || NOP;
ffa01a00:	69 91 00 00 
ffa01a04:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01a08:	0b c4 00 00 	R0 = (A0 += A1);
ffa01a0c:	10 4d       	R0 >>>= 0x2;
ffa01a0e:	82 c6 0f 03 	R1 = R7 >>> 0x1f;
ffa01a12:	88 52       	R2 = R0 - R1;
ffa01a14:	22 32       	P4 = R2;
ffa01a16:	02 0d       	CC = R2 <= 0x0;
ffa01a18:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa01a1a:	92 5a       	P2 = P2 << 0x1;
ffa01a1c:	4a 30       	R1 = P2;
ffa01a1e:	0f 52       	R0 = R7 - R1;
ffa01a20:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01a22:	88 e6 09 00 	B[P1 + 0x9] = R0;
ffa01a26:	57 18       	IF CC JUMP 0xffa01ad4 <_sprintf_int+0x5b0>;
ffa01a28:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa01a2c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01a30:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa01a34:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P0 = [P5] || NOP;
ffa01a38:	68 91 00 00 
ffa01a3c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01a40:	0b c4 00 00 	R0 = (A0 += A1);
ffa01a44:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01a48:	10 4d       	R0 >>>= 0x2;
ffa01a4a:	08 52       	R0 = R0 - R1;
ffa01a4c:	08 32       	P1 = R0;
ffa01a4e:	89 5e       	P2 = P1 + (P1 << 0x2);
ffa01a50:	92 5a       	P2 = P2 << 0x1;
ffa01a52:	4a 30       	R1 = P2;
ffa01a54:	0a 52       	R0 = R2 - R1;
ffa01a56:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01a58:	41 0d       	CC = P1 <= 0x0;
ffa01a5a:	80 e6 0a 00 	B[P0 + 0xa] = R0;
ffa01a5e:	39 18       	IF CC JUMP 0xffa01ad0 <_sprintf_int+0x5ac>;
ffa01a60:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa01a62:	62 60       	R2 = 0xc (X);		/*		R2=0xc( 12) */
ffa01a64:	6a 91       	P2 = [P5];
ffa01a66:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01a68:	02 0d       	CC = R2 <= 0x0;
ffa01a6a:	8a 5a       	P2 = P2 + P1;
ffa01a6c:	10 9b       	B[P2] = R0;
ffa01a6e:	02 18       	IF CC JUMP 0xffa01a72 <_sprintf_int+0x54e>;
ffa01a70:	69 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a72:	74 2d       	JUMP.S 0xffa0155a <_sprintf_int+0x36>;
ffa01a74:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa01a76:	66 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a78:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa01a7a:	64 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a7c:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01a7e:	62 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a80:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa01a82:	60 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a84:	32 60       	R2 = 0x6 (X);		/*		R2=0x6(  6) */
ffa01a86:	5e 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a88:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
ffa01a8a:	5c 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a8c:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01a8e:	5a 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a90:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
ffa01a92:	58 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a94:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa01a96:	56 2d       	JUMP.S 0xffa01542 <_sprintf_int+0x1e>;
ffa01a98:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01a9a:	08 32       	P1 = R0;
ffa01a9c:	10 30       	R2 = R0;
ffa01a9e:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01aa0:	e2 2f       	JUMP.S 0xffa01a64 <_sprintf_int+0x540>;
ffa01aa2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01aa4:	fb 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01aa6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01aa8:	f9 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01aaa:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa01aae:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01ab0:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa01ab2:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa01ab6:	d7 2f       	JUMP.S 0xffa01a64 <_sprintf_int+0x540>;
ffa01ab8:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01aba:	f0 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01abc:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01abe:	ee 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01ac0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01ac2:	ec 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01ac4:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01ac6:	ea 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01ac8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01aca:	e8 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01acc:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa01ace:	e6 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01ad0:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa01ad2:	e4 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;
ffa01ad4:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01ad6:	e2 2f       	JUMP.S 0xffa01a9a <_sprintf_int+0x576>;

ffa01ad8 <_sprintf_hex>:
ffa01ad8:	10 32       	P2 = R0;
ffa01ada:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01adc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ae0:	11 30       	R2 = R1;
ffa01ae2:	10 9b       	B[P2] = R0;
ffa01ae4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01ae8:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01aec:	82 c6 21 81 	R0 = R1 >> 0x1c;
ffa01af0:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01af2:	08 09       	CC = R0 <= R1;
ffa01af4:	4c 14       	IF !CC JUMP 0xffa01b8c <_sprintf_hex+0xb4> (BP);
ffa01af6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01af8:	82 c6 42 03 	R1 = R2 >>> 0x18;
ffa01afc:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa01b00:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b02:	01 54       	R0 = R1 & R0;
ffa01b04:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b06:	08 09       	CC = R0 <= R1;
ffa01b08:	55 14       	IF !CC JUMP 0xffa01bb2 <_sprintf_hex+0xda> (BP);
ffa01b0a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b0c:	82 c6 62 03 	R1 = R2 >>> 0x14;
ffa01b10:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa01b14:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b16:	01 54       	R0 = R1 & R0;
ffa01b18:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b1a:	08 09       	CC = R0 <= R1;
ffa01b1c:	49 14       	IF !CC JUMP 0xffa01bae <_sprintf_hex+0xd6> (BP);
ffa01b1e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b20:	82 c6 82 03 	R1 = R2 >>> 0x10;
ffa01b24:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa01b28:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b2a:	01 54       	R0 = R1 & R0;
ffa01b2c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b2e:	08 09       	CC = R0 <= R1;
ffa01b30:	3d 14       	IF !CC JUMP 0xffa01baa <_sprintf_hex+0xd2> (BP);
ffa01b32:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b34:	82 c6 a2 03 	R1 = R2 >>> 0xc;
ffa01b38:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa01b3c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b3e:	01 54       	R0 = R1 & R0;
ffa01b40:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b42:	08 09       	CC = R0 <= R1;
ffa01b44:	31 14       	IF !CC JUMP 0xffa01ba6 <_sprintf_hex+0xce> (BP);
ffa01b46:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b48:	82 c6 c2 03 	R1 = R2 >>> 0x8;
ffa01b4c:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa01b50:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b52:	01 54       	R0 = R1 & R0;
ffa01b54:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b56:	08 09       	CC = R0 <= R1;
ffa01b58:	25 14       	IF !CC JUMP 0xffa01ba2 <_sprintf_hex+0xca> (BP);
ffa01b5a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b5c:	82 c6 e2 03 	R1 = R2 >>> 0x4;
ffa01b60:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa01b64:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b66:	01 54       	R0 = R1 & R0;
ffa01b68:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b6a:	08 09       	CC = R0 <= R1;
ffa01b6c:	19 14       	IF !CC JUMP 0xffa01b9e <_sprintf_hex+0xc6> (BP);
ffa01b6e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b70:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa01b74:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01b76:	02 54       	R0 = R2 & R0;
ffa01b78:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01b7a:	08 09       	CC = R0 <= R1;
ffa01b7c:	0a 1c       	IF CC JUMP 0xffa01b90 <_sprintf_hex+0xb8> (BP);
ffa01b7e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01b80:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa01b84:	01 e8 00 00 	UNLINK;
ffa01b88:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01b8a:	10 00       	RTS;
ffa01b8c:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01b8e:	b5 2f       	JUMP.S 0xffa01af8 <_sprintf_hex+0x20>;
ffa01b90:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b92:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa01b96:	01 e8 00 00 	UNLINK;
ffa01b9a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01b9c:	10 00       	RTS;
ffa01b9e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01ba0:	e8 2f       	JUMP.S 0xffa01b70 <_sprintf_hex+0x98>;
ffa01ba2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01ba4:	dc 2f       	JUMP.S 0xffa01b5c <_sprintf_hex+0x84>;
ffa01ba6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01ba8:	d0 2f       	JUMP.S 0xffa01b48 <_sprintf_hex+0x70>;
ffa01baa:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01bac:	c4 2f       	JUMP.S 0xffa01b34 <_sprintf_hex+0x5c>;
ffa01bae:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01bb0:	b8 2f       	JUMP.S 0xffa01b20 <_sprintf_hex+0x48>;
ffa01bb2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01bb4:	ac 2f       	JUMP.S 0xffa01b0c <_sprintf_hex+0x34>;
	...

ffa01bb8 <_atoi>:
ffa01bb8:	08 32       	P1 = R0;
ffa01bba:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa01bbc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01bbe:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01bc2:	48 99       	R0 = B[P1] (X);
ffa01bc4:	10 08       	CC = R0 == R2;
ffa01bc6:	25 18       	IF CC JUMP 0xffa01c10 <_atoi+0x58>;
ffa01bc8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01bca:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01bcc:	41 32       	P0 = P1;
ffa01bce:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01bd0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01bd2:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01bd4:	12 20       	JUMP.S 0xffa01bf8 <_atoi+0x40>;
ffa01bd6:	8b 08       	CC = R3 < R1;
ffa01bd8:	16 10       	IF !CC JUMP 0xffa01c04 <_atoi+0x4c>;
ffa01bda:	10 43       	R0 = R2.B (X);
ffa01bdc:	28 32       	P5 = R0;
ffa01bde:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01be0:	40 99       	R0 = B[P0] (X);
ffa01be2:	80 66       	R0 += -0x30;		/* (-48) */
ffa01be4:	40 43       	R0 = R0.B (Z);
ffa01be6:	aa 5a       	P2 = P2 + P5;
ffa01be8:	10 0a       	CC = R0 <= R2 (IU);
ffa01bea:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01bec:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01bee:	03 14       	IF !CC JUMP 0xffa01bf4 <_atoi+0x3c> (BP);
ffa01bf0:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01bf2:	92 5a       	P2 = P2 << 0x1;
ffa01bf4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01bf6:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01bf8:	4a 99       	R2 = B[P1] (X);
ffa01bfa:	02 30       	R0 = R2;
ffa01bfc:	80 66       	R0 += -0x30;		/* (-48) */
ffa01bfe:	40 43       	R0 = R0.B (Z);
ffa01c00:	30 0a       	CC = R0 <= R6 (IU);
ffa01c02:	ea 1f       	IF CC JUMP 0xffa01bd6 <_atoi+0x1e> (BP);
ffa01c04:	42 30       	R0 = P2;
ffa01c06:	f8 40       	R0 *= R7;
ffa01c08:	01 e8 00 00 	UNLINK;
ffa01c0c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01c0e:	10 00       	RTS;
ffa01c10:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01c12:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01c14:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c16:	db 2f       	JUMP.S 0xffa01bcc <_atoi+0x14>;

ffa01c18 <_udelay>:
ffa01c18:	00 0d       	CC = R0 <= 0x0;
ffa01c1a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01c1e:	0b 18       	IF CC JUMP 0xffa01c34 <_udelay+0x1c>;
ffa01c20:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01c22:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01c26:	b2 e0 03 20 	LSETUP(0xffa01c2a <_udelay+0x12>, 0xffa01c2c <_udelay+0x14>) LC1 = P2;
ffa01c2a:	00 00       	NOP;
ffa01c2c:	00 00       	NOP;
ffa01c2e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01c30:	08 08       	CC = R0 == R1;
ffa01c32:	f8 17       	IF !CC JUMP 0xffa01c22 <_udelay+0xa> (BP);
ffa01c34:	01 e8 00 00 	UNLINK;
ffa01c38:	10 00       	RTS;
	...

ffa01c3c <_mod>:
ffa01c3c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01c40:	82 c6 08 86 	R3 = R0 << 0x1;
ffa01c44:	11 30       	R2 = R1;
ffa01c46:	53 42       	DIVS (R3, R2);
ffa01c48:	13 42       	DIVQ (R3, R2);
ffa01c4a:	13 42       	DIVQ (R3, R2);
ffa01c4c:	13 42       	DIVQ (R3, R2);
ffa01c4e:	13 42       	DIVQ (R3, R2);
ffa01c50:	13 42       	DIVQ (R3, R2);
ffa01c52:	13 42       	DIVQ (R3, R2);
ffa01c54:	13 42       	DIVQ (R3, R2);
ffa01c56:	13 42       	DIVQ (R3, R2);
ffa01c58:	13 42       	DIVQ (R3, R2);
ffa01c5a:	13 42       	DIVQ (R3, R2);
ffa01c5c:	13 42       	DIVQ (R3, R2);
ffa01c5e:	13 42       	DIVQ (R3, R2);
ffa01c60:	13 42       	DIVQ (R3, R2);
ffa01c62:	13 42       	DIVQ (R3, R2);
ffa01c64:	13 42       	DIVQ (R3, R2);
ffa01c66:	9b 42       	R3 = R3.L (X);
ffa01c68:	cb 40       	R3 *= R1;
ffa01c6a:	01 e8 00 00 	UNLINK;
ffa01c6e:	18 52       	R0 = R0 - R3;
ffa01c70:	10 00       	RTS;
	...

ffa01c74 <_strprepend>:
ffa01c74:	c5 04       	[--SP] = (P5:5);
ffa01c76:	02 32       	P0 = R2;
ffa01c78:	12 32       	P2 = R2;
ffa01c7a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01c7e:	18 30       	R3 = R0;
ffa01c80:	29 32       	P5 = R1;
ffa01c82:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01c84:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01c88:	b2 e0 07 10 	LSETUP(0xffa01c8c <_strprepend+0x18>, 0xffa01c96 <_strprepend+0x22>) LC1 = P1;
ffa01c8c:	50 99       	R0 = B[P2] (X);
ffa01c8e:	00 0c       	CC = R0 == 0x0;
ffa01c90:	0a 18       	IF CC JUMP 0xffa01ca4 <_strprepend+0x30>;
ffa01c92:	00 00       	NOP;
ffa01c94:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01c96:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01c98:	28 91       	R0 = [P5];
ffa01c9a:	01 e8 00 00 	UNLINK;
ffa01c9e:	03 52       	R0 = R3 - R0;
ffa01ca0:	85 04       	(P5:5) = [SP++];
ffa01ca2:	10 00       	RTS;
ffa01ca4:	02 0d       	CC = R2 <= 0x0;
ffa01ca6:	28 91       	R0 = [P5];
ffa01ca8:	f9 1b       	IF CC JUMP 0xffa01c9a <_strprepend+0x26>;
ffa01caa:	03 52       	R0 = R3 - R0;
ffa01cac:	10 32       	P2 = R0;
ffa01cae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01cb0:	09 64       	R1 += 0x1;		/* (  1) */
ffa01cb2:	40 98       	R0 = B[P0++] (X);
ffa01cb4:	0a 08       	CC = R2 == R1;
ffa01cb6:	10 9a       	B[P2++] = R0;
ffa01cb8:	fc 17       	IF !CC JUMP 0xffa01cb0 <_strprepend+0x3c> (BP);
ffa01cba:	ef 2f       	JUMP.S 0xffa01c98 <_strprepend+0x24>;

ffa01cbc <_strprintf_hex>:
ffa01cbc:	10 32       	P2 = R0;
ffa01cbe:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01cc0:	09 32       	P1 = R1;
ffa01cc2:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01cc4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01cc8:	10 9b       	B[P2] = R0;
ffa01cca:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01cce:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01cd2:	82 c6 22 81 	R0 = R2 >> 0x1c;
ffa01cd6:	08 09       	CC = R0 <= R1;
ffa01cd8:	50 14       	IF !CC JUMP 0xffa01d78 <_strprintf_hex+0xbc> (BP);
ffa01cda:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01cdc:	82 c6 42 03 	R1 = R2 >>> 0x18;
ffa01ce0:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa01ce4:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01ce6:	01 54       	R0 = R1 & R0;
ffa01ce8:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01cea:	08 09       	CC = R0 <= R1;
ffa01cec:	54 14       	IF !CC JUMP 0xffa01d94 <_strprintf_hex+0xd8> (BP);
ffa01cee:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01cf0:	82 c6 62 03 	R1 = R2 >>> 0x14;
ffa01cf4:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa01cf8:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01cfa:	01 54       	R0 = R1 & R0;
ffa01cfc:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01cfe:	08 09       	CC = R0 <= R1;
ffa01d00:	48 14       	IF !CC JUMP 0xffa01d90 <_strprintf_hex+0xd4> (BP);
ffa01d02:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01d04:	82 c6 82 03 	R1 = R2 >>> 0x10;
ffa01d08:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa01d0c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01d0e:	01 54       	R0 = R1 & R0;
ffa01d10:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01d12:	08 09       	CC = R0 <= R1;
ffa01d14:	3c 14       	IF !CC JUMP 0xffa01d8c <_strprintf_hex+0xd0> (BP);
ffa01d16:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01d18:	82 c6 a2 03 	R1 = R2 >>> 0xc;
ffa01d1c:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa01d20:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01d22:	01 54       	R0 = R1 & R0;
ffa01d24:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01d26:	08 09       	CC = R0 <= R1;
ffa01d28:	30 14       	IF !CC JUMP 0xffa01d88 <_strprintf_hex+0xcc> (BP);
ffa01d2a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01d2c:	82 c6 c2 03 	R1 = R2 >>> 0x8;
ffa01d30:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa01d34:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01d36:	01 54       	R0 = R1 & R0;
ffa01d38:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01d3a:	08 09       	CC = R0 <= R1;
ffa01d3c:	24 14       	IF !CC JUMP 0xffa01d84 <_strprintf_hex+0xc8> (BP);
ffa01d3e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01d40:	82 c6 e2 03 	R1 = R2 >>> 0x4;
ffa01d44:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa01d48:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01d4a:	01 54       	R0 = R1 & R0;
ffa01d4c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01d4e:	08 09       	CC = R0 <= R1;
ffa01d50:	18 14       	IF !CC JUMP 0xffa01d80 <_strprintf_hex+0xc4> (BP);
ffa01d52:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01d54:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa01d58:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01d5a:	02 54       	R0 = R2 & R0;
ffa01d5c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01d5e:	08 09       	CC = R0 <= R1;
ffa01d60:	0e 1c       	IF CC JUMP 0xffa01d7c <_strprintf_hex+0xc0> (BP);
ffa01d62:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d64:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa01d68:	08 91       	R0 = [P1];
ffa01d6a:	50 64       	R0 += 0xa;		/* ( 10) */
ffa01d6c:	52 6c       	P2 += 0xa;		/* ( 10) */
ffa01d6e:	08 93       	[P1] = R0;
ffa01d70:	01 e8 00 00 	UNLINK;
ffa01d74:	42 30       	R0 = P2;
ffa01d76:	10 00       	RTS;
ffa01d78:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d7a:	b1 2f       	JUMP.S 0xffa01cdc <_strprintf_hex+0x20>;
ffa01d7c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01d7e:	f3 2f       	JUMP.S 0xffa01d64 <_strprintf_hex+0xa8>;
ffa01d80:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d82:	e9 2f       	JUMP.S 0xffa01d54 <_strprintf_hex+0x98>;
ffa01d84:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d86:	dd 2f       	JUMP.S 0xffa01d40 <_strprintf_hex+0x84>;
ffa01d88:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d8a:	d1 2f       	JUMP.S 0xffa01d2c <_strprintf_hex+0x70>;
ffa01d8c:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d8e:	c5 2f       	JUMP.S 0xffa01d18 <_strprintf_hex+0x5c>;
ffa01d90:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d92:	b9 2f       	JUMP.S 0xffa01d04 <_strprintf_hex+0x48>;
ffa01d94:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01d96:	ad 2f       	JUMP.S 0xffa01cf0 <_strprintf_hex+0x34>;

ffa01d98 <_strprintf_int>:
ffa01d98:	eb 05       	[--SP] = (R7:5, P5:3);
ffa01d9a:	02 0c       	CC = R2 == 0x0;
ffa01d9c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01da0:	28 30       	R5 = R0;
ffa01da2:	21 32       	P4 = R1;
ffa01da4:	1d 14       	IF !CC JUMP 0xffa01dde <_strprintf_int+0x46> (BP);
ffa01da6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa01daa:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa01dae:	6a 91       	P2 = [P5];
ffa01db0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01db2:	10 9b       	B[P2] = R0;
ffa01db4:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa01db6:	0d 32       	P1 = R5;
ffa01db8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01dba:	0a 52       	R0 = R2 - R1;
ffa01dbc:	00 32       	P0 = R0;
ffa01dbe:	6a 91       	P2 = [P5];
ffa01dc0:	09 64       	R1 += 0x1;		/* (  1) */
ffa01dc2:	0a 09       	CC = R2 <= R1;
ffa01dc4:	82 5a       	P2 = P2 + P0;
ffa01dc6:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01dca:	08 9a       	B[P1++] = R0;
ffa01dcc:	f7 17       	IF !CC JUMP 0xffa01dba <_strprintf_int+0x22> (BP);
ffa01dce:	20 91       	R0 = [P4];
ffa01dd0:	10 50       	R0 = R0 + R2;
ffa01dd2:	01 e8 00 00 	UNLINK;
ffa01dd6:	20 93       	[P4] = R0;
ffa01dd8:	15 50       	R0 = R5 + R2;
ffa01dda:	ab 05       	(R7:5, P5:3) = [SP++];
ffa01ddc:	10 00       	RTS;
ffa01dde:	02 0d       	CC = R2 <= 0x0;
ffa01de0:	3e 19       	IF CC JUMP 0xffa0205c <_strprintf_int+0x2c4>;
ffa01de2:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x6666ffff(1718026239) */
ffa01de6:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01dea:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa01dee:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01df2:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01df6:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa01dfa:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01dfe:	0b c4 00 00 	R0 = (A0 += A1);
ffa01e02:	10 4d       	R0 >>>= 0x2;
ffa01e04:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01e08:	c8 52       	R3 = R0 - R1;
ffa01e0a:	1b 32       	P3 = R3;
ffa01e0c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa01e10:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa01e14:	69 91       	P1 = [P5];
ffa01e16:	03 0d       	CC = R3 <= 0x0;
ffa01e18:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01e1a:	92 5a       	P2 = P2 << 0x1;
ffa01e1c:	4a 30       	R1 = P2;
ffa01e1e:	0a 52       	R0 = R2 - R1;
ffa01e20:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01e22:	08 9b       	B[P1] = R0;
ffa01e24:	c8 1b       	IF CC JUMP 0xffa01db4 <_strprintf_int+0x1c>;
ffa01e26:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01e2a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01e2e:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa01e32:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01e36:	69 91 00 00 
ffa01e3a:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01e3e:	0b c4 00 00 	R0 = (A0 += A1);
ffa01e42:	10 4d       	R0 >>>= 0x2;
ffa01e44:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01e48:	88 52       	R2 = R0 - R1;
ffa01e4a:	1a 32       	P3 = R2;
ffa01e4c:	02 0d       	CC = R2 <= 0x0;
ffa01e4e:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01e50:	92 5a       	P2 = P2 << 0x1;
ffa01e52:	4a 30       	R1 = P2;
ffa01e54:	0b 52       	R0 = R3 - R1;
ffa01e56:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01e58:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa01e5c:	02 14       	IF !CC JUMP 0xffa01e60 <_strprintf_int+0xc8> (BP);
ffa01e5e:	49 22       	JUMP.S 0xffa022f0 <_strprintf_int+0x558>;
ffa01e60:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa01e64:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01e68:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01e6c:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01e70:	69 91 00 00 
ffa01e74:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01e78:	0b c4 00 00 	R0 = (A0 += A1);
ffa01e7c:	10 4d       	R0 >>>= 0x2;
ffa01e7e:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01e82:	c8 52       	R3 = R0 - R1;
ffa01e84:	1b 32       	P3 = R3;
ffa01e86:	03 0d       	CC = R3 <= 0x0;
ffa01e88:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01e8a:	92 5a       	P2 = P2 << 0x1;
ffa01e8c:	4a 30       	R1 = P2;
ffa01e8e:	0a 52       	R0 = R2 - R1;
ffa01e90:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01e92:	88 e6 02 00 	B[P1 + 0x2] = R0;
ffa01e96:	02 14       	IF !CC JUMP 0xffa01e9a <_strprintf_int+0x102> (BP);
ffa01e98:	2e 22       	JUMP.S 0xffa022f4 <_strprintf_int+0x55c>;
ffa01e9a:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01e9e:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01ea2:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa01ea6:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01eaa:	69 91 00 00 
ffa01eae:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01eb2:	0b c4 00 00 	R0 = (A0 += A1);
ffa01eb6:	10 4d       	R0 >>>= 0x2;
ffa01eb8:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01ebc:	88 52       	R2 = R0 - R1;
ffa01ebe:	1a 32       	P3 = R2;
ffa01ec0:	02 0d       	CC = R2 <= 0x0;
ffa01ec2:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01ec4:	92 5a       	P2 = P2 << 0x1;
ffa01ec6:	4a 30       	R1 = P2;
ffa01ec8:	0b 52       	R0 = R3 - R1;
ffa01eca:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01ecc:	88 e6 03 00 	B[P1 + 0x3] = R0;
ffa01ed0:	02 14       	IF !CC JUMP 0xffa01ed4 <_strprintf_int+0x13c> (BP);
ffa01ed2:	13 22       	JUMP.S 0xffa022f8 <_strprintf_int+0x560>;
ffa01ed4:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa01ed8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01edc:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01ee0:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01ee4:	69 91 00 00 
ffa01ee8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01eec:	0b c4 00 00 	R0 = (A0 += A1);
ffa01ef0:	10 4d       	R0 >>>= 0x2;
ffa01ef2:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01ef6:	c8 52       	R3 = R0 - R1;
ffa01ef8:	1b 32       	P3 = R3;
ffa01efa:	03 0d       	CC = R3 <= 0x0;
ffa01efc:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01efe:	92 5a       	P2 = P2 << 0x1;
ffa01f00:	4a 30       	R1 = P2;
ffa01f02:	0a 52       	R0 = R2 - R1;
ffa01f04:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01f06:	88 e6 04 00 	B[P1 + 0x4] = R0;
ffa01f0a:	f9 19       	IF CC JUMP 0xffa022fc <_strprintf_int+0x564>;
ffa01f0c:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01f10:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01f14:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa01f18:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01f1c:	69 91 00 00 
ffa01f20:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01f24:	0b c4 00 00 	R0 = (A0 += A1);
ffa01f28:	10 4d       	R0 >>>= 0x2;
ffa01f2a:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01f2e:	88 52       	R2 = R0 - R1;
ffa01f30:	1a 32       	P3 = R2;
ffa01f32:	02 0d       	CC = R2 <= 0x0;
ffa01f34:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01f36:	92 5a       	P2 = P2 << 0x1;
ffa01f38:	4a 30       	R1 = P2;
ffa01f3a:	0b 52       	R0 = R3 - R1;
ffa01f3c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01f3e:	88 e6 05 00 	B[P1 + 0x5] = R0;
ffa01f42:	df 19       	IF CC JUMP 0xffa02300 <_strprintf_int+0x568>;
ffa01f44:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa01f48:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01f4c:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01f50:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01f54:	69 91 00 00 
ffa01f58:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01f5c:	0b c4 00 00 	R0 = (A0 += A1);
ffa01f60:	10 4d       	R0 >>>= 0x2;
ffa01f62:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01f66:	c8 52       	R3 = R0 - R1;
ffa01f68:	1b 32       	P3 = R3;
ffa01f6a:	03 0d       	CC = R3 <= 0x0;
ffa01f6c:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01f6e:	92 5a       	P2 = P2 << 0x1;
ffa01f70:	4a 30       	R1 = P2;
ffa01f72:	0a 52       	R0 = R2 - R1;
ffa01f74:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01f76:	88 e6 06 00 	B[P1 + 0x6] = R0;
ffa01f7a:	c5 19       	IF CC JUMP 0xffa02304 <_strprintf_int+0x56c>;
ffa01f7c:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01f80:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01f84:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa01f88:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01f8c:	69 91 00 00 
ffa01f90:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01f94:	0b c4 00 00 	R0 = (A0 += A1);
ffa01f98:	10 4d       	R0 >>>= 0x2;
ffa01f9a:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa01f9e:	88 52       	R2 = R0 - R1;
ffa01fa0:	1a 32       	P3 = R2;
ffa01fa2:	02 0d       	CC = R2 <= 0x0;
ffa01fa4:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01fa6:	92 5a       	P2 = P2 << 0x1;
ffa01fa8:	4a 30       	R1 = P2;
ffa01faa:	0b 52       	R0 = R3 - R1;
ffa01fac:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01fae:	88 e6 07 00 	B[P1 + 0x7] = R0;
ffa01fb2:	ad 19       	IF CC JUMP 0xffa0230c <_strprintf_int+0x574>;
ffa01fb4:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa01fb8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01fbc:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01fc0:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa01fc4:	69 91 00 00 
ffa01fc8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01fcc:	0b c4 00 00 	R0 = (A0 += A1);
ffa01fd0:	10 4d       	R0 >>>= 0x2;
ffa01fd2:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01fd6:	c8 52       	R3 = R0 - R1;
ffa01fd8:	1b 32       	P3 = R3;
ffa01fda:	03 0d       	CC = R3 <= 0x0;
ffa01fdc:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa01fde:	92 5a       	P2 = P2 << 0x1;
ffa01fe0:	4a 30       	R1 = P2;
ffa01fe2:	0a 52       	R0 = R2 - R1;
ffa01fe4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01fe6:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa01fea:	8f 19       	IF CC JUMP 0xffa02308 <_strprintf_int+0x570>;
ffa01fec:	80 c0 1f 18 	A1 = R3.L * R7.L (FU);
ffa01ff0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01ff4:	11 c1 1f 86 	A1 += R3.H * R7.L (M), A0 = R3.H * R7.H (IS);
ffa01ff8:	11 c9 3b 98 	A1 += R7.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa01ffc:	69 91 00 00 
ffa02000:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa02004:	0b c4 00 00 	R0 = (A0 += A1);
ffa02008:	10 4d       	R0 >>>= 0x2;
ffa0200a:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa0200e:	88 52       	R2 = R0 - R1;
ffa02010:	1a 32       	P3 = R2;
ffa02012:	02 0d       	CC = R2 <= 0x0;
ffa02014:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa02016:	92 5a       	P2 = P2 << 0x1;
ffa02018:	4a 30       	R1 = P2;
ffa0201a:	0b 52       	R0 = R3 - R1;
ffa0201c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0201e:	88 e6 09 00 	B[P1 + 0x9] = R0;
ffa02022:	77 19       	IF CC JUMP 0xffa02310 <_strprintf_int+0x578>;
ffa02024:	80 c0 17 18 	A1 = R2.L * R7.L (FU);
ffa02028:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0202c:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa02030:	11 c9 3a 98 	A1 += R7.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa02034:	69 91 00 00 
ffa02038:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0203c:	0b c4 00 00 	R0 = (A0 += A1);
ffa02040:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa02044:	10 4d       	R0 >>>= 0x2;
ffa02046:	08 52       	R0 = R0 - R1;
ffa02048:	10 32       	P2 = R0;
ffa0204a:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0204c:	92 5a       	P2 = P2 << 0x1;
ffa0204e:	4a 30       	R1 = P2;
ffa02050:	0a 52       	R0 = R2 - R1;
ffa02052:	80 65       	R0 += 0x30;		/* ( 48) */
ffa02054:	5a 60       	R2 = 0xb (X);		/*		R2=0xb( 11) */
ffa02056:	88 e6 0a 00 	B[P1 + 0xa] = R0;
ffa0205a:	ae 2e       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa0205c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0205e:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa02060:	f8 4f       	R0 <<= 0x1f;
ffa02062:	90 52       	R2 = R0 - R2;
ffa02064:	02 0d       	CC = R2 <= 0x0;
ffa02066:	60 19       	IF CC JUMP 0xffa02326 <_strprintf_int+0x58e>;
ffa02068:	46 e1 66 66 	R6.H = 0x6666;		/* (26214)	R6=0x66660009(1717960713) */
ffa0206c:	06 e1 67 66 	R6.L = 0x6667;		/* (26215)	R6=0x66666667(1717986919) */
ffa02070:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa02074:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02078:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa0207c:	11 c1 32 98 	A1 += R6.H * R2.L (M, IS);
ffa02080:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa02084:	0b c4 00 00 	R0 = (A0 += A1);
ffa02088:	10 4d       	R0 >>>= 0x2;
ffa0208a:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0208e:	c8 52       	R3 = R0 - R1;
ffa02090:	1b 32       	P3 = R3;
ffa02092:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa02096:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa0209a:	69 91       	P1 = [P5];
ffa0209c:	03 0d       	CC = R3 <= 0x0;
ffa0209e:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa020a0:	92 5a       	P2 = P2 << 0x1;
ffa020a2:	4a 30       	R1 = P2;
ffa020a4:	0a 52       	R0 = R2 - R1;
ffa020a6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa020a8:	08 9b       	B[P1] = R0;
ffa020aa:	3c 19       	IF CC JUMP 0xffa02322 <_strprintf_int+0x58a>;
ffa020ac:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa020b0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa020b4:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa020b8:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa020bc:	69 91 00 00 
ffa020c0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa020c4:	0b c4 00 00 	R0 = (A0 += A1);
ffa020c8:	10 4d       	R0 >>>= 0x2;
ffa020ca:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa020ce:	88 52       	R2 = R0 - R1;
ffa020d0:	1a 32       	P3 = R2;
ffa020d2:	02 0d       	CC = R2 <= 0x0;
ffa020d4:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa020d6:	92 5a       	P2 = P2 << 0x1;
ffa020d8:	4a 30       	R1 = P2;
ffa020da:	0b 52       	R0 = R3 - R1;
ffa020dc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa020de:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa020e2:	1e 19       	IF CC JUMP 0xffa0231e <_strprintf_int+0x586>;
ffa020e4:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa020e8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa020ec:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa020f0:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa020f4:	69 91 00 00 
ffa020f8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa020fc:	0b c4 00 00 	R0 = (A0 += A1);
ffa02100:	10 4d       	R0 >>>= 0x2;
ffa02102:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa02106:	c8 52       	R3 = R0 - R1;
ffa02108:	1b 32       	P3 = R3;
ffa0210a:	03 0d       	CC = R3 <= 0x0;
ffa0210c:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa0210e:	92 5a       	P2 = P2 << 0x1;
ffa02110:	4a 30       	R1 = P2;
ffa02112:	0a 52       	R0 = R2 - R1;
ffa02114:	80 65       	R0 += 0x30;		/* ( 48) */
ffa02116:	88 e6 02 00 	B[P1 + 0x2] = R0;
ffa0211a:	fd 18       	IF CC JUMP 0xffa02314 <_strprintf_int+0x57c>;
ffa0211c:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa02120:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02124:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa02128:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa0212c:	69 91 00 00 
ffa02130:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa02134:	0b c4 00 00 	R0 = (A0 += A1);
ffa02138:	10 4d       	R0 >>>= 0x2;
ffa0213a:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa0213e:	c8 53       	R7 = R0 - R1;
ffa02140:	1f 32       	P3 = R7;
ffa02142:	07 0d       	CC = R7 <= 0x0;
ffa02144:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa02146:	92 5a       	P2 = P2 << 0x1;
ffa02148:	4a 30       	R1 = P2;
ffa0214a:	0b 52       	R0 = R3 - R1;
ffa0214c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0214e:	88 e6 03 00 	B[P1 + 0x3] = R0;
ffa02152:	f9 18       	IF CC JUMP 0xffa02344 <_strprintf_int+0x5ac>;
ffa02154:	80 c0 3e 18 	A1 = R7.L * R6.L (FU);
ffa02158:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0215c:	11 c1 3e 86 	A1 += R7.H * R6.L (M), A0 = R7.H * R6.H (IS);
ffa02160:	11 c9 37 98 	A1 += R6.H * R7.L (M, IS) || P1 = [P5] || NOP;
ffa02164:	69 91 00 00 
ffa02168:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0216c:	0b c4 00 00 	R0 = (A0 += A1);
ffa02170:	10 4d       	R0 >>>= 0x2;
ffa02172:	82 c6 0f 03 	R1 = R7 >>> 0x1f;
ffa02176:	88 52       	R2 = R0 - R1;
ffa02178:	1a 32       	P3 = R2;
ffa0217a:	02 0d       	CC = R2 <= 0x0;
ffa0217c:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa0217e:	92 5a       	P2 = P2 << 0x1;
ffa02180:	4a 30       	R1 = P2;
ffa02182:	0f 52       	R0 = R7 - R1;
ffa02184:	80 65       	R0 += 0x30;		/* ( 48) */
ffa02186:	88 e6 04 00 	B[P1 + 0x4] = R0;
ffa0218a:	db 18       	IF CC JUMP 0xffa02340 <_strprintf_int+0x5a8>;
ffa0218c:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa02190:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02194:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa02198:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa0219c:	69 91 00 00 
ffa021a0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa021a4:	0b c4 00 00 	R0 = (A0 += A1);
ffa021a8:	10 4d       	R0 >>>= 0x2;
ffa021aa:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa021ae:	c8 52       	R3 = R0 - R1;
ffa021b0:	1b 32       	P3 = R3;
ffa021b2:	03 0d       	CC = R3 <= 0x0;
ffa021b4:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa021b6:	92 5a       	P2 = P2 << 0x1;
ffa021b8:	4a 30       	R1 = P2;
ffa021ba:	0a 52       	R0 = R2 - R1;
ffa021bc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa021be:	88 e6 05 00 	B[P1 + 0x5] = R0;
ffa021c2:	bd 18       	IF CC JUMP 0xffa0233c <_strprintf_int+0x5a4>;
ffa021c4:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa021c8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa021cc:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa021d0:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa021d4:	69 91 00 00 
ffa021d8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa021dc:	0b c4 00 00 	R0 = (A0 += A1);
ffa021e0:	10 4d       	R0 >>>= 0x2;
ffa021e2:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa021e6:	88 52       	R2 = R0 - R1;
ffa021e8:	1a 32       	P3 = R2;
ffa021ea:	02 0d       	CC = R2 <= 0x0;
ffa021ec:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa021ee:	92 5a       	P2 = P2 << 0x1;
ffa021f0:	4a 30       	R1 = P2;
ffa021f2:	0b 52       	R0 = R3 - R1;
ffa021f4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa021f6:	88 e6 06 00 	B[P1 + 0x6] = R0;
ffa021fa:	9f 18       	IF CC JUMP 0xffa02338 <_strprintf_int+0x5a0>;
ffa021fc:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa02200:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02204:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa02208:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P1 = [P5] || NOP;
ffa0220c:	69 91 00 00 
ffa02210:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa02214:	0b c4 00 00 	R0 = (A0 += A1);
ffa02218:	10 4d       	R0 >>>= 0x2;
ffa0221a:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0221e:	c8 52       	R3 = R0 - R1;
ffa02220:	1b 32       	P3 = R3;
ffa02222:	03 0d       	CC = R3 <= 0x0;
ffa02224:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa02226:	92 5a       	P2 = P2 << 0x1;
ffa02228:	4a 30       	R1 = P2;
ffa0222a:	0a 52       	R0 = R2 - R1;
ffa0222c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0222e:	88 e6 07 00 	B[P1 + 0x7] = R0;
ffa02232:	81 18       	IF CC JUMP 0xffa02334 <_strprintf_int+0x59c>;
ffa02234:	80 c0 1e 18 	A1 = R3.L * R6.L (FU);
ffa02238:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0223c:	11 c1 1e 86 	A1 += R3.H * R6.L (M), A0 = R3.H * R6.H (IS);
ffa02240:	11 c9 33 98 	A1 += R6.H * R3.L (M, IS) || P1 = [P5] || NOP;
ffa02244:	69 91 00 00 
ffa02248:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0224c:	0b c4 00 00 	R0 = (A0 += A1);
ffa02250:	10 4d       	R0 >>>= 0x2;
ffa02252:	82 c6 0b 03 	R1 = R3 >>> 0x1f;
ffa02256:	c8 53       	R7 = R0 - R1;
ffa02258:	1f 32       	P3 = R7;
ffa0225a:	07 0d       	CC = R7 <= 0x0;
ffa0225c:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa0225e:	92 5a       	P2 = P2 << 0x1;
ffa02260:	4a 30       	R1 = P2;
ffa02262:	0b 52       	R0 = R3 - R1;
ffa02264:	80 65       	R0 += 0x30;		/* ( 48) */
ffa02266:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa0226a:	6f 18       	IF CC JUMP 0xffa02348 <_strprintf_int+0x5b0>;
ffa0226c:	80 c0 3e 18 	A1 = R7.L * R6.L (FU);
ffa02270:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02274:	11 c1 3e 86 	A1 += R7.H * R6.L (M), A0 = R7.H * R6.H (IS);
ffa02278:	11 c9 37 98 	A1 += R6.H * R7.L (M, IS) || P1 = [P5] || NOP;
ffa0227c:	69 91 00 00 
ffa02280:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa02284:	0b c4 00 00 	R0 = (A0 += A1);
ffa02288:	10 4d       	R0 >>>= 0x2;
ffa0228a:	82 c6 0f 03 	R1 = R7 >>> 0x1f;
ffa0228e:	88 52       	R2 = R0 - R1;
ffa02290:	1a 32       	P3 = R2;
ffa02292:	02 0d       	CC = R2 <= 0x0;
ffa02294:	9b 5e       	P2 = P3 + (P3 << 0x2);
ffa02296:	92 5a       	P2 = P2 << 0x1;
ffa02298:	4a 30       	R1 = P2;
ffa0229a:	0f 52       	R0 = R7 - R1;
ffa0229c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0229e:	88 e6 09 00 	B[P1 + 0x9] = R0;
ffa022a2:	57 18       	IF CC JUMP 0xffa02350 <_strprintf_int+0x5b8>;
ffa022a4:	80 c0 16 18 	A1 = R2.L * R6.L (FU);
ffa022a8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa022ac:	11 c1 16 86 	A1 += R2.H * R6.L (M), A0 = R2.H * R6.H (IS);
ffa022b0:	11 c9 32 98 	A1 += R6.H * R2.L (M, IS) || P0 = [P5] || NOP;
ffa022b4:	68 91 00 00 
ffa022b8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa022bc:	0b c4 00 00 	R0 = (A0 += A1);
ffa022c0:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa022c4:	10 4d       	R0 >>>= 0x2;
ffa022c6:	08 52       	R0 = R0 - R1;
ffa022c8:	08 32       	P1 = R0;
ffa022ca:	89 5e       	P2 = P1 + (P1 << 0x2);
ffa022cc:	92 5a       	P2 = P2 << 0x1;
ffa022ce:	4a 30       	R1 = P2;
ffa022d0:	0a 52       	R0 = R2 - R1;
ffa022d2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa022d4:	41 0d       	CC = P1 <= 0x0;
ffa022d6:	80 e6 0a 00 	B[P0 + 0xa] = R0;
ffa022da:	39 18       	IF CC JUMP 0xffa0234c <_strprintf_int+0x5b4>;
ffa022dc:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa022de:	62 60       	R2 = 0xc (X);		/*		R2=0xc( 12) */
ffa022e0:	6a 91       	P2 = [P5];
ffa022e2:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa022e4:	02 0d       	CC = R2 <= 0x0;
ffa022e6:	8a 5a       	P2 = P2 + P1;
ffa022e8:	10 9b       	B[P2] = R0;
ffa022ea:	02 18       	IF CC JUMP 0xffa022ee <_strprintf_int+0x556>;
ffa022ec:	65 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa022ee:	70 2d       	JUMP.S 0xffa01dce <_strprintf_int+0x36>;
ffa022f0:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa022f2:	62 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa022f4:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa022f6:	60 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa022f8:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa022fa:	5e 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa022fc:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa022fe:	5c 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa02300:	32 60       	R2 = 0x6 (X);		/*		R2=0x6(  6) */
ffa02302:	5a 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa02304:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
ffa02306:	58 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa02308:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa0230a:	56 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa0230c:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
ffa0230e:	54 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa02310:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa02312:	52 2d       	JUMP.S 0xffa01db6 <_strprintf_int+0x1e>;
ffa02314:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02316:	08 32       	P1 = R0;
ffa02318:	10 30       	R2 = R0;
ffa0231a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0231c:	e2 2f       	JUMP.S 0xffa022e0 <_strprintf_int+0x548>;
ffa0231e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02320:	fb 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02322:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02324:	f9 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02326:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa0232a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0232c:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa0232e:	0d e1 d4 0c 	P5.L = 0xcd4;		/* (3284)	P5=0xff900cd4 <_printf_temp> */
ffa02332:	d7 2f       	JUMP.S 0xffa022e0 <_strprintf_int+0x548>;
ffa02334:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02336:	f0 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02338:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0233a:	ee 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa0233c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0233e:	ec 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02340:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa02342:	ea 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02344:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02346:	e8 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02348:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0234a:	e6 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa0234c:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa0234e:	e4 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;
ffa02350:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02352:	e2 2f       	JUMP.S 0xffa02316 <_strprintf_int+0x57e>;

ffa02354 <_bfin_EMAC_send_check>:
ffa02354:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa02358:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0235c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02360:	50 95       	R0 = W[P2] (X);
ffa02362:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa02364:	00 02       	R0 = CC;
ffa02366:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa02368:	01 e8 00 00 	UNLINK;
ffa0236c:	10 00       	RTS;
	...

ffa02370 <_FormatIPAddress>:
ffa02370:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02374:	18 30       	R3 = R0;
ffa02376:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa0237a:	40 4f       	R0 <<= 0x8;
ffa0237c:	52 43       	R2 = R2.B (Z);
ffa0237e:	10 56       	R0 = R0 | R2;
ffa02380:	40 4f       	R0 <<= 0x8;
ffa02382:	49 43       	R1 = R1.B (Z);
ffa02384:	08 56       	R0 = R0 | R1;
ffa02386:	40 4f       	R0 <<= 0x8;
ffa02388:	5b 43       	R3 = R3.B (Z);
ffa0238a:	18 56       	R0 = R0 | R3;
ffa0238c:	01 e8 00 00 	UNLINK;
ffa02390:	10 00       	RTS;
	...

ffa02394 <_bfin_EMAC_halt>:
ffa02394:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02398:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0239a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0239e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa023a2:	10 93       	[P2] = R0;
ffa023a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa023a8:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa023ac:	10 97       	W[P2] = R0;
ffa023ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa023b2:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa023b6:	10 97       	W[P2] = R0;
ffa023b8:	01 e8 00 00 	UNLINK;
ffa023bc:	10 00       	RTS;
	...

ffa023c0 <_PollMdcDone>:
ffa023c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa023c4:	02 20       	JUMP.S 0xffa023c8 <_PollMdcDone+0x8>;
ffa023c6:	00 00       	NOP;
ffa023c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa023cc:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa023d0:	10 91       	R0 = [P2];
ffa023d2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa023d4:	f9 17       	IF !CC JUMP 0xffa023c6 <_PollMdcDone+0x6> (BP);
ffa023d6:	01 e8 00 00 	UNLINK;
ffa023da:	10 00       	RTS;

ffa023dc <_WrPHYReg>:
ffa023dc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa023e0:	18 30       	R3 = R0;
ffa023e2:	02 20       	JUMP.S 0xffa023e6 <_WrPHYReg+0xa>;
ffa023e4:	00 00       	NOP;
ffa023e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa023ea:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa023ee:	10 91       	R0 = [P2];
ffa023f0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa023f2:	f9 17       	IF !CC JUMP 0xffa023e4 <_WrPHYReg+0x8> (BP);
ffa023f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa023f8:	d0 42       	R0 = R2.L (Z);
ffa023fa:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa023fe:	10 93       	[P2] = R0;
ffa02400:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02402:	88 54       	R2 = R0 & R1;
ffa02404:	18 54       	R0 = R0 & R3;
ffa02406:	58 4f       	R0 <<= 0xb;
ffa02408:	59 60       	R1 = 0xb (X);		/*		R1=0xb( 11) */
ffa0240a:	32 4f       	R2 <<= 0x6;
ffa0240c:	08 56       	R0 = R0 | R1;
ffa0240e:	82 56       	R2 = R2 | R0;
ffa02410:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa02412:	12 93       	[P2] = R2;
ffa02414:	01 e8 00 00 	UNLINK;
ffa02418:	10 00       	RTS;
	...

ffa0241c <_RdPHYReg>:
ffa0241c:	78 05       	[--SP] = (R7:7);
ffa0241e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02422:	38 30       	R7 = R0;
ffa02424:	02 20       	JUMP.S 0xffa02428 <_RdPHYReg+0xc>;
ffa02426:	00 00       	NOP;
ffa02428:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0242c:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02430:	10 91       	R0 = [P2];
ffa02432:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02434:	f9 17       	IF !CC JUMP 0xffa02426 <_RdPHYReg+0xa> (BP);
ffa02436:	cb 42       	R3 = R1.L (Z);
ffa02438:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0243a:	83 54       	R2 = R3 & R0;
ffa0243c:	38 54       	R0 = R0 & R7;
ffa0243e:	58 4f       	R0 <<= 0xb;
ffa02440:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa02442:	08 56       	R0 = R0 | R1;
ffa02444:	32 4f       	R2 <<= 0x6;
ffa02446:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0244a:	82 56       	R2 = R2 | R0;
ffa0244c:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02450:	12 93       	[P2] = R2;
ffa02452:	10 91       	R0 = [P2];
ffa02454:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02456:	0a 18       	IF CC JUMP 0xffa0246a <_RdPHYReg+0x4e>;
ffa02458:	00 00       	NOP;
ffa0245a:	00 00       	NOP;
ffa0245c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02460:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02464:	10 91       	R0 = [P2];
ffa02466:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02468:	f9 17       	IF !CC JUMP 0xffa0245a <_RdPHYReg+0x3e> (BP);
ffa0246a:	0b 32       	P1 = R3;
ffa0246c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02470:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02474:	10 91       	R0 = [P2];
ffa02476:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa0247a:	0a e1 dc 0c 	P2.L = 0xcdc;		/* (3292)	P2=0xff900cdc <_PHYregs> */
ffa0247e:	8a 5c       	P2 = P2 + (P1 << 0x1);
ffa02480:	10 97       	W[P2] = R0;
ffa02482:	01 e8 00 00 	UNLINK;
ffa02486:	c0 42       	R0 = R0.L (Z);
ffa02488:	38 05       	(R7:7) = [SP++];
ffa0248a:	10 00       	RTS;

ffa0248c <_NetCksum>:
ffa0248c:	01 0d       	CC = R1 <= 0x0;
ffa0248e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02492:	10 18       	IF CC JUMP 0xffa024b2 <_NetCksum+0x26>;
ffa02494:	10 32       	P2 = R0;
ffa02496:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa02498:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0249a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0249c:	10 94       	R0 = W[P2++] (Z);
ffa0249e:	0a 08       	CC = R2 == R1;
ffa024a0:	c3 50       	R3 = R3 + R0;
ffa024a2:	fc 17       	IF !CC JUMP 0xffa0249a <_NetCksum+0xe> (BP);
ffa024a4:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa024a8:	03 50       	R0 = R3 + R0;
ffa024aa:	c0 42       	R0 = R0.L (Z);
ffa024ac:	01 e8 00 00 	UNLINK;
ffa024b0:	10 00       	RTS;
ffa024b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024b4:	01 e8 00 00 	UNLINK;
ffa024b8:	10 00       	RTS;
	...

ffa024bc <_htons>:
ffa024bc:	08 30       	R1 = R0;
ffa024be:	c0 42       	R0 = R0.L (Z);
ffa024c0:	40 4e       	R0 >>= 0x8;
ffa024c2:	41 4f       	R1 <<= 0x8;
ffa024c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa024c8:	08 56       	R0 = R0 | R1;
ffa024ca:	c0 42       	R0 = R0.L (Z);
ffa024cc:	01 e8 00 00 	UNLINK;
ffa024d0:	10 00       	RTS;
	...

ffa024d4 <_htonl>:
ffa024d4:	10 30       	R2 = R0;
ffa024d6:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa024da:	40 43       	R0 = R0.B (Z);
ffa024dc:	49 43       	R1 = R1.B (Z);
ffa024de:	40 4f       	R0 <<= 0x8;
ffa024e0:	08 56       	R0 = R0 | R1;
ffa024e2:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa024e6:	40 4f       	R0 <<= 0x8;
ffa024e8:	49 43       	R1 = R1.B (Z);
ffa024ea:	08 56       	R0 = R0 | R1;
ffa024ec:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa024f0:	40 4f       	R0 <<= 0x8;
ffa024f2:	c2 4e       	R2 >>= 0x18;
ffa024f4:	10 56       	R0 = R0 | R2;
ffa024f6:	01 e8 00 00 	UNLINK;
ffa024fa:	10 00       	RTS;

ffa024fc <_pack4chars>:
ffa024fc:	08 32       	P1 = R0;
ffa024fe:	10 32       	P2 = R0;
ffa02500:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02504:	01 e8 00 00 	UNLINK;
ffa02508:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa0250c:	10 98       	R0 = B[P2++] (Z);
ffa0250e:	41 4f       	R1 <<= 0x8;
ffa02510:	08 50       	R0 = R0 + R1;
ffa02512:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa02516:	81 4f       	R1 <<= 0x10;
ffa02518:	08 50       	R0 = R0 + R1;
ffa0251a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0251e:	c1 4f       	R1 <<= 0x18;
ffa02520:	08 50       	R0 = R0 + R1;
ffa02522:	10 00       	RTS;

ffa02524 <_ip_header_setup>:
ffa02524:	08 32       	P1 = R0;
ffa02526:	11 32       	P2 = R1;
ffa02528:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0252c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02530:	08 9b       	B[P1] = R0;
ffa02532:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02534:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa02538:	13 91       	R3 = [P2];
ffa0253a:	d8 42       	R0 = R3.L (Z);
ffa0253c:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa02540:	63 67       	R3 += -0x14;		/* (-20) */
ffa02542:	40 4f       	R0 <<= 0x8;
ffa02544:	13 93       	[P2] = R3;
ffa02546:	41 56       	R1 = R1 | R0;
ffa02548:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cdc <_PHYregs> */
ffa0254c:	49 b4       	W[P1 + 0x2] = R1;
ffa0254e:	0a e1 26 0d 	P2.L = 0xd26;		/* (3366)	P2=0xff900d26 <_NetIPID> */
ffa02552:	10 95       	R0 = W[P2] (Z);
ffa02554:	08 30       	R1 = R0;
ffa02556:	09 64       	R1 += 0x1;		/* (  1) */
ffa02558:	11 97       	W[P2] = R1;
ffa0255a:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa0255e:	40 4f       	R0 <<= 0x8;
ffa02560:	41 56       	R1 = R1 | R0;
ffa02562:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa02566:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa0256a:	c8 b4       	W[P1 + 0x6] = R0;
ffa0256c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d26 <_NetIPID> */
ffa02570:	b8 e5 14 00 	R0 = B[FP + 0x14] (X);
ffa02574:	88 e6 09 00 	B[P1 + 0x9] = R0;
ffa02578:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa0257c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0257e:	41 32       	P0 = P1;
ffa02580:	48 b5       	W[P1 + 0xa] = R0;
ffa02582:	10 6c       	P0 += 0x2;		/* (  2) */
ffa02584:	10 91       	R0 = [P2];
ffa02586:	89 b4       	W[P1 + 0x4] = R1;
ffa02588:	c8 b0       	[P1 + 0xc] = R0;
ffa0258a:	09 95       	R1 = W[P1] (Z);
ffa0258c:	48 a4       	R0 = W[P1 + 0x2] (Z);
ffa0258e:	50 32       	P2 = P0;
ffa02590:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x2] (Z) || NOP;
ffa02594:	40 a4 00 00 
ffa02598:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0259a:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P2 + 0x2] (Z) || NOP;
ffa0259e:	50 a4 00 00 
ffa025a2:	20 6c       	P0 += 0x4;		/* (  4) */
ffa025a4:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x2] (Z) || NOP;
ffa025a8:	40 a4 00 00 
ffa025ac:	22 6c       	P2 += 0x4;		/* (  4) */
ffa025ae:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P2 + 0x2] (Z) || NOP;
ffa025b2:	50 a4 00 00 
ffa025b6:	20 6c       	P0 += 0x4;		/* (  4) */
ffa025b8:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x2] (Z) || NOP;
ffa025bc:	40 a4 00 00 
ffa025c0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa025c2:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P2 + 0x2] (Z) || NOP;
ffa025c6:	50 a4 00 00 
ffa025ca:	20 6c       	P0 += 0x4;		/* (  4) */
ffa025cc:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x2] (Z) || NOP;
ffa025d0:	40 a4 00 00 
ffa025d4:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x4] (Z) || NOP;
ffa025d8:	80 a4 00 00 
ffa025dc:	04 cc 01 00 	R0 = R0 + R1 (NS) || [P1 + 0x10] = R2 || NOP;
ffa025e0:	0a b1 00 00 
ffa025e4:	82 c6 80 83 	R1 = R0 >> 0x10;
ffa025e8:	08 50       	R0 = R0 + R1;
ffa025ea:	c0 42       	R0 = R0.L (Z);
ffa025ec:	c0 43       	R0 =~ R0;
ffa025ee:	48 b5       	W[P1 + 0xa] = R0;
ffa025f0:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa025f2:	41 30       	R0 = P1;
ffa025f4:	01 e8 00 00 	UNLINK;
ffa025f8:	10 00       	RTS;
	...

ffa025fc <_icmp_header_setup>:
ffa025fc:	10 32       	P2 = R0;
ffa025fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02600:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02604:	01 32       	P0 = R1;
ffa02606:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0260a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0260c:	50 b4       	W[P2 + 0x2] = R0;
ffa0260e:	b8 aa       	R0 = W[FP + 0x14] (X);
ffa02610:	90 b4       	W[P2 + 0x4] = R0;
ffa02612:	4a 32       	P1 = P2;
ffa02614:	38 ab       	R0 = W[FP + 0x18] (X);
ffa02616:	12 9b       	B[P2] = R2;
ffa02618:	d0 b4       	W[P2 + 0x6] = R0;
ffa0261a:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0261c:	48 a4       	R0 = W[P1 + 0x2] (Z);
ffa0261e:	11 95       	R1 = W[P2] (Z);
ffa02620:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P1 + 0x4] (Z) || NOP;
ffa02624:	88 a4 00 00 
ffa02628:	08 50       	R0 = R0 + R1;
ffa0262a:	c1 42       	R1 = R0.L (Z);
ffa0262c:	80 4e       	R0 >>= 0x10;
ffa0262e:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = [P0] || NOP;
ffa02632:	00 91 00 00 
ffa02636:	c9 43       	R1 =~ R1;
ffa02638:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0263a:	51 b4       	W[P2 + 0x2] = R1;
ffa0263c:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0263e:	00 93       	[P0] = R0;
ffa02640:	01 e8 00 00 	UNLINK;
ffa02644:	42 30       	R0 = P2;
ffa02646:	10 00       	RTS;

ffa02648 <_udp_header_setup>:
ffa02648:	10 32       	P2 = R0;
ffa0264a:	09 32       	P1 = R1;
ffa0264c:	d2 42       	R2 = R2.L (Z);
ffa0264e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02652:	82 ce c2 81 	R0 = R2 >> 0x8 || R1 = W[FP + 0x14] (Z) || NOP;
ffa02656:	b9 a6 00 00 
ffa0265a:	42 4f       	R2 <<= 0x8;
ffa0265c:	10 56       	R0 = R0 | R2;
ffa0265e:	10 97       	W[P2] = R0;
ffa02660:	82 ce c1 81 	R0 = R1 >> 0x8 || R2 = [P1] || NOP;
ffa02664:	0a 91 00 00 
ffa02668:	41 4f       	R1 <<= 0x8;
ffa0266a:	08 56       	R0 = R0 | R1;
ffa0266c:	50 b4       	W[P2 + 0x2] = R0;
ffa0266e:	d0 42       	R0 = R2.L (Z);
ffa02670:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa02674:	40 4f       	R0 <<= 0x8;
ffa02676:	41 56       	R1 = R1 | R0;
ffa02678:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0267a:	d0 b4       	W[P2 + 0x6] = R0;
ffa0267c:	91 b4       	W[P2 + 0x4] = R1;
ffa0267e:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02680:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa02682:	42 30       	R0 = P2;
ffa02684:	01 e8 00 00 	UNLINK;
ffa02688:	0a 93       	[P1] = R2;
ffa0268a:	10 00       	RTS;

ffa0268c <_DHCP_parse>:
ffa0268c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0268e:	09 0d       	CC = R1 <= 0x1;
ffa02690:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02694:	10 32       	P2 = R0;
ffa02696:	33 18       	IF CC JUMP 0xffa026fc <_DHCP_parse+0x70>;
ffa02698:	00 00       	NOP;
ffa0269a:	31 30       	R6 = R1;
ffa0269c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa0269e:	11 98       	R1 = B[P2++] (Z);
ffa026a0:	01 0c       	CC = R1 == 0x0;
ffa026a2:	2b 1c       	IF CC JUMP 0xffa026f8 <_DHCP_parse+0x6c> (BP);
ffa026a4:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa026a8:	01 08       	CC = R1 == R0;
ffa026aa:	57 99       	R7 = B[P2] (X);
ffa026ac:	28 18       	IF CC JUMP 0xffa026fc <_DHCP_parse+0x70>;
ffa026ae:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa026b0:	6a 32       	P5 = P2;
ffa026b2:	01 0a       	CC = R1 <= R0 (IU);
ffa026b4:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa026b6:	09 14       	IF !CC JUMP 0xffa026c8 <_DHCP_parse+0x3c> (BP);
ffa026b8:	09 32       	P1 = R1;
ffa026ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa026be:	0a e1 08 04 	P2.L = 0x408;		/* (1032)	P2=0xff900408 */
ffa026c2:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa026c4:	52 91       	P2 = [P2];
ffa026c6:	52 00       	JUMP (P2);
ffa026c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa026cc:	00 e1 ac 01 	R0.L = 0x1ac;		/* (428)	R0=0xff9001ac(-7339604) */
ffa026d0:	ff e3 8e f4 	CALL 0xffa00fec <_printf_int>;
ffa026d4:	7f 43       	R7 = R7.B (Z);
ffa026d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ac(-7339604) */
ffa026da:	00 e1 c0 01 	R0.L = 0x1c0;		/* (448)	R0=0xff9001c0(-7339584) */
ffa026de:	0f 30       	R1 = R7;
ffa026e0:	ff e3 86 f4 	CALL 0xffa00fec <_printf_int>;
ffa026e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c0(-7339584) */
ffa026e8:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa026ec:	ff e3 70 f5 	CALL 0xffa011cc <_printf_str>;
ffa026f0:	0f 32       	P1 = R7;
ffa026f2:	be 53       	R6 = R6 - R7;
ffa026f4:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa026f6:	8d 5a       	P2 = P5 + P1;
ffa026f8:	0e 0d       	CC = R6 <= 0x1;
ffa026fa:	d1 17       	IF !CC JUMP 0xffa0269c <_DHCP_parse+0x10> (BP);
ffa026fc:	01 e8 00 00 	UNLINK;
ffa02700:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02702:	10 00       	RTS;
ffa02704:	55 32       	P2 = P5;
ffa02706:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa0270a:	11 98       	R1 = B[P2++] (Z);
ffa0270c:	40 4f       	R0 <<= 0x8;
ffa0270e:	41 50       	R1 = R1 + R0;
ffa02710:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02714:	80 4f       	R0 <<= 0x10;
ffa02716:	41 50       	R1 = R1 + R0;
ffa02718:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa0271c:	c0 4f       	R0 <<= 0x18;
ffa0271e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900408 */
ffa02722:	41 50       	R1 = R1 + R0;
ffa02724:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_NetSubnetMask> */
ffa02728:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa0272c:	11 93       	[P2] = R1;
ffa0272e:	00 e1 04 01 	R0.L = 0x104;		/* (260)	R0=0xff900104(-7339772) */
ffa02732:	ff e3 a7 f5 	CALL 0xffa01280 <_printf_ip>;
ffa02736:	7f 43       	R7 = R7.B (Z);
ffa02738:	d6 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa0273a:	55 32       	P2 = P5;
ffa0273c:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa02740:	11 98       	R1 = B[P2++] (Z);
ffa02742:	40 4f       	R0 <<= 0x8;
ffa02744:	41 50       	R1 = R1 + R0;
ffa02746:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa0274a:	80 4f       	R0 <<= 0x10;
ffa0274c:	41 50       	R1 = R1 + R0;
ffa0274e:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02752:	c0 4f       	R0 <<= 0x18;
ffa02754:	41 50       	R1 = R1 + R0;
ffa02756:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900104(-7339772) */
ffa0275a:	00 e1 14 01 	R0.L = 0x114;		/* (276)	R0=0xff900114(-7339756) */
ffa0275e:	ff e3 91 f5 	CALL 0xffa01280 <_printf_ip>;
ffa02762:	7f 43       	R7 = R7.B (Z);
ffa02764:	c0 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa02766:	55 32       	P2 = P5;
ffa02768:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa0276c:	11 98       	R1 = B[P2++] (Z);
ffa0276e:	40 4f       	R0 <<= 0x8;
ffa02770:	41 50       	R1 = R1 + R0;
ffa02772:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02776:	80 4f       	R0 <<= 0x10;
ffa02778:	41 50       	R1 = R1 + R0;
ffa0277a:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa0277e:	c0 4f       	R0 <<= 0x18;
ffa02780:	41 50       	R1 = R1 + R0;
ffa02782:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900114(-7339756) */
ffa02786:	00 e1 24 01 	R0.L = 0x124;		/* (292)	R0=0xff900124(-7339740) */
ffa0278a:	ff e3 7b f5 	CALL 0xffa01280 <_printf_ip>;
ffa0278e:	7f 43       	R7 = R7.B (Z);
ffa02790:	aa 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa02792:	55 32       	P2 = P5;
ffa02794:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa02798:	11 98       	R1 = B[P2++] (Z);
ffa0279a:	40 4f       	R0 <<= 0x8;
ffa0279c:	41 50       	R1 = R1 + R0;
ffa0279e:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa027a2:	80 4f       	R0 <<= 0x10;
ffa027a4:	41 50       	R1 = R1 + R0;
ffa027a6:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa027aa:	c0 4f       	R0 <<= 0x18;
ffa027ac:	41 50       	R1 = R1 + R0;
ffa027ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900124(-7339740) */
ffa027b2:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa027b6:	ff e3 65 f5 	CALL 0xffa01280 <_printf_ip>;
ffa027ba:	7f 43       	R7 = R7.B (Z);
ffa027bc:	94 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa027be:	55 32       	P2 = P5;
ffa027c0:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa027c4:	12 98       	R2 = B[P2++] (Z);
ffa027c6:	40 4f       	R0 <<= 0x8;
ffa027c8:	82 50       	R2 = R2 + R0;
ffa027ca:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa027ce:	80 4f       	R0 <<= 0x10;
ffa027d0:	82 50       	R2 = R2 + R0;
ffa027d2:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa027d6:	c0 4f       	R0 <<= 0x18;
ffa027d8:	82 50       	R2 = R2 + R0;
ffa027da:	51 43       	R1 = R2.B (Z);
ffa027dc:	82 c6 c2 81 	R0 = R2 >> 0x8;
ffa027e0:	40 43       	R0 = R0.B (Z);
ffa027e2:	41 4f       	R1 <<= 0x8;
ffa027e4:	41 56       	R1 = R1 | R0;
ffa027e6:	82 c6 82 81 	R0 = R2 >> 0x10;
ffa027ea:	40 43       	R0 = R0.B (Z);
ffa027ec:	41 4f       	R1 <<= 0x8;
ffa027ee:	41 56       	R1 = R1 | R0;
ffa027f0:	c2 4e       	R2 >>= 0x18;
ffa027f2:	41 4f       	R1 <<= 0x8;
ffa027f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa027f8:	51 56       	R1 = R1 | R2;
ffa027fa:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa027fe:	ff e3 f7 f3 	CALL 0xffa00fec <_printf_int>;
ffa02802:	7f 43       	R7 = R7.B (Z);
ffa02804:	70 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa02806:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa0280a:	29 99       	R1 = B[P5] (Z);
ffa0280c:	00 e1 58 01 	R0.L = 0x158;		/* (344)	R0=0xff900158(-7339688) */
ffa02810:	ff e3 ee f3 	CALL 0xffa00fec <_printf_int>;
ffa02814:	7f 43       	R7 = R7.B (Z);
ffa02816:	67 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa02818:	55 32       	P2 = P5;
ffa0281a:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa0281e:	11 98       	R1 = B[P2++] (Z);
ffa02820:	40 4f       	R0 <<= 0x8;
ffa02822:	41 50       	R1 = R1 + R0;
ffa02824:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02828:	80 4f       	R0 <<= 0x10;
ffa0282a:	41 50       	R1 = R1 + R0;
ffa0282c:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02830:	c0 4f       	R0 <<= 0x18;
ffa02832:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_NetSubnetMask> */
ffa02836:	41 50       	R1 = R1 + R0;
ffa02838:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_NetDHCPserv> */
ffa0283c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900158(-7339688) */
ffa02840:	11 93       	[P2] = R1;
ffa02842:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa02846:	ff e3 1d f5 	CALL 0xffa01280 <_printf_ip>;
ffa0284a:	7f 43       	R7 = R7.B (Z);
ffa0284c:	4c 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa0284e:	55 32       	P2 = P5;
ffa02850:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa02854:	12 98       	R2 = B[P2++] (Z);
ffa02856:	40 4f       	R0 <<= 0x8;
ffa02858:	82 50       	R2 = R2 + R0;
ffa0285a:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa0285e:	80 4f       	R0 <<= 0x10;
ffa02860:	82 50       	R2 = R2 + R0;
ffa02862:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02866:	c0 4f       	R0 <<= 0x18;
ffa02868:	82 50       	R2 = R2 + R0;
ffa0286a:	51 43       	R1 = R2.B (Z);
ffa0286c:	82 c6 c2 81 	R0 = R2 >> 0x8;
ffa02870:	40 43       	R0 = R0.B (Z);
ffa02872:	41 4f       	R1 <<= 0x8;
ffa02874:	41 56       	R1 = R1 | R0;
ffa02876:	82 c6 82 81 	R0 = R2 >> 0x10;
ffa0287a:	40 43       	R0 = R0.B (Z);
ffa0287c:	41 4f       	R1 <<= 0x8;
ffa0287e:	41 56       	R1 = R1 | R0;
ffa02880:	c2 4e       	R2 >>= 0x18;
ffa02882:	41 4f       	R1 <<= 0x8;
ffa02884:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90016c(-7339668) */
ffa02888:	51 56       	R1 = R1 | R2;
ffa0288a:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa0288e:	ff e3 af f3 	CALL 0xffa00fec <_printf_int>;
ffa02892:	7f 43       	R7 = R7.B (Z);
ffa02894:	28 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
ffa02896:	55 32       	P2 = P5;
ffa02898:	a8 e4 01 00 	R0 = B[P5 + 0x1] (Z);
ffa0289c:	12 98       	R2 = B[P2++] (Z);
ffa0289e:	40 4f       	R0 <<= 0x8;
ffa028a0:	82 50       	R2 = R2 + R0;
ffa028a2:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa028a6:	80 4f       	R0 <<= 0x10;
ffa028a8:	82 50       	R2 = R2 + R0;
ffa028aa:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa028ae:	c0 4f       	R0 <<= 0x18;
ffa028b0:	82 50       	R2 = R2 + R0;
ffa028b2:	51 43       	R1 = R2.B (Z);
ffa028b4:	82 c6 c2 81 	R0 = R2 >> 0x8;
ffa028b8:	40 43       	R0 = R0.B (Z);
ffa028ba:	41 4f       	R1 <<= 0x8;
ffa028bc:	41 56       	R1 = R1 | R0;
ffa028be:	82 c6 82 81 	R0 = R2 >> 0x10;
ffa028c2:	40 43       	R0 = R0.B (Z);
ffa028c4:	41 4f       	R1 <<= 0x8;
ffa028c6:	41 56       	R1 = R1 | R0;
ffa028c8:	c2 4e       	R2 >>= 0x18;
ffa028ca:	41 4f       	R1 <<= 0x8;
ffa028cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa028d0:	51 56       	R1 = R1 | R2;
ffa028d2:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa028d6:	ff e3 8b f3 	CALL 0xffa00fec <_printf_int>;
ffa028da:	7f 43       	R7 = R7.B (Z);
ffa028dc:	04 2f       	JUMP.S 0xffa026e4 <_DHCP_parse+0x58>;
	...

ffa028e0 <_bfin_EMAC_send_nocopy>:
ffa028e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d20(-4190944) */
ffa028e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa028e8:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa028ec:	50 95       	R0 = W[P2] (X);
ffa028ee:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa028f0:	59 10       	IF !CC JUMP 0xffa029a2 <_bfin_EMAC_send_nocopy+0xc2>;
ffa028f2:	00 00       	NOP;
ffa028f4:	00 00       	NOP;
ffa028f6:	00 00       	NOP;
ffa028f8:	50 95       	R0 = W[P2] (X);
ffa028fa:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa028fc:	19 18       	IF CC JUMP 0xffa0292e <_bfin_EMAC_send_nocopy+0x4e>;
ffa028fe:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0000 */
ffa02902:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa02906:	b2 e0 09 10 	LSETUP(0xffa0290a <_bfin_EMAC_send_nocopy+0x2a>, 0xffa02918 <_bfin_EMAC_send_nocopy+0x38>) LC1 = P1;
ffa0290a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0290e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02912:	50 95       	R0 = W[P2] (X);
ffa02914:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02916:	0c 18       	IF CC JUMP 0xffa0292e <_bfin_EMAC_send_nocopy+0x4e>;
ffa02918:	00 00       	NOP;
ffa0291a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa0291e:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa02922:	ff e3 55 f4 	CALL 0xffa011cc <_printf_str>;
ffa02926:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02928:	01 e8 00 00 	UNLINK;
ffa0292c:	10 00       	RTS;
ffa0292e:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa02932:	08 e1 24 0d 	P0.L = 0xd24;		/* (3364)	P0=0xff900d24 <_txIdx> */
ffa02936:	00 95       	R0 = W[P0] (Z);
ffa02938:	10 32       	P2 = R0;
ffa0293a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa0293e:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa02942:	42 95       	R2 = W[P0] (X);
ffa02944:	d1 42       	R1 = R2.L (Z);
ffa02946:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02948:	52 91       	P2 = [P2];
ffa0294a:	11 0d       	CC = R1 <= 0x2;
ffa0294c:	90 a1       	R0 = [P2 + 0x18];
ffa0294e:	50 b0       	[P2 + 0x4] = R0;
ffa02950:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02952:	90 b2       	[P2 + 0x28] = R0;
ffa02954:	11 32       	P2 = R1;
ffa02956:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa02958:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0295c:	08 91       	R0 = [P1];
ffa0295e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02962:	10 93       	[P2] = R0;
ffa02964:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02968:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa0296c:	50 95       	R0 = W[P2] (X);
ffa0296e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa02972:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa02976:	10 97       	W[P2] = R0;
ffa02978:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa0297c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02980:	10 91       	R0 = [P2];
ffa02982:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02984:	10 93       	[P2] = R0;
ffa02986:	07 1c       	IF CC JUMP 0xffa02994 <_bfin_EMAC_send_nocopy+0xb4> (BP);
ffa02988:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0298a:	00 97       	W[P0] = R0;
ffa0298c:	01 e8 00 00 	UNLINK;
ffa02990:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02992:	10 00       	RTS;
ffa02994:	02 30       	R0 = R2;
ffa02996:	08 64       	R0 += 0x1;		/* (  1) */
ffa02998:	00 97       	W[P0] = R0;
ffa0299a:	01 e8 00 00 	UNLINK;
ffa0299e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029a0:	10 00       	RTS;
ffa029a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa029a6:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa029aa:	ff e3 11 f4 	CALL 0xffa011cc <_printf_str>;
ffa029ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029b0:	01 e8 00 00 	UNLINK;
ffa029b4:	10 00       	RTS;
	...

ffa029b8 <_bfin_EMAC_send>:
ffa029b8:	c4 04       	[--SP] = (P5:4);
ffa029ba:	01 0d       	CC = R1 <= 0x0;
ffa029bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa029c0:	18 30       	R3 = R0;
ffa029c2:	11 30       	R2 = R1;
ffa029c4:	90 18       	IF CC JUMP 0xffa02ae4 <_bfin_EMAC_send+0x12c>;
ffa029c6:	00 00       	NOP;
ffa029c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa029cc:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa029d0:	50 95       	R0 = W[P2] (X);
ffa029d2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa029d4:	74 10       	IF !CC JUMP 0xffa02abc <_bfin_EMAC_send+0x104>;
ffa029d6:	00 00       	NOP;
ffa029d8:	00 00       	NOP;
ffa029da:	00 00       	NOP;
ffa029dc:	50 95       	R0 = W[P2] (X);
ffa029de:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa029e0:	17 18       	IF CC JUMP 0xffa02a0e <_bfin_EMAC_send+0x56>;
ffa029e2:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d28 */
ffa029e6:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa029ea:	b2 e0 09 10 	LSETUP(0xffa029ee <_bfin_EMAC_send+0x36>, 0xffa029fc <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa029ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa029f2:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa029f6:	50 95       	R0 = W[P2] (X);
ffa029f8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa029fa:	0a 18       	IF CC JUMP 0xffa02a0e <_bfin_EMAC_send+0x56>;
ffa029fc:	00 00       	NOP;
ffa029fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a02:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa02a06:	ff e3 e3 f3 	CALL 0xffa011cc <_printf_str>;
ffa02a0a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02a0c:	53 20       	JUMP.S 0xffa02ab2 <_bfin_EMAC_send+0xfa>;
ffa02a0e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa02a12:	0c e1 24 0d 	P4.L = 0xd24;		/* (3364)	P4=0xff900d24 <_txIdx> */
ffa02a16:	20 95       	R0 = W[P4] (Z);
ffa02a18:	10 32       	P2 = R0;
ffa02a1a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cd4 <_printf_temp> */
ffa02a1e:	0d e1 28 0d 	P5.L = 0xd28;		/* (3368)	P5=0xff900d28 <_txbuf> */
ffa02a22:	0b 30       	R1 = R3;
ffa02a24:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02a26:	52 91       	P2 = [P2];
ffa02a28:	92 ad       	P2 = [P2 + 0x18];
ffa02a2a:	12 96       	W[P2++] = R2;
ffa02a2c:	42 30       	R0 = P2;
ffa02a2e:	ff e3 b9 f4 	CALL 0xffa013a0 <_memcpy_>;
ffa02a32:	20 95       	R0 = W[P4] (Z);
ffa02a34:	10 32       	P2 = R0;
ffa02a36:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02a38:	51 91       	P1 = [P2];
ffa02a3a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02a3e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02a42:	51 93       	[P2] = P1;
ffa02a44:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02a48:	88 a1       	R0 = [P1 + 0x18];
ffa02a4a:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa02a4e:	48 b0       	[P1 + 0x4] = R0;
ffa02a50:	50 95       	R0 = W[P2] (X);
ffa02a52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa02a56:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa02a5a:	10 97       	W[P2] = R0;
ffa02a5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02a60:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02a64:	10 91       	R0 = [P2];
ffa02a66:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02a68:	10 93       	[P2] = R0;
ffa02a6a:	88 a2       	R0 = [P1 + 0x28];
ffa02a6c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02a6e:	13 10       	IF !CC JUMP 0xffa02a94 <_bfin_EMAC_send+0xdc>;
ffa02a70:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa02a74:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa02a78:	b2 e0 05 20 	LSETUP(0xffa02a7c <_bfin_EMAC_send+0xc4>, 0xffa02a82 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa02a7c:	88 a2       	R0 = [P1 + 0x28];
ffa02a7e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02a80:	0a 10       	IF !CC JUMP 0xffa02a94 <_bfin_EMAC_send+0xdc>;
ffa02a82:	00 00       	NOP;
ffa02a84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900214(-7339500) */
ffa02a88:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa02a8c:	ff e3 a0 f3 	CALL 0xffa011cc <_printf_str>;
ffa02a90:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02a92:	10 20       	JUMP.S 0xffa02ab2 <_bfin_EMAC_send+0xfa>;
ffa02a94:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa02a98:	61 95 00 00 
ffa02a9c:	8a a2       	R2 = [P1 + 0x28];
ffa02a9e:	88 b2       	[P1 + 0x28] = R0;
ffa02aa0:	c8 42       	R0 = R1.L (Z);
ffa02aa2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa02aa6:	10 0d       	CC = R0 <= 0x2;
ffa02aa8:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa02aac:	14 1c       	IF CC JUMP 0xffa02ad4 <_bfin_EMAC_send+0x11c> (BP);
ffa02aae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ab0:	10 97       	W[P2] = R0;
ffa02ab2:	01 e8 00 00 	UNLINK;
ffa02ab6:	02 30       	R0 = R2;
ffa02ab8:	84 04       	(P5:4) = [SP++];
ffa02aba:	10 00       	RTS;
ffa02abc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ac0:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa02ac4:	ff e3 84 f3 	CALL 0xffa011cc <_printf_str>;
ffa02ac8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02aca:	01 e8 00 00 	UNLINK;
ffa02ace:	02 30       	R0 = R2;
ffa02ad0:	84 04       	(P5:4) = [SP++];
ffa02ad2:	10 00       	RTS;
ffa02ad4:	01 30       	R0 = R1;
ffa02ad6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ad8:	10 97       	W[P2] = R0;
ffa02ada:	01 e8 00 00 	UNLINK;
ffa02ade:	02 30       	R0 = R2;
ffa02ae0:	84 04       	(P5:4) = [SP++];
ffa02ae2:	10 00       	RTS;
ffa02ae4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c8(-7339576) */
ffa02ae8:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa02aec:	ff e3 80 f2 	CALL 0xffa00fec <_printf_int>;
ffa02af0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02af2:	01 e8 00 00 	UNLINK;
ffa02af6:	02 30       	R0 = R2;
ffa02af8:	84 04       	(P5:4) = [SP++];
ffa02afa:	10 00       	RTS;

ffa02afc <_eth_header_setup>:
ffa02afc:	c4 04       	[--SP] = (P5:4);
ffa02afe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa02b02:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b06:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa02b0a:	00 32       	P0 = R0;
ffa02b0c:	10 95       	R0 = W[P2] (Z);
ffa02b0e:	10 32       	P2 = R0;
ffa02b10:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02b14:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa02b18:	00 91       	R0 = [P0];
ffa02b1a:	21 32       	P4 = R1;
ffa02b1c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b1e:	52 91       	P2 = [P2];
ffa02b20:	08 30       	R1 = R0;
ffa02b22:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa02b24:	80 67       	R0 += -0x10;		/* (-16) */
ffa02b26:	95 ad       	P5 = [P2 + 0x18];
ffa02b28:	00 93       	[P0] = R0;
ffa02b2a:	02 30       	R0 = R2;
ffa02b2c:	55 32       	P2 = P5;
ffa02b2e:	11 96       	W[P2++] = R1;
ffa02b30:	4a 30       	R1 = P2;
ffa02b32:	00 e3 db 0d 	CALL 0xffa046e8 <_ARP_req>;
ffa02b36:	00 0c       	CC = R0 == 0x0;
ffa02b38:	27 18       	IF CC JUMP 0xffa02b86 <_eth_header_setup+0x8a>;
ffa02b3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa02b3e:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_NetOurMAC> */
ffa02b42:	4d 30       	R1 = P5;
ffa02b44:	50 99       	R0 = B[P2] (X);
ffa02b46:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02b4a:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02b4e:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02b52:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02b56:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02b5a:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02b5e:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa02b62:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa02b66:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02b6a:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02b6e:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02b72:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02b74:	e8 b5       	W[P5 + 0xe] = R0;
ffa02b76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b78:	20 9b       	B[P4] = R0;
ffa02b7a:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02b7c:	01 e8 00 00 	UNLINK;
ffa02b80:	01 30       	R0 = R1;
ffa02b82:	84 04       	(P5:4) = [SP++];
ffa02b84:	10 00       	RTS;
ffa02b86:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b88:	20 9b       	B[P4] = R0;
ffa02b8a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b8c:	01 e8 00 00 	UNLINK;
ffa02b90:	01 30       	R0 = R1;
ffa02b92:	84 04       	(P5:4) = [SP++];
ffa02b94:	10 00       	RTS;
	...

ffa02b98 <_SetupTxBuffer>:
ffa02b98:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02b9a:	38 30       	R7 = R0;
ffa02b9c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02ba0:	c7 40       	R7 *= R0;
ffa02ba2:	17 32       	P2 = R7;
ffa02ba4:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800d28 */
ffa02ba8:	0d e1 00 40 	P5.L = 0x4000;		/* (16384)	P5=0xff804000 */
ffa02bac:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02bb0:	00 e1 2c 40 	R0.L = 0x402c;		/* (16428)	R0=0xff80402c(-8372180) */
ffa02bb4:	6a 5b       	P5 = P2 + P5;
ffa02bb6:	c7 51       	R7 = R7 + R0;
ffa02bb8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02bbc:	45 30       	R0 = P5;
ffa02bbe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02bc0:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02bc2:	ff e3 ff f3 	CALL 0xffa013c0 <_memset_>;
ffa02bc6:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa02bca:	af b1 00 00 
ffa02bce:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02bd2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02bd6:	ff e3 f5 f3 	CALL 0xffa013c0 <_memset_>;
ffa02bda:	45 30       	R0 = P5;
ffa02bdc:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02bde:	28 93       	[P5] = R0;
ffa02be0:	a8 a1       	R0 = [P5 + 0x18];
ffa02be2:	68 b0       	[P5 + 0x4] = R0;
ffa02be4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02be8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02bea:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02bec:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa02bee:	10 54       	R0 = R0 & R2;
ffa02bf0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02bf2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02bf6:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02bf8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02bfc:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02bfe:	18 54       	R0 = R0 & R3;
ffa02c00:	08 56       	R0 = R0 | R1;
ffa02c02:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02c06:	08 56       	R0 = R0 | R1;
ffa02c08:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02c0c:	45 30       	R0 = P5;
ffa02c0e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02c10:	28 b1       	[P5 + 0x10] = R0;
ffa02c12:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02c16:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02c18:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02c1a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02c1e:	10 54       	R0 = R0 & R2;
ffa02c20:	08 56       	R0 = R0 | R1;
ffa02c22:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02c26:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02c2a:	18 54       	R0 = R0 & R3;
ffa02c2c:	39 64       	R1 += 0x7;		/* (  7) */
ffa02c2e:	08 54       	R0 = R0 & R1;
ffa02c30:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02c34:	ed bc       	[P5 + 0xc] = P5;
ffa02c36:	01 e8 00 00 	UNLINK;
ffa02c3a:	45 30       	R0 = P5;
ffa02c3c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02c3e:	10 00       	RTS;

ffa02c40 <_SetupRxBuffer>:
ffa02c40:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02c42:	38 30       	R7 = R0;
ffa02c44:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02c48:	c7 40       	R7 *= R0;
ffa02c4a:	17 32       	P2 = R7;
ffa02c4c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff804000 */
ffa02c50:	0d e1 00 20 	P5.L = 0x2000;		/* (8192)	P5=0xff802000 */
ffa02c54:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02c58:	00 e1 2c 20 	R0.L = 0x202c;		/* (8236)	R0=0xff80202c(-8380372) */
ffa02c5c:	6a 5b       	P5 = P2 + P5;
ffa02c5e:	c7 51       	R7 = R7 + R0;
ffa02c60:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c64:	45 30       	R0 = P5;
ffa02c66:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c68:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02c6a:	ff e3 ab f3 	CALL 0xffa013c0 <_memset_>;
ffa02c6e:	af b1       	[P5 + 0x18] = R7;
ffa02c70:	07 30       	R0 = R7;
ffa02c72:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02c76:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02c7a:	ff e3 a3 f3 	CALL 0xffa013c0 <_memset_>;
ffa02c7e:	45 30       	R0 = P5;
ffa02c80:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02c82:	28 93       	[P5] = R0;
ffa02c84:	a8 a1       	R0 = [P5 + 0x18];
ffa02c86:	68 b0       	[P5 + 0x4] = R0;
ffa02c88:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02c8c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02c8e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02c90:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02c92:	08 54       	R0 = R0 & R1;
ffa02c94:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02c96:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02c9a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa02c9c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02ca0:	38 54       	R0 = R0 & R7;
ffa02ca2:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02ca4:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02ca8:	18 56       	R0 = R0 | R3;
ffa02caa:	10 56       	R0 = R0 | R2;
ffa02cac:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02cb0:	45 30       	R0 = P5;
ffa02cb2:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02cb4:	28 b1       	[P5 + 0x10] = R0;
ffa02cb6:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02cba:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02cbc:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02cbe:	08 54       	R0 = R0 & R1;
ffa02cc0:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02cc4:	08 56       	R0 = R0 | R1;
ffa02cc6:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02cca:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02cce:	38 54       	R0 = R0 & R7;
ffa02cd0:	18 56       	R0 = R0 | R3;
ffa02cd2:	10 56       	R0 = R0 | R2;
ffa02cd4:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02cd8:	ed bc       	[P5 + 0xc] = P5;
ffa02cda:	01 e8 00 00 	UNLINK;
ffa02cde:	45 30       	R0 = P5;
ffa02ce0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02ce2:	10 00       	RTS;

ffa02ce4 <_SetupSystemRegs>:
ffa02ce4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02ce6:	20 32       	P4 = R0;
ffa02ce8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90202c(-7331796) */
ffa02cec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02cf0:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa02cf4:	ff e3 6c f2 	CALL 0xffa011cc <_printf_str>;
ffa02cf8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d4c(-4190900) */
ffa02cfc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02cfe:	0a e1 08 32 	P2.L = 0x3208;		/* (12808)	P2=0xffc03208(-4181496) */
ffa02d02:	10 97       	W[P2] = R0;
ffa02d04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03208(-4181496) */
ffa02d08:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02d0c:	50 95       	R0 = W[P2] (X);
ffa02d0e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02d10:	10 97       	W[P2] = R0;
ffa02d12:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02d16:	20 e1 06 13 	R0 = 0x1306 (X);		/*		R0=0x1306(4870) */
ffa02d1a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa02d1e:	10 93       	[P2] = R0;
ffa02d20:	02 20       	JUMP.S 0xffa02d24 <_SetupSystemRegs+0x40>;
ffa02d22:	00 00       	NOP;
ffa02d24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02d28:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d2c:	10 91       	R0 = [P2];
ffa02d2e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02d30:	f9 17       	IF !CC JUMP 0xffa02d22 <_SetupSystemRegs+0x3e> (BP);
ffa02d32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02d36:	20 e1 00 31 	R0 = 0x3100 (X);		/*		R0=0x3100(12544) */
ffa02d3a:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02d3e:	10 93       	[P2] = R0;
ffa02d40:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff902000 */
ffa02d44:	20 e1 0b 30 	R0 = 0x300b (X);		/*		R0=0x300b(12299) */
ffa02d48:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa02d4a:	10 93       	[P2] = R0;
ffa02d4c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02d4e:	0d e1 dc 0c 	P5.L = 0xcdc;		/* (3292)	P5=0xff900cdc <_PHYregs> */
ffa02d52:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02d56:	ff e3 61 f7 	CALL 0xffa01c18 <_udelay>;
ffa02d5a:	02 20       	JUMP.S 0xffa02d5e <_SetupSystemRegs+0x7a>;
ffa02d5c:	00 00       	NOP;
ffa02d5e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02d62:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d66:	10 91       	R0 = [P2];
ffa02d68:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02d6a:	f9 17       	IF !CC JUMP 0xffa02d5c <_SetupSystemRegs+0x78> (BP);
ffa02d6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02d70:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d74:	20 e1 49 30 	R0 = 0x3049 (X);		/*		R0=0x3049(12361) */
ffa02d78:	10 93       	[P2] = R0;
ffa02d7a:	10 91       	R0 = [P2];
ffa02d7c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02d7e:	0a 18       	IF CC JUMP 0xffa02d92 <_SetupSystemRegs+0xae>;
ffa02d80:	00 00       	NOP;
ffa02d82:	00 00       	NOP;
ffa02d84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02d88:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d8c:	10 91       	R0 = [P2];
ffa02d8e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02d90:	f9 17       	IF !CC JUMP 0xffa02d82 <_SetupSystemRegs+0x9e> (BP);
ffa02d92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02d96:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02d9a:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02d9e:	10 91       	R0 = [P2];
ffa02da0:	0f 08       	CC = R7 == R1;
ffa02da2:	68 b4       	W[P5 + 0x2] = R0;
ffa02da4:	53 18       	IF CC JUMP 0xffa02e4a <_SetupSystemRegs+0x166>;
ffa02da6:	10 48       	CC = !BITTST (R0, 0x2);		/* bit  2 */
ffa02da8:	04 10       	IF !CC JUMP 0xffa02db0 <_SetupSystemRegs+0xcc>;
ffa02daa:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02dac:	d3 2f       	JUMP.S 0xffa02d52 <_SetupSystemRegs+0x6e>;
ffa02dae:	00 00       	NOP;
ffa02db0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02db4:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02db8:	10 91       	R0 = [P2];
ffa02dba:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02dbc:	f9 17       	IF !CC JUMP 0xffa02dae <_SetupSystemRegs+0xca> (BP);
ffa02dbe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02dc2:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02dc6:	20 e1 49 31 	R0 = 0x3149 (X);		/*		R0=0x3149(12617) */
ffa02dca:	10 93       	[P2] = R0;
ffa02dcc:	10 91       	R0 = [P2];
ffa02dce:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02dd0:	0a 18       	IF CC JUMP 0xffa02de4 <_SetupSystemRegs+0x100>;
ffa02dd2:	00 00       	NOP;
ffa02dd4:	00 00       	NOP;
ffa02dd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02dda:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02dde:	10 91       	R0 = [P2];
ffa02de0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02de2:	f9 17       	IF !CC JUMP 0xffa02dd4 <_SetupSystemRegs+0xf0> (BP);
ffa02de4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02de8:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02dec:	10 91       	R0 = [P2];
ffa02dee:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02df2:	68 b5       	W[P5 + 0xa] = R0;
ffa02df4:	01 54       	R0 = R1 & R0;
ffa02df6:	00 0c       	CC = R0 == 0x0;
ffa02df8:	27 1c       	IF CC JUMP 0xffa02e46 <_SetupSystemRegs+0x162> (BP);
ffa02dfa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02dfc:	d0 4f       	R0 <<= 0x1a;
ffa02dfe:	20 93       	[P4] = R0;
ffa02e00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02e04:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02e06:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02e0a:	10 93       	[P2] = R0;
ffa02e0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa02e10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e12:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02e16:	10 97       	W[P2] = R0;
ffa02e18:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02e1a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02e1c:	11 97       	W[P2] = R1;
ffa02e1e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02e20:	10 97       	W[P2] = R0;
ffa02e22:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02e24:	10 97       	W[P2] = R0;
ffa02e26:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02e2a:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02e2e:	10 97       	W[P2] = R0;
ffa02e30:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02e32:	11 97       	W[P2] = R1;
ffa02e34:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02e36:	10 97       	W[P2] = R0;
ffa02e38:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02e3a:	10 97       	W[P2] = R0;
ffa02e3c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e3e:	01 e8 00 00 	UNLINK;
ffa02e42:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02e44:	10 00       	RTS;
ffa02e46:	20 93       	[P4] = R0;
ffa02e48:	dc 2f       	JUMP.S 0xffa02e00 <_SetupSystemRegs+0x11c>;
ffa02e4a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02e4e:	00 e1 58 02 	R0.L = 0x258;		/* (600)	R0=0xff900258(-7339432) */
ffa02e52:	ff e3 bd f1 	CALL 0xffa011cc <_printf_str>;
ffa02e56:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e58:	f3 2f       	JUMP.S 0xffa02e3e <_SetupSystemRegs+0x15a>;
	...

ffa02e5c <_SetupMacAddr>:
ffa02e5c:	10 32       	P2 = R0;
ffa02e5e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02e60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e62:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e66:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa02e6a:	10 9b       	B[P2] = R0;
ffa02e6c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02e6e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02e72:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02e74:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02e78:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa02e7a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02e7e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02e82:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02e86:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02e88:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02e8c:	10 99       	R0 = B[P2] (Z);
ffa02e8e:	08 56       	R0 = R0 | R1;
ffa02e90:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02e94:	89 4f       	R1 <<= 0x11;
ffa02e96:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00d28(-4190936) */
ffa02e9a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02e9e:	08 56       	R0 = R0 | R1;
ffa02ea0:	08 93       	[P1] = R0;
ffa02ea2:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02ea6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00cdc(-4191012) */
ffa02eaa:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa02eae:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02eb0:	28 93       	[P5] = R0;
ffa02eb2:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02eb6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa02eba:	09 91       	R1 = [P1];
ffa02ebc:	07 e1 e0 07 	R7.L = 0x7e0;		/* (2016)	R7=0xff9007e0(-7338016) */
ffa02ec0:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa02ec4:	ff e3 98 ef 	CALL 0xffa00df4 <_printf_hex>;
ffa02ec8:	07 30       	R0 = R7;
ffa02eca:	ff e3 81 f1 	CALL 0xffa011cc <_printf_str>;
ffa02ece:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90028c(-7339380) */
ffa02ed2:	29 91       	R1 = [P5];
ffa02ed4:	00 e1 98 02 	R0.L = 0x298;		/* (664)	R0=0xff900298(-7339368) */
ffa02ed8:	ff e3 8e ef 	CALL 0xffa00df4 <_printf_hex>;
ffa02edc:	01 e8 00 00 	UNLINK;
ffa02ee0:	07 30       	R0 = R7;
ffa02ee2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02ee4:	ff e2 74 f1 	JUMP.L 0xffa011cc <_printf_str>;

ffa02ee8 <_ip_header_checksum>:
ffa02ee8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02eec:	08 32       	P1 = R0;
ffa02eee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ef0:	a2 68       	P2 = 0x14 (X);		/*		P2=0x14( 20) */
ffa02ef2:	b2 e0 03 20 	LSETUP(0xffa02ef6 <_ip_header_checksum+0xe>, 0xffa02ef8 <_ip_header_checksum+0x10>) LC1 = P2;
ffa02ef6:	08 94       	R0 = W[P1++] (Z);
ffa02ef8:	41 50       	R1 = R1 + R0;
ffa02efa:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02efe:	01 50       	R0 = R1 + R0;
ffa02f00:	c0 42       	R0 = R0.L (Z);
ffa02f02:	08 02       	CC = R0;
ffa02f04:	00 02       	R0 = CC;
ffa02f06:	01 e8 00 00 	UNLINK;
ffa02f0a:	10 00       	RTS;

ffa02f0c <_tcp_header_setup>:
ffa02f0c:	08 32       	P1 = R0;
ffa02f0e:	78 05       	[--SP] = (R7:7);
ffa02f10:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa02f14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900014 */
ffa02f18:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f1c:	08 97       	W[P1] = R0;
ffa02f1e:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_TcpClientPort> */
ffa02f22:	50 95       	R0 = W[P2] (X);
ffa02f24:	bb a1       	R3 = [FP + 0x18];
ffa02f26:	01 32       	P0 = R1;
ffa02f28:	48 b4       	W[P1 + 0x2] = R0;
ffa02f2a:	59 43       	R1 = R3.B (Z);
ffa02f2c:	82 ce c3 81 	R0 = R3 >> 0x8 || R7 = [FP + 0x1c] || NOP;
ffa02f30:	ff a1 00 00 
ffa02f34:	40 43       	R0 = R0.B (Z);
ffa02f36:	41 4f       	R1 <<= 0x8;
ffa02f38:	41 56       	R1 = R1 | R0;
ffa02f3a:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa02f3e:	40 43       	R0 = R0.B (Z);
ffa02f40:	41 4f       	R1 <<= 0x8;
ffa02f42:	41 56       	R1 = R1 | R0;
ffa02f44:	41 4f       	R1 <<= 0x8;
ffa02f46:	c3 4e       	R3 >>= 0x18;
ffa02f48:	59 56       	R1 = R1 | R3;
ffa02f4a:	49 b0       	[P1 + 0x4] = R1;
ffa02f4c:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa02f50:	79 43       	R1 = R7.B (Z);
ffa02f52:	40 43       	R0 = R0.B (Z);
ffa02f54:	41 4f       	R1 <<= 0x8;
ffa02f56:	41 56       	R1 = R1 | R0;
ffa02f58:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa02f5c:	40 43       	R0 = R0.B (Z);
ffa02f5e:	41 4f       	R1 <<= 0x8;
ffa02f60:	41 56       	R1 = R1 | R0;
ffa02f62:	c7 4e       	R7 >>= 0x18;
ffa02f64:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa02f68:	41 4f       	R1 <<= 0x8;
ffa02f6a:	88 e6 0c 00 	B[P1 + 0xc] = R0;
ffa02f6e:	79 56       	R1 = R1 | R7;
ffa02f70:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f72:	89 b0       	[P1 + 0x8] = R1;
ffa02f74:	8a e6 0d 00 	B[P1 + 0xd] = R2;
ffa02f78:	c8 b5       	W[P1 + 0xe] = R0;
ffa02f7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f7c:	08 b6       	W[P1 + 0x10] = R0;
ffa02f7e:	48 b6       	W[P1 + 0x12] = R0;
ffa02f80:	00 91       	R0 = [P0];
ffa02f82:	60 67       	R0 += -0x14;		/* (-20) */
ffa02f84:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f86:	01 e8 00 00 	UNLINK;
ffa02f8a:	00 93       	[P0] = R0;
ffa02f8c:	38 05       	(R7:7) = [SP++];
ffa02f8e:	41 30       	R0 = P1;
ffa02f90:	10 00       	RTS;
	...

ffa02f94 <_SoftResetPHY>:
ffa02f94:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f98:	02 20       	JUMP.S 0xffa02f9c <_SoftResetPHY+0x8>;
ffa02f9a:	00 00       	NOP;
ffa02f9c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e48(-4190648) */
ffa02fa0:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02fa4:	10 91       	R0 = [P2];
ffa02fa6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02fa8:	f9 17       	IF !CC JUMP 0xffa02f9a <_SoftResetPHY+0x6> (BP);
ffa02faa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02fae:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa02fb2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02fb6:	10 93       	[P2] = R0;
ffa02fb8:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa02fba:	20 e1 0b 30 	R0 = 0x300b (X);		/*		R0=0x300b(12299) */
ffa02fbe:	10 93       	[P2] = R0;
ffa02fc0:	10 91       	R0 = [P2];
ffa02fc2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02fc4:	0a 18       	IF CC JUMP 0xffa02fd8 <_SoftResetPHY+0x44>;
ffa02fc6:	00 00       	NOP;
ffa02fc8:	00 00       	NOP;
ffa02fca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02fce:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02fd2:	10 91       	R0 = [P2];
ffa02fd4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02fd6:	f9 17       	IF !CC JUMP 0xffa02fc8 <_SoftResetPHY+0x34> (BP);
ffa02fd8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02fdc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fde:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02fe2:	10 93       	[P2] = R0;
ffa02fe4:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa02fe6:	20 e1 0b 30 	R0 = 0x300b (X);		/*		R0=0x300b(12299) */
ffa02fea:	10 93       	[P2] = R0;
ffa02fec:	4a 32       	P1 = P2;
ffa02fee:	00 00       	NOP;
ffa02ff0:	08 91       	R0 = [P1];
ffa02ff2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02ff4:	0a 18       	IF CC JUMP 0xffa03008 <_SoftResetPHY+0x74>;
ffa02ff6:	00 00       	NOP;
ffa02ff8:	00 00       	NOP;
ffa02ffa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02ffe:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa03002:	10 91       	R0 = [P2];
ffa03004:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03006:	f9 17       	IF !CC JUMP 0xffa02ff8 <_SoftResetPHY+0x64> (BP);
ffa03008:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0300c:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa03010:	20 e1 09 30 	R0 = 0x3009 (X);		/*		R0=0x3009(12297) */
ffa03014:	10 93       	[P2] = R0;
ffa03016:	10 91       	R0 = [P2];
ffa03018:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0301a:	0a 18       	IF CC JUMP 0xffa0302e <_SoftResetPHY+0x9a>;
ffa0301c:	00 00       	NOP;
ffa0301e:	00 00       	NOP;
ffa03020:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa03024:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa03028:	10 91       	R0 = [P2];
ffa0302a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0302c:	f9 17       	IF !CC JUMP 0xffa0301e <_SoftResetPHY+0x8a> (BP);
ffa0302e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa03032:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa03036:	10 91       	R0 = [P2];
ffa03038:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa0303a:	da 1f       	IF CC JUMP 0xffa02fee <_SoftResetPHY+0x5a> (BP);
ffa0303c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa03040:	0a e1 dc 0c 	P2.L = 0xcdc;		/* (3292)	P2=0xff900cdc <_PHYregs> */
ffa03044:	10 97       	W[P2] = R0;
ffa03046:	01 e8 00 00 	UNLINK;
ffa0304a:	10 00       	RTS;

ffa0304c <_icmp_packet_setup>:
ffa0304c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0304e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03052:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cdc <_PHYregs> */
ffa03056:	38 30       	R7 = R0;
ffa03058:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa0305c:	78 e5 1c 00 	R0 = W[FP + 0x38] (X);
ffa03060:	18 32       	P3 = R0;
ffa03062:	10 95       	R0 = W[P2] (Z);
ffa03064:	10 32       	P2 = R0;
ffa03066:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa0306a:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa0306e:	07 30       	R0 = R7;
ffa03070:	50 65       	R0 += 0x2a;		/* ( 42) */
ffa03072:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03074:	52 91       	P2 = [P2];
ffa03076:	bd e5 30 00 	R5 = B[FP + 0x30] (X);
ffa0307a:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0307e:	21 32       	P4 = R1;
ffa03080:	95 ad       	P5 = [P2 + 0x18];
ffa03082:	32 30       	R6 = R2;
ffa03084:	55 32       	P2 = P5;
ffa03086:	10 96       	W[P2++] = R0;
ffa03088:	4a 30       	R1 = P2;
ffa0308a:	02 30       	R0 = R2;
ffa0308c:	00 e3 2e 0b 	CALL 0xffa046e8 <_ARP_req>;
ffa03090:	00 0c       	CC = R0 == 0x0;
ffa03092:	96 18       	IF CC JUMP 0xffa031be <_icmp_packet_setup+0x172>;
ffa03094:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa03098:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_NetOurMAC> */
ffa0309c:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa0309e:	50 99       	R0 = B[P2] (X);
ffa030a0:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa030a4:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa030a8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa030ac:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa030b0:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa030b4:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa030b8:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa030bc:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa030c0:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa030c4:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa030c8:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa030cc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa030ce:	e8 b5       	W[P5 + 0xe] = R0;
ffa030d0:	e7 64       	R7 += 0x1c;		/* ( 28) */
ffa030d2:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa030d6:	22 9b       	B[P4] = R2;
ffa030d8:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa030dc:	f8 42       	R0 = R7.L (Z);
ffa030de:	4d 32       	P1 = P5;
ffa030e0:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa030e4:	40 4f       	R0 <<= 0x8;
ffa030e6:	81 6c       	P1 += 0x10;		/* ( 16) */
ffa030e8:	41 56       	R1 = R1 | R0;
ffa030ea:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa030ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_NetOurMAC> */
ffa030f0:	8b e6 01 00 	B[P1 + 0x1] = R3;
ffa030f4:	49 b4       	W[P1 + 0x2] = R1;
ffa030f6:	0a e1 26 0d 	P2.L = 0xd26;		/* (3366)	P2=0xff900d26 <_NetIPID> */
ffa030fa:	10 95       	R0 = W[P2] (Z);
ffa030fc:	08 30       	R1 = R0;
ffa030fe:	09 64       	R1 += 0x1;		/* (  1) */
ffa03100:	11 97       	W[P2] = R1;
ffa03102:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa03106:	40 4f       	R0 <<= 0x8;
ffa03108:	41 56       	R1 = R1 | R0;
ffa0310a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d26 <_NetIPID> */
ffa0310e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa03112:	8a e6 09 00 	B[P1 + 0x9] = R2;
ffa03116:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa0311a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0311c:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa03120:	c8 b4       	W[P1 + 0x6] = R0;
ffa03122:	89 b4       	W[P1 + 0x4] = R1;
ffa03124:	4a b5       	W[P1 + 0xa] = R2;
ffa03126:	10 91       	R0 = [P2];
ffa03128:	29 a6       	R1 = W[P5 + 0x10] (Z);
ffa0312a:	c8 b0       	[P1 + 0xc] = R0;
ffa0312c:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa0312e:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x14] (Z) || NOP;
ffa03132:	a8 a6 00 00 
ffa03136:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x16] (Z) || NOP;
ffa0313a:	e8 a6 00 00 
ffa0313e:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x18] (Z) || NOP;
ffa03142:	28 a7 00 00 
ffa03146:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1a] (Z) || NOP;
ffa0314a:	68 a7 00 00 
ffa0314e:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1c] (Z) || NOP;
ffa03152:	a8 a7 00 00 
ffa03156:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1e] (Z) || NOP;
ffa0315a:	e8 a7 00 00 
ffa0315e:	04 cc 08 02 	R1 = R1 + R0 (NS) || [P1 + 0x10] = R6 || NOP;
ffa03162:	0e b1 00 00 
ffa03166:	68 e4 10 00 	R0 = W[P5 + 0x20] (Z);
ffa0316a:	41 50       	R1 = R1 + R0;
ffa0316c:	68 e4 11 00 	R0 = W[P5 + 0x22] (Z);
ffa03170:	08 50       	R0 = R0 + R1;
ffa03172:	82 c6 80 83 	R1 = R0 >> 0x10;
ffa03176:	08 50       	R0 = R0 + R1;
ffa03178:	c0 42       	R0 = R0.L (Z);
ffa0317a:	c0 43       	R0 =~ R0;
ffa0317c:	55 32       	P2 = P5;
ffa0317e:	48 b5       	W[P1 + 0xa] = R0;
ffa03180:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03182:	43 30       	R0 = P3;
ffa03184:	52 b4       	W[P2 + 0x2] = R2;
ffa03186:	93 e6 01 00 	B[P2 + 0x1] = R3;
ffa0318a:	94 b4       	W[P2 + 0x4] = R4;
ffa0318c:	d0 b4       	W[P2 + 0x6] = R0;
ffa0318e:	ad e6 24 00 	B[P5 + 0x24] = R5;
ffa03192:	68 e4 13 00 	R0 = W[P5 + 0x26] (Z);
ffa03196:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa0319a:	41 50       	R1 = R1 + R0;
ffa0319c:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa031a0:	41 50       	R1 = R1 + R0;
ffa031a2:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa031a6:	08 50       	R0 = R0 + R1;
ffa031a8:	c1 42       	R1 = R0.L (Z);
ffa031aa:	80 4e       	R0 >>= 0x10;
ffa031ac:	41 50       	R1 = R1 + R0;
ffa031ae:	c9 43       	R1 =~ R1;
ffa031b0:	51 b4       	W[P2 + 0x2] = R1;
ffa031b2:	45 30       	R0 = P5;
ffa031b4:	01 e8 00 00 	UNLINK;
ffa031b8:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa031ba:	a3 05       	(R7:4, P5:3) = [SP++];
ffa031bc:	10 00       	RTS;
ffa031be:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa031c0:	20 9b       	B[P4] = R0;
ffa031c2:	01 e8 00 00 	UNLINK;
ffa031c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa031c8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa031ca:	10 00       	RTS;

ffa031cc <_udp_packet_setup>:
ffa031cc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa031ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa031d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031d6:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa031da:	19 32       	P3 = R1;
ffa031dc:	11 95       	R1 = W[P2] (Z);
ffa031de:	11 32       	P2 = R1;
ffa031e0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa031e4:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa031e8:	38 30       	R7 = R0;
ffa031ea:	0f 30       	R1 = R7;
ffa031ec:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031ee:	52 91       	P2 = [P2];
ffa031f0:	51 65       	R1 += 0x2a;		/* ( 42) */
ffa031f2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d24 <_txIdx> */
ffa031f6:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_NetDataDestIP> */
ffa031fa:	95 ad       	P5 = [P2 + 0x18];
ffa031fc:	20 91       	R0 = [P4];
ffa031fe:	55 32       	P2 = P5;
ffa03200:	11 96       	W[P2++] = R1;
ffa03202:	4a 30       	R1 = P2;
ffa03204:	00 e3 72 0a 	CALL 0xffa046e8 <_ARP_req>;
ffa03208:	00 0c       	CC = R0 == 0x0;
ffa0320a:	90 18       	IF CC JUMP 0xffa0332a <_udp_packet_setup+0x15e>;
ffa0320c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa03210:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_NetOurMAC> */
ffa03214:	4d 32       	P1 = P5;
ffa03216:	50 99       	R0 = B[P2] (X);
ffa03218:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0321c:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa03220:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa03224:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03228:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0322c:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03230:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa03234:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa03238:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0323c:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa03240:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa03244:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa03246:	e8 b5       	W[P5 + 0xe] = R0;
ffa03248:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0324a:	18 9b       	B[P3] = R0;
ffa0324c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa03250:	81 6c       	P1 += 0x10;		/* ( 16) */
ffa03252:	23 91       	R3 = [P4];
ffa03254:	e7 64       	R7 += 0x1c;		/* ( 28) */
ffa03256:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa0325a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0325c:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa03260:	f8 42       	R0 = R7.L (Z);
ffa03262:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa03266:	40 4f       	R0 <<= 0x8;
ffa03268:	41 56       	R1 = R1 | R0;
ffa0326a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_NetOurMAC> */
ffa0326e:	49 b4       	W[P1 + 0x2] = R1;
ffa03270:	0a e1 26 0d 	P2.L = 0xd26;		/* (3366)	P2=0xff900d26 <_NetIPID> */
ffa03274:	10 95       	R0 = W[P2] (Z);
ffa03276:	08 30       	R1 = R0;
ffa03278:	09 64       	R1 += 0x1;		/* (  1) */
ffa0327a:	11 97       	W[P2] = R1;
ffa0327c:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa03280:	40 4f       	R0 <<= 0x8;
ffa03282:	41 56       	R1 = R1 | R0;
ffa03284:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa03288:	88 e6 08 00 	B[P1 + 0x8] = R0;
ffa0328c:	c8 b4       	W[P1 + 0x6] = R0;
ffa0328e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d26 <_NetIPID> */
ffa03292:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03294:	88 e6 09 00 	B[P1 + 0x9] = R0;
ffa03298:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0329a:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa0329e:	89 b4       	W[P1 + 0x4] = R1;
ffa032a0:	4a b5       	W[P1 + 0xa] = R2;
ffa032a2:	10 91       	R0 = [P2];
ffa032a4:	29 a6       	R1 = W[P5 + 0x10] (Z);
ffa032a6:	c8 b0       	[P1 + 0xc] = R0;
ffa032a8:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa032aa:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x14] (Z) || NOP;
ffa032ae:	a8 a6 00 00 
ffa032b2:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x16] (Z) || NOP;
ffa032b6:	e8 a6 00 00 
ffa032ba:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x18] (Z) || NOP;
ffa032be:	28 a7 00 00 
ffa032c2:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1a] (Z) || NOP;
ffa032c6:	68 a7 00 00 
ffa032ca:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1c] (Z) || NOP;
ffa032ce:	a8 a7 00 00 
ffa032d2:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1e] (Z) || NOP;
ffa032d6:	e8 a7 00 00 
ffa032da:	04 cc 08 02 	R1 = R1 + R0 (NS) || [P1 + 0x10] = R3 || NOP;
ffa032de:	0b b1 00 00 
ffa032e2:	68 e4 10 00 	R0 = W[P5 + 0x20] (Z);
ffa032e6:	41 50       	R1 = R1 + R0;
ffa032e8:	68 e4 11 00 	R0 = W[P5 + 0x22] (Z);
ffa032ec:	08 50       	R0 = R0 + R1;
ffa032ee:	82 c6 80 83 	R1 = R0 >> 0x10;
ffa032f2:	08 50       	R0 = R0 + R1;
ffa032f4:	c0 42       	R0 = R0.L (Z);
ffa032f6:	c0 43       	R0 =~ R0;
ffa032f8:	48 b5       	W[P1 + 0xa] = R0;
ffa032fa:	55 32       	P2 = P5;
ffa032fc:	20 e1 10 f5 	R0 = -0xaf0 (X);		/*		R0=0xfffff510(-2800) */
ffa03300:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03302:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa03306:	67 67       	R7 += -0x14;		/* (-20) */
ffa03308:	20 e1 10 f4 	R0 = -0xbf0 (X);		/*		R0=0xfffff410(-3056) */
ffa0330c:	50 b4       	W[P2 + 0x2] = R0;
ffa0330e:	f8 42       	R0 = R7.L (Z);
ffa03310:	82 ce c0 83 	R1 = R0 >> 0x8 || W[P2 + 0x6] = R2 || NOP;
ffa03314:	d2 b4 00 00 
ffa03318:	40 4f       	R0 <<= 0x8;
ffa0331a:	41 56       	R1 = R1 | R0;
ffa0331c:	91 b4       	W[P2 + 0x4] = R1;
ffa0331e:	45 30       	R0 = P5;
ffa03320:	01 e8 00 00 	UNLINK;
ffa03324:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03326:	bb 05       	(R7:7, P5:3) = [SP++];
ffa03328:	10 00       	RTS;
ffa0332a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0332c:	18 9b       	B[P3] = R0;
ffa0332e:	01 e8 00 00 	UNLINK;
ffa03332:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03334:	bb 05       	(R7:7, P5:3) = [SP++];
ffa03336:	10 00       	RTS;

ffa03338 <_bfin_EMAC_init>:
ffa03338:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0333a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0333e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03342:	00 e1 a4 02 	R0.L = 0x2a4;		/* (676)	R0=0xff9002a4(-7339356) */
ffa03346:	ff e3 43 ef 	CALL 0xffa011cc <_printf_str>;
ffa0334a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa0334e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03350:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa03354:	11 97       	W[P2] = R1;
ffa03356:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa0335a:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_rxIdx> */
ffa0335e:	11 97       	W[P2] = R1;
ffa03360:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_rxIdx> */
ffa03364:	0a e1 26 0d 	P2.L = 0xd26;		/* (3366)	P2=0xff900d26 <_NetIPID> */
ffa03368:	11 97       	W[P2] = R1;
ffa0336a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d26 <_NetIPID> */
ffa0336e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03370:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_NetSubnetMask> */
ffa03374:	17 93       	[P2] = R7;
ffa03376:	40 e1 00 09 	R0.H = 0x900;		/* (2304)	R0=0x90002a4(150995620) */
ffa0337a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_NetSubnetMask> */
ffa0337e:	00 e1 c0 a8 	R0.L = 0xa8c0;		/* (-22336)	R0=0x900a8c0(151038144) */
ffa03382:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa03386:	10 93       	[P2] = R0;
ffa03388:	80 e1 c0 a8 	R0 = 0xa8c0 (Z);		/*		R0=0xa8c0(43200) */
ffa0338c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa03390:	c0 4a       	BITSET (R0, 0x18);		/* bit 24 */
ffa03392:	0a e1 1c 0d 	P2.L = 0xd1c;		/* (3356)	P2=0xff900d1c <_NetDestIP> */
ffa03396:	10 93       	[P2] = R0;
ffa03398:	80 e1 c0 a8 	R0 = 0xa8c0 (Z);		/*		R0=0xa8c0(43200) */
ffa0339c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d1c <_NetDestIP> */
ffa033a0:	c8 4a       	BITSET (R0, 0x19);		/* bit 25 */
ffa033a2:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_NetDataDestIP> */
ffa033a6:	10 93       	[P2] = R0;
ffa033a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_NetDataDestIP> */
ffa033ac:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa033b0:	17 93       	[P2] = R7;
ffa033b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa033b6:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa033ba:	17 93       	[P2] = R7;
ffa033bc:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9daa8c0(165324992) */
ffa033c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa033c4:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa033c8:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa033cc:	10 93       	[P2] = R0;
ffa033ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa033d2:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_TcpClientPort> */
ffa033d6:	11 97       	W[P2] = R1;
ffa033d8:	00 e3 42 06 	CALL 0xffa0405c <_ARP_init>;
ffa033dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e48(-4190648) */
ffa033e0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa033e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa033e8:	17 93       	[P2] = R7;
ffa033ea:	00 e1 4c 0d 	R0.L = 0xd4c;		/* (3404)	R0=0xff900d4c <_NetOurMAC>(-7336628) */
ffa033ee:	ff e3 37 fd 	CALL 0xffa02e5c <_SetupMacAddr>;
ffa033f2:	47 30       	R0 = FP;
ffa033f4:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa033f6:	ff e3 77 fc 	CALL 0xffa02ce4 <_SetupSystemRegs>;
ffa033fa:	80 0c       	CC = R0 < 0x0;
ffa033fc:	03 19       	IF CC JUMP 0xffa03602 <_bfin_EMAC_init+0x2ca>;
ffa033fe:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03400:	9b 6b       	P3 = -0xd (X);		/*		P3=0xfffffff3(-13) */
ffa03402:	84 63       	R4 = -0x10 (X);		/*		R4=0xfffffff0(-16) */
ffa03404:	2d 60       	R5 = 0x5 (X);		/*		R5=0x5(  5) */
ffa03406:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0340a:	01 20       	JUMP.S 0xffa0340c <_bfin_EMAC_init+0xd4>;
ffa0340c:	2d e1 3c 06 	P5 = 0x63c (X);		/*		P5=0x63c(1596) */
ffa03410:	45 30       	R0 = P5;
ffa03412:	f8 40       	R0 *= R7;
ffa03414:	28 32       	P5 = R0;
ffa03416:	20 e1 01 fc 	R0 = -0x3ff (X);		/*		R0=0xfffffc01(-1023) */
ffa0341a:	68 4f       	R0 <<= 0xd;
ffa0341c:	00 32       	P0 = R0;
ffa0341e:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03420:	08 32       	P1 = R0;
ffa03422:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03424:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa03426:	05 5b       	P4 = P5 + P0;
ffa03428:	44 30       	R0 = P4;
ffa0342a:	4d 5b       	P5 = P5 + P1;
ffa0342c:	ff e3 ca ef 	CALL 0xffa013c0 <_memset_>;
ffa03430:	45 30       	R0 = P5;
ffa03432:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa03436:	a5 bd       	[P4 + 0x18] = P5;
ffa03438:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0343c:	ff e3 c2 ef 	CALL 0xffa013c0 <_memset_>;
ffa03440:	44 30       	R0 = P4;
ffa03442:	60 64       	R0 += 0xc;		/* ( 12) */
ffa03444:	20 93       	[P4] = R0;
ffa03446:	a0 a1       	R0 = [P4 + 0x18];
ffa03448:	60 b0       	[P4 + 0x4] = R0;
ffa0344a:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa0344e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa03450:	4b 30       	R1 = P3;
ffa03452:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa03454:	08 54       	R0 = R0 & R1;
ffa03456:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa03458:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa0345c:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa03460:	04 54       	R0 = R4 & R0;
ffa03462:	28 56       	R0 = R0 | R5;
ffa03464:	30 56       	R0 = R0 | R6;
ffa03466:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0346a:	44 30       	R0 = P4;
ffa0346c:	20 65       	R0 += 0x24;		/* ( 36) */
ffa0346e:	20 b1       	[P4 + 0x10] = R0;
ffa03470:	a0 e5 14 00 	R0 = B[P4 + 0x14] (X);
ffa03474:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa03476:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa03478:	08 54       	R0 = R0 & R1;
ffa0347a:	07 32       	P0 = R7;
ffa0347c:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa03480:	08 56       	R0 = R0 | R1;
ffa03482:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03486:	a0 e5 15 00 	R0 = B[P4 + 0x15] (X);
ffa0348a:	04 54       	R0 = R4 & R0;
ffa0348c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa03490:	28 56       	R0 = R0 | R5;
ffa03492:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_rxbuf> */
ffa03496:	30 56       	R0 = R0 | R6;
ffa03498:	81 5e       	P2 = P1 + (P0 << 0x2);
ffa0349a:	07 0c       	CC = R7 == 0x0;
ffa0349c:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa034a0:	e4 bc       	[P4 + 0xc] = P4;
ffa034a2:	54 93       	[P2] = P4;
ffa034a4:	9b 1c       	IF CC JUMP 0xffa035da <_bfin_EMAC_init+0x2a2> (BP);
ffa034a6:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa034aa:	1f 0c       	CC = R7 == 0x3;
ffa034ac:	d4 bc       	[P2 + 0xc] = P4;
ffa034ae:	9d 18       	IF CC JUMP 0xffa035e8 <_bfin_EMAC_init+0x2b0>;
ffa034b0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa034b2:	1f 0d       	CC = R7 <= 0x3;
ffa034b4:	ac 1f       	IF CC JUMP 0xffa0340c <_bfin_EMAC_init+0xd4> (BP);
ffa034b6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90fff3 */
ffa034ba:	0b e1 28 0d 	P3.L = 0xd28;		/* (3368)	P3=0xff900d28 <_txbuf> */
ffa034be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa034c0:	9d 63       	R5 = -0xd (X);		/*		R5=0xfffffff3(-13) */
ffa034c2:	86 63       	R6 = -0x10 (X);		/*		R6=0xfffffff0(-16) */
ffa034c4:	63 30       	R4 = P3;
ffa034c6:	01 20       	JUMP.S 0xffa034c8 <_bfin_EMAC_init+0x190>;
ffa034c8:	2d e1 3c 06 	P5 = 0x63c (X);		/*		P5=0x63c(1596) */
ffa034cc:	45 30       	R0 = P5;
ffa034ce:	f8 40       	R0 *= R7;
ffa034d0:	28 32       	P5 = R0;
ffa034d2:	20 e1 01 fe 	R0 = -0x1ff (X);		/*		R0=0xfffffe01(-511) */
ffa034d6:	70 4f       	R0 <<= 0xe;
ffa034d8:	00 32       	P0 = R0;
ffa034da:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa034dc:	08 32       	P1 = R0;
ffa034de:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa034e0:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa034e2:	05 5b       	P4 = P5 + P0;
ffa034e4:	44 30       	R0 = P4;
ffa034e6:	4d 5b       	P5 = P5 + P1;
ffa034e8:	ff e3 6c ef 	CALL 0xffa013c0 <_memset_>;
ffa034ec:	45 30       	R0 = P5;
ffa034ee:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa034f2:	a5 bd       	[P4 + 0x18] = P5;
ffa034f4:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa034f8:	ff e3 64 ef 	CALL 0xffa013c0 <_memset_>;
ffa034fc:	44 30       	R0 = P4;
ffa034fe:	60 64       	R0 += 0xc;		/* ( 12) */
ffa03500:	20 93       	[P4] = R0;
ffa03502:	a0 a1       	R0 = [P4 + 0x18];
ffa03504:	60 b0       	[P4 + 0x4] = R0;
ffa03506:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa0350a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0350c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0350e:	28 54       	R0 = R0 & R5;
ffa03510:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa03512:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa03516:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa0351a:	06 54       	R0 = R6 & R0;
ffa0351c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0351e:	08 56       	R0 = R0 | R1;
ffa03520:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa03524:	08 56       	R0 = R0 | R1;
ffa03526:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0352a:	44 30       	R0 = P4;
ffa0352c:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0352e:	20 b1       	[P4 + 0x10] = R0;
ffa03530:	a0 e5 14 00 	R0 = B[P4 + 0x14] (X);
ffa03534:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa03536:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa03538:	07 32       	P0 = R7;
ffa0353a:	28 54       	R0 = R0 & R5;
ffa0353c:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa03540:	08 56       	R0 = R0 | R1;
ffa03542:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03546:	a0 e5 15 00 	R0 = B[P4 + 0x15] (X);
ffa0354a:	06 54       	R0 = R6 & R0;
ffa0354c:	39 64       	R1 += 0x7;		/* (  7) */
ffa0354e:	08 54       	R0 = R0 & R1;
ffa03550:	83 5e       	P2 = P3 + (P0 << 0x2);
ffa03552:	07 0c       	CC = R7 == 0x0;
ffa03554:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03558:	e4 bc       	[P4 + 0xc] = P4;
ffa0355a:	54 93       	[P2] = P4;
ffa0355c:	3d 1c       	IF CC JUMP 0xffa035d6 <_bfin_EMAC_init+0x29e> (BP);
ffa0355e:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa03562:	1f 0c       	CC = R7 == 0x3;
ffa03564:	d4 bc       	[P2 + 0xc] = P4;
ffa03566:	3c 18       	IF CC JUMP 0xffa035de <_bfin_EMAC_init+0x2a6>;
ffa03568:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0356a:	1f 0d       	CC = R7 <= 0x3;
ffa0356c:	ae 1f       	IF CC JUMP 0xffa034c8 <_bfin_EMAC_init+0x190> (BP);
ffa0356e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa03572:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_rxbuf> */
ffa03576:	51 91       	P1 = [P2];
ffa03578:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d3c(-4190916) */
ffa0357c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa03580:	51 93       	[P2] = P1;
ffa03582:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa03584:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03586:	10 97       	W[P2] = R0;
ffa03588:	02 20       	JUMP.S 0xffa0358c <_bfin_EMAC_init+0x254>;
ffa0358a:	00 00       	NOP;
ffa0358c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa03590:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa03594:	10 91       	R0 = [P2];
ffa03596:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03598:	f9 17       	IF !CC JUMP 0xffa0358a <_bfin_EMAC_init+0x252> (BP);
ffa0359a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0359c:	f0 b9       	R0 = [FP -0x4];
ffa0359e:	d1 4f       	R1 <<= 0x1a;
ffa035a0:	08 08       	CC = R0 == R1;
ffa035a2:	2b 18       	IF CC JUMP 0xffa035f8 <_bfin_EMAC_init+0x2c0>;
ffa035a4:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa035a8:	01 30       	R0 = R1;
ffa035aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa035ae:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa035b2:	10 93       	[P2] = R0;
ffa035b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fe01(-7275007) */
ffa035b8:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa035bc:	ff e3 1c ec 	CALL 0xffa00df4 <_printf_hex>;
ffa035c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002b4(-7339340) */
ffa035c4:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa035c8:	ff e3 02 ee 	CALL 0xffa011cc <_printf_str>;
ffa035cc:	01 e8 00 00 	UNLINK;
ffa035d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035d2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa035d4:	10 00       	RTS;
ffa035d6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa035d8:	78 2f       	JUMP.S 0xffa034c8 <_bfin_EMAC_init+0x190>;
ffa035da:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa035dc:	18 2f       	JUMP.S 0xffa0340c <_bfin_EMAC_init+0xd4>;
ffa035de:	0c 32       	P1 = R4;
ffa035e0:	ca ac       	P2 = [P1 + 0xc];
ffa035e2:	08 91       	R0 = [P1];
ffa035e4:	d0 b0       	[P2 + 0xc] = R0;
ffa035e6:	c4 2f       	JUMP.S 0xffa0356e <_bfin_EMAC_init+0x236>;
ffa035e8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900d24 <_txIdx> */
ffa035ec:	08 e1 3c 0d 	P0.L = 0xd3c;		/* (3388)	P0=0xff900d3c <_rxbuf> */
ffa035f0:	c2 ac       	P2 = [P0 + 0xc];
ffa035f2:	00 91       	R0 = [P0];
ffa035f4:	d0 b0       	[P2 + 0xc] = R0;
ffa035f6:	60 2f       	JUMP.S 0xffa034b6 <_bfin_EMAC_init+0x17e>;
ffa035f8:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa035fc:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa035fe:	01 30       	R0 = R1;
ffa03600:	d5 2f       	JUMP.S 0xffa035aa <_bfin_EMAC_init+0x272>;
ffa03602:	01 e8 00 00 	UNLINK;
ffa03606:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03608:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0360a:	10 00       	RTS;

ffa0360c <_ether_testUDP>:
ffa0360c:	c3 04       	[--SP] = (P5:3);
ffa0360e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d5c <_NetDataDestIP> */
ffa03612:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03616:	0c e1 24 0d 	P4.L = 0xd24;		/* (3364)	P4=0xff900d24 <_txIdx> */
ffa0361a:	21 95       	R1 = W[P4] (Z);
ffa0361c:	11 32       	P2 = R1;
ffa0361e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d28 <_txbuf> */
ffa03622:	0b e1 28 0d 	P3.L = 0xd28;		/* (3368)	P3=0xff900d28 <_txbuf> */
ffa03626:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa0362a:	93 5e       	P2 = P3 + (P2 << 0x2);
ffa0362c:	52 91       	P2 = [P2];
ffa0362e:	95 ad       	P5 = [P2 + 0x18];
ffa03630:	55 32       	P2 = P5;
ffa03632:	11 96       	W[P2++] = R1;
ffa03634:	4a 30       	R1 = P2;
ffa03636:	00 e3 59 08 	CALL 0xffa046e8 <_ARP_req>;
ffa0363a:	00 0c       	CC = R0 == 0x0;
ffa0363c:	e6 18       	IF CC JUMP 0xffa03808 <_ether_testUDP+0x1fc>;
ffa0363e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa03642:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_NetOurMAC> */
ffa03646:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa03648:	50 99       	R0 = B[P2] (X);
ffa0364a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0364e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa03652:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa03656:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0365a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0365e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03662:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa03666:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0366a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0366e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa03672:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa03676:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa03678:	e8 b5       	W[P5 + 0xe] = R0;
ffa0367a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0367e:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa03682:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03684:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa03688:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_NetOurMAC> */
ffa0368c:	20 e1 00 32 	R0 = 0x3200 (X);		/*		R0=0x3200(12800) */
ffa03690:	68 b6       	W[P5 + 0x12] = R0;
ffa03692:	0a e1 26 0d 	P2.L = 0xd26;		/* (3366)	P2=0xff900d26 <_NetIPID> */
ffa03696:	10 95       	R0 = W[P2] (Z);
ffa03698:	08 30       	R1 = R0;
ffa0369a:	82 c6 c0 85 	R2 = R0 >> 0x8;
ffa0369e:	40 4f       	R0 <<= 0x8;
ffa036a0:	82 56       	R2 = R2 | R0;
ffa036a2:	09 64       	R1 += 0x1;		/* (  1) */
ffa036a4:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa036a8:	11 97       	W[P2] = R1;
ffa036aa:	e8 b6       	W[P5 + 0x16] = R0;
ffa036ac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa036ae:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa036b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d26 <_NetIPID> */
ffa036b6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa036b8:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa036bc:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa036c0:	10 91       	R0 = [P2];
ffa036c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa036c6:	e8 b1       	[P5 + 0x1c] = R0;
ffa036c8:	0a e1 1c 0d 	P2.L = 0xd1c;		/* (3356)	P2=0xff900d1c <_NetDestIP> */
ffa036cc:	10 91       	R0 = [P2];
ffa036ce:	28 b2       	[P5 + 0x20] = R0;
ffa036d0:	29 a6       	R1 = W[P5 + 0x10] (Z);
ffa036d2:	20 e1 00 32 	R0 = 0x3200 (X);		/*		R0=0x3200(12800) */
ffa036d6:	aa b6       	W[P5 + 0x14] = R2;
ffa036d8:	41 50       	R1 = R1 + R0;
ffa036da:	d2 42       	R2 = R2.L (Z);
ffa036dc:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa036e0:	51 50       	R1 = R1 + R2;
ffa036e2:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x18] (Z) || NOP;
ffa036e6:	28 a7 00 00 
ffa036ea:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1c] (Z) || NOP;
ffa036ee:	a8 a7 00 00 
ffa036f2:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P5 + 0x1e] (Z) || NOP;
ffa036f6:	e8 a7 00 00 
ffa036fa:	41 50       	R1 = R1 + R0;
ffa036fc:	68 e4 10 00 	R0 = W[P5 + 0x20] (Z);
ffa03700:	41 50       	R1 = R1 + R0;
ffa03702:	68 e4 11 00 	R0 = W[P5 + 0x22] (Z);
ffa03706:	08 50       	R0 = R0 + R1;
ffa03708:	82 c6 80 83 	R1 = R0 >> 0x10;
ffa0370c:	08 50       	R0 = R0 + R1;
ffa0370e:	c0 42       	R0 = R0.L (Z);
ffa03710:	c0 43       	R0 =~ R0;
ffa03712:	68 b7       	W[P5 + 0x1a] = R0;
ffa03714:	20 e1 10 f5 	R0 = -0xaf0 (X);		/*		R0=0xfffff510(-2800) */
ffa03718:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0371c:	20 e1 09 64 	R0 = 0x6409 (X);		/*		R0=0x6409(25609) */
ffa03720:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa03724:	20 e1 00 1e 	R0 = 0x1e00 (X);		/*		R0=0x1e00(7680) */
ffa03728:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0372c:	55 32       	P2 = P5;
ffa0372e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03730:	68 e6 15 00 	W[P5 + 0x2a] = R0;
ffa03734:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa03736:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03738:	b2 e0 03 10 	LSETUP(0xffa0373c <_ether_testUDP+0x130>, 0xffa0373e <_ether_testUDP+0x132>) LC1 = P1;
ffa0373c:	11 9a       	B[P2++] = R1;
ffa0373e:	09 64       	R1 += 0x1;		/* (  1) */
ffa03740:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03744:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa03748:	ff e3 42 ed 	CALL 0xffa011cc <_printf_str>;
ffa0374c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d1c(-4190948) */
ffa03750:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa03754:	50 95       	R0 = W[P2] (X);
ffa03756:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03758:	1d 10       	IF !CC JUMP 0xffa03792 <_ether_testUDP+0x186>;
ffa0375a:	00 00       	NOP;
ffa0375c:	00 00       	NOP;
ffa0375e:	00 00       	NOP;
ffa03760:	50 95       	R0 = W[P2] (X);
ffa03762:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa03764:	22 18       	IF CC JUMP 0xffa037a8 <_ether_testUDP+0x19c>;
ffa03766:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0016 */
ffa0376a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa0376e:	b2 e0 09 10 	LSETUP(0xffa03772 <_ether_testUDP+0x166>, 0xffa03780 <_ether_testUDP+0x174>) LC1 = P1;
ffa03772:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa03776:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0377a:	50 95       	R0 = W[P2] (X);
ffa0377c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0377e:	15 18       	IF CC JUMP 0xffa037a8 <_ether_testUDP+0x19c>;
ffa03780:	00 00       	NOP;
ffa03782:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa03786:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa0378a:	ff e3 21 ed 	CALL 0xffa011cc <_printf_str>;
ffa0378e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03790:	08 20       	JUMP.S 0xffa037a0 <_ether_testUDP+0x194>;
ffa03792:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03796:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa0379a:	ff e3 19 ed 	CALL 0xffa011cc <_printf_str>;
ffa0379e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037a0:	01 e8 00 00 	UNLINK;
ffa037a4:	83 04       	(P5:3) = [SP++];
ffa037a6:	10 00       	RTS;
ffa037a8:	20 95       	R0 = W[P4] (Z);
ffa037aa:	10 32       	P2 = R0;
ffa037ac:	62 95       	R2 = W[P4] (X);
ffa037ae:	d1 42       	R1 = R2.L (Z);
ffa037b0:	01 32       	P0 = R1;
ffa037b2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa037b6:	93 5e       	P2 = P3 + (P2 << 0x2);
ffa037b8:	52 91       	P2 = [P2];
ffa037ba:	11 0d       	CC = R1 <= 0x2;
ffa037bc:	09 e1 24 0d 	P1.L = 0xd24;		/* (3364)	P1=0xff900d24 <_txIdx> */
ffa037c0:	90 a1       	R0 = [P2 + 0x18];
ffa037c2:	50 b0       	[P2 + 0x4] = R0;
ffa037c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037c6:	90 b2       	[P2 + 0x28] = R0;
ffa037c8:	83 5e       	P2 = P3 + (P0 << 0x2);
ffa037ca:	10 91       	R0 = [P2];
ffa037cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa037d0:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa037d4:	10 93       	[P2] = R0;
ffa037d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa037da:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa037de:	50 95       	R0 = W[P2] (X);
ffa037e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa037e4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa037e8:	10 97       	W[P2] = R0;
ffa037ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa037ee:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa037f2:	10 91       	R0 = [P2];
ffa037f4:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa037f6:	10 93       	[P2] = R0;
ffa037f8:	0d 1c       	IF CC JUMP 0xffa03812 <_ether_testUDP+0x206> (BP);
ffa037fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037fc:	08 97       	W[P1] = R0;
ffa037fe:	01 e8 00 00 	UNLINK;
ffa03802:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03804:	83 04       	(P5:3) = [SP++];
ffa03806:	10 00       	RTS;
ffa03808:	01 e8 00 00 	UNLINK;
ffa0380c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0380e:	83 04       	(P5:3) = [SP++];
ffa03810:	10 00       	RTS;
ffa03812:	02 30       	R0 = R2;
ffa03814:	08 64       	R0 += 0x1;		/* (  1) */
ffa03816:	08 97       	W[P1] = R0;
ffa03818:	01 e8 00 00 	UNLINK;
ffa0381c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0381e:	83 04       	(P5:3) = [SP++];
ffa03820:	10 00       	RTS;
	...

ffa03824 <_DHCP_tx>:
ffa03824:	e4 05       	[--SP] = (R7:4, P5:4);
ffa03826:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d24 <_txIdx> */
ffa0382a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0382e:	0c e1 24 0d 	P4.L = 0xd24;		/* (3364)	P4=0xff900d24 <_txIdx> */
ffa03832:	00 34       	I0 = R0;
ffa03834:	20 95       	R0 = W[P4] (Z);
ffa03836:	10 32       	P2 = R0;
ffa03838:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90063c */
ffa0383c:	0d e1 28 0d 	P5.L = 0xd28;		/* (3368)	P5=0xff900d28 <_txbuf> */
ffa03840:	09 34       	I1 = R1;
ffa03842:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa03846:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa03848:	52 91       	P2 = [P2];
ffa0384a:	88 30       	R1 = I0;
ffa0384c:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa0384e:	01 50       	R0 = R1 + R0;
ffa03850:	90 ad       	P0 = [P2 + 0x18];
ffa03852:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d24 <_txIdx> */
ffa03856:	09 e1 4c 0d 	P1.L = 0xd4c;		/* (3404)	P1=0xff900d4c <_NetOurMAC> */
ffa0385a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa0385e:	83 e6 02 00 	B[P0 + 0x2] = R3;
ffa03862:	83 e6 03 00 	B[P0 + 0x3] = R3;
ffa03866:	83 e6 04 00 	B[P0 + 0x4] = R3;
ffa0386a:	83 e6 05 00 	B[P0 + 0x5] = R3;
ffa0386e:	83 e6 06 00 	B[P0 + 0x6] = R3;
ffa03872:	83 e6 07 00 	B[P0 + 0x7] = R3;
ffa03876:	00 97       	W[P0] = R0;
ffa03878:	48 99       	R0 = B[P1] (X);
ffa0387a:	80 e6 08 00 	B[P0 + 0x8] = R0;
ffa0387e:	88 e5 01 00 	R0 = B[P1 + 0x1] (X);
ffa03882:	80 e6 09 00 	B[P0 + 0x9] = R0;
ffa03886:	88 e5 02 00 	R0 = B[P1 + 0x2] (X);
ffa0388a:	80 e6 0a 00 	B[P0 + 0xa] = R0;
ffa0388e:	88 e5 03 00 	R0 = B[P1 + 0x3] (X);
ffa03892:	80 e6 0b 00 	B[P0 + 0xb] = R0;
ffa03896:	88 e5 04 00 	R0 = B[P1 + 0x4] (X);
ffa0389a:	80 e6 0c 00 	B[P0 + 0xc] = R0;
ffa0389e:	88 e5 05 00 	R0 = B[P1 + 0x5] (X);
ffa038a2:	80 e6 0d 00 	B[P0 + 0xd] = R0;
ffa038a6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa038a8:	c0 b5       	W[P0 + 0xe] = R0;
ffa038aa:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa038ae:	80 e6 10 00 	B[P0 + 0x10] = R0;
ffa038b2:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa038b6:	01 50       	R0 = R1 + R0;
ffa038b8:	c0 42       	R0 = R0.L (Z);
ffa038ba:	82 c6 c0 8d 	R6 = R0 >> 0x8;
ffa038be:	40 4f       	R0 <<= 0x8;
ffa038c0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa038c2:	86 57       	R6 = R6 | R0;
ffa038c4:	0a e1 26 0d 	P2.L = 0xd26;		/* (3366)	P2=0xff900d26 <_NetIPID> */
ffa038c8:	85 e6 11 00 	B[P0 + 0x11] = R5;
ffa038cc:	46 b6       	W[P0 + 0x12] = R6;
ffa038ce:	10 95       	R0 = W[P2] (Z);
ffa038d0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P0 + 0x20] = R2 || NOP;
ffa038d4:	02 b2 00 00 
ffa038d8:	09 64       	R1 += 0x1;		/* (  1) */
ffa038da:	11 97       	W[P2] = R1;
ffa038dc:	82 ce c0 8f 	R7 = R0 >> 0x8 || R1 = W[P0 + 0x10] (Z) || NOP;
ffa038e0:	01 a6 00 00 
ffa038e4:	40 4f       	R0 <<= 0x8;
ffa038e6:	c7 57       	R7 = R7 | R0;
ffa038e8:	f6 42       	R6 = R6.L (Z);
ffa038ea:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa038ee:	87 b6       	W[P0 + 0x14] = R7;
ffa038f0:	c0 b6       	W[P0 + 0x16] = R0;
ffa038f2:	71 50       	R1 = R1 + R6;
ffa038f4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa038f6:	ff 42       	R7 = R7.L (Z);
ffa038f8:	83 e6 18 00 	B[P0 + 0x18] = R3;
ffa038fc:	80 e6 19 00 	B[P0 + 0x19] = R0;
ffa03900:	79 50       	R1 = R1 + R7;
ffa03902:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa03906:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x18] (Z) || NOP;
ffa0390a:	00 a7 00 00 
ffa0390e:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x1c] (Z) || NOP;
ffa03912:	80 a7 00 00 
ffa03916:	04 cc 08 02 	R1 = R1 + R0 (NS) || R0 = W[P0 + 0x1e] (Z) || NOP;
ffa0391a:	c0 a7 00 00 
ffa0391e:	41 50       	R1 = R1 + R0;
ffa03920:	40 e4 10 00 	R0 = W[P0 + 0x20] (Z);
ffa03924:	41 50       	R1 = R1 + R0;
ffa03926:	40 e4 11 00 	R0 = W[P0 + 0x22] (Z);
ffa0392a:	08 50       	R0 = R0 + R1;
ffa0392c:	82 c6 80 83 	R1 = R0 >> 0x10;
ffa03930:	08 50       	R0 = R0 + R1;
ffa03932:	c0 42       	R0 = R0.L (Z);
ffa03934:	c0 43       	R0 =~ R0;
ffa03936:	40 b7       	W[P0 + 0x1a] = R0;
ffa03938:	20 e1 00 44 	R0 = 0x4400 (X);		/*		R0=0x4400(17408) */
ffa0393c:	40 e6 12 00 	W[P0 + 0x24] = R0;
ffa03940:	20 e1 00 43 	R0 = 0x4300 (X);		/*		R0=0x4300(17152) */
ffa03944:	40 e6 13 00 	W[P0 + 0x26] = R0;
ffa03948:	88 30       	R1 = I0;
ffa0394a:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa0394e:	01 50       	R0 = R1 + R0;
ffa03950:	c0 42       	R0 = R0.L (Z);
ffa03952:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa03956:	40 4f       	R0 <<= 0x8;
ffa03958:	41 56       	R1 = R1 | R0;
ffa0395a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0395c:	80 e6 2c 00 	B[P0 + 0x2c] = R0;
ffa03960:	80 e6 2d 00 	B[P0 + 0x2d] = R0;
ffa03964:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d26(-4190938) */
ffa03968:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0396a:	80 e6 2e 00 	B[P0 + 0x2e] = R0;
ffa0396e:	85 e6 2f 00 	B[P0 + 0x2f] = R5;
ffa03972:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03976:	10 91       	R0 = [P2];
ffa03978:	00 b3       	[P0 + 0x30] = R0;
ffa0397a:	40 e1 53 63 	R0.H = 0x6353;		/* (25427)	R0=0x63530006(1666383878) */
ffa0397e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa03980:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03982:	00 e1 63 82 	R0.L = 0x8263;		/* (-32157)	R0=0x63538263(1666417251) */
ffa03986:	c3 b1       	[P0 + 0x1c] = R3;
ffa03988:	41 e6 14 00 	W[P0 + 0x28] = R1;
ffa0398c:	44 e6 15 00 	W[P0 + 0x2a] = R4;
ffa03990:	44 e6 1a 00 	W[P0 + 0x34] = R4;
ffa03994:	44 e6 1b 00 	W[P0 + 0x36] = R4;
ffa03998:	83 b3       	[P0 + 0x38] = R3;
ffa0399a:	c3 b3       	[P0 + 0x3c] = R3;
ffa0399c:	03 e6 10 00 	[P0 + 0x40] = R3;
ffa039a0:	03 e6 11 00 	[P0 + 0x44] = R3;
ffa039a4:	00 e6 46 00 	[P0 + 0x118] = R0;
ffa039a8:	48 99       	R0 = B[P1] (X);
ffa039aa:	80 e6 48 00 	B[P0 + 0x48] = R0;
ffa039ae:	88 e5 01 00 	R0 = B[P1 + 0x1] (X);
ffa039b2:	80 e6 49 00 	B[P0 + 0x49] = R0;
ffa039b6:	88 e5 02 00 	R0 = B[P1 + 0x2] (X);
ffa039ba:	80 e6 4a 00 	B[P0 + 0x4a] = R0;
ffa039be:	88 e5 03 00 	R0 = B[P1 + 0x3] (X);
ffa039c2:	80 e6 4b 00 	B[P0 + 0x4b] = R0;
ffa039c6:	88 e5 04 00 	R0 = B[P1 + 0x4] (X);
ffa039ca:	80 e6 4c 00 	B[P0 + 0x4c] = R0;
ffa039ce:	88 e5 05 00 	R0 = B[P1 + 0x5] (X);
ffa039d2:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa039d6:	80 e6 4d 00 	B[P0 + 0x4d] = R0;
ffa039da:	85 e6 4e 00 	B[P0 + 0x4e] = R5;
ffa039de:	85 e6 4f 00 	B[P0 + 0x4f] = R5;
ffa039e2:	85 e6 50 00 	B[P0 + 0x50] = R5;
ffa039e6:	85 e6 51 00 	B[P0 + 0x51] = R5;
ffa039ea:	85 e6 52 00 	B[P0 + 0x52] = R5;
ffa039ee:	85 e6 53 00 	B[P0 + 0x53] = R5;
ffa039f2:	85 e6 54 00 	B[P0 + 0x54] = R5;
ffa039f6:	85 e6 55 00 	B[P0 + 0x55] = R5;
ffa039fa:	85 e6 56 00 	B[P0 + 0x56] = R5;
ffa039fe:	85 e6 57 00 	B[P0 + 0x57] = R5;
ffa03a02:	03 e6 16 00 	[P0 + 0x58] = R3;
ffa03a06:	03 e6 17 00 	[P0 + 0x5c] = R3;
ffa03a0a:	03 e6 18 00 	[P0 + 0x60] = R3;
ffa03a0e:	03 e6 19 00 	[P0 + 0x64] = R3;
ffa03a12:	03 e6 1a 00 	[P0 + 0x68] = R3;
ffa03a16:	03 e6 1b 00 	[P0 + 0x6c] = R3;
ffa03a1a:	03 e6 1c 00 	[P0 + 0x70] = R3;
ffa03a1e:	03 e6 1d 00 	[P0 + 0x74] = R3;
ffa03a22:	03 e6 1e 00 	[P0 + 0x78] = R3;
ffa03a26:	03 e6 1f 00 	[P0 + 0x7c] = R3;
ffa03a2a:	03 e6 20 00 	[P0 + 0x80] = R3;
ffa03a2e:	03 e6 21 00 	[P0 + 0x84] = R3;
ffa03a32:	03 e6 22 00 	[P0 + 0x88] = R3;
ffa03a36:	50 5a       	P1 = P0 + P2;
ffa03a38:	03 e6 23 00 	[P0 + 0x8c] = R3;
ffa03a3c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a3e:	03 e6 24 00 	[P0 + 0x90] = R3;
ffa03a42:	03 e6 25 00 	[P0 + 0x94] = R3;
ffa03a46:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa03a48:	b2 e0 02 20 	LSETUP(0xffa03a4c <_DHCP_tx+0x228>, 0xffa03a4c <_DHCP_tx+0x228>) LC1 = P2;
ffa03a4c:	08 92       	[P1++] = R0;
ffa03a4e:	40 30       	R0 = P0;
ffa03a50:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa03a54:	48 50       	R1 = R0 + R1;
ffa03a56:	90 30       	R2 = I0;
ffa03a58:	81 30       	R0 = I1;
ffa03a5a:	ff e3 a3 ec 	CALL 0xffa013a0 <_memcpy_>;
ffa03a5e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa03a62:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa03a66:	50 95       	R0 = W[P2] (X);
ffa03a68:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03a6a:	53 10       	IF !CC JUMP 0xffa03b10 <_DHCP_tx+0x2ec>;
ffa03a6c:	00 00       	NOP;
ffa03a6e:	00 00       	NOP;
ffa03a70:	00 00       	NOP;
ffa03a72:	50 95       	R0 = W[P2] (X);
ffa03a74:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa03a76:	18 18       	IF CC JUMP 0xffa03aa6 <_DHCP_tx+0x282>;
ffa03a78:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d4c */
ffa03a7c:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa03a80:	b2 e0 09 10 	LSETUP(0xffa03a84 <_DHCP_tx+0x260>, 0xffa03a92 <_DHCP_tx+0x26e>) LC1 = P1;
ffa03a84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa03a88:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa03a8c:	50 95       	R0 = W[P2] (X);
ffa03a8e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa03a90:	0b 18       	IF CC JUMP 0xffa03aa6 <_DHCP_tx+0x282>;
ffa03a92:	00 00       	NOP;
ffa03a94:	01 e8 00 00 	UNLINK;
ffa03a98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03a9c:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa03aa0:	a4 05       	(R7:4, P5:4) = [SP++];
ffa03aa2:	ff e2 95 eb 	JUMP.L 0xffa011cc <_printf_str>;
ffa03aa6:	21 95       	R1 = W[P4] (Z);
ffa03aa8:	11 32       	P2 = R1;
ffa03aaa:	01 32       	P0 = R1;
ffa03aac:	62 95       	R2 = W[P4] (X);
ffa03aae:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa03ab2:	11 0d       	CC = R1 <= 0x2;
ffa03ab4:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa03ab6:	52 91       	P2 = [P2];
ffa03ab8:	09 e1 24 0d 	P1.L = 0xd24;		/* (3364)	P1=0xff900d24 <_txIdx> */
ffa03abc:	90 a1       	R0 = [P2 + 0x18];
ffa03abe:	50 b0       	[P2 + 0x4] = R0;
ffa03ac0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ac2:	90 b2       	[P2 + 0x28] = R0;
ffa03ac4:	85 5e       	P2 = P5 + (P0 << 0x2);
ffa03ac6:	10 91       	R0 = [P2];
ffa03ac8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa03acc:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa03ad0:	10 93       	[P2] = R0;
ffa03ad2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa03ad6:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa03ada:	50 95       	R0 = W[P2] (X);
ffa03adc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa03ae0:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa03ae4:	10 97       	W[P2] = R0;
ffa03ae6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa03aea:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa03aee:	10 91       	R0 = [P2];
ffa03af0:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa03af2:	10 93       	[P2] = R0;
ffa03af4:	07 1c       	IF CC JUMP 0xffa03b02 <_DHCP_tx+0x2de> (BP);
ffa03af6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03af8:	08 97       	W[P1] = R0;
ffa03afa:	01 e8 00 00 	UNLINK;
ffa03afe:	a4 05       	(R7:4, P5:4) = [SP++];
ffa03b00:	10 00       	RTS;
ffa03b02:	02 30       	R0 = R2;
ffa03b04:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b06:	08 97       	W[P1] = R0;
ffa03b08:	01 e8 00 00 	UNLINK;
ffa03b0c:	a4 05       	(R7:4, P5:4) = [SP++];
ffa03b0e:	10 00       	RTS;
ffa03b10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03b14:	01 e8 00 00 	UNLINK;
ffa03b18:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa03b1c:	a4 05       	(R7:4, P5:4) = [SP++];
ffa03b1e:	ff e2 57 eb 	JUMP.L 0xffa011cc <_printf_str>;
	...

ffa03b24 <_icmp_rx>:
ffa03b24:	f5 05       	[--SP] = (R7:6, P5:5);
ffa03b26:	28 32       	P5 = R0;
ffa03b28:	39 30       	R7 = R1;
ffa03b2a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa03b2c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03b30:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa03b32:	08 08       	CC = R0 == R1;
ffa03b34:	06 18       	IF CC JUMP 0xffa03b40 <_icmp_rx+0x1c>;
ffa03b36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b38:	01 e8 00 00 	UNLINK;
ffa03b3c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa03b3e:	10 00       	RTS;
ffa03b40:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa03b42:	07 0a       	CC = R7 <= R0 (IU);
ffa03b44:	f9 1b       	IF CC JUMP 0xffa03b36 <_icmp_rx+0x12>;
ffa03b46:	00 00       	NOP;
ffa03b48:	00 00       	NOP;
ffa03b4a:	00 00       	NOP;
ffa03b4c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa03b50:	08 0c       	CC = R0 == 0x1;
ffa03b52:	f2 17       	IF !CC JUMP 0xffa03b36 <_icmp_rx+0x12> (BP);
ffa03b54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa03b58:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa03b5c:	28 a2       	R0 = [P5 + 0x20];
ffa03b5e:	11 91       	R1 = [P2];
ffa03b60:	08 08       	CC = R0 == R1;
ffa03b62:	ea 17       	IF !CC JUMP 0xffa03b36 <_icmp_rx+0x12> (BP);
ffa03b64:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa03b68:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa03b6c:	08 08       	CC = R0 == R1;
ffa03b6e:	5e 18       	IF CC JUMP 0xffa03c2a <_icmp_rx+0x106>;
ffa03b70:	00 00       	NOP;
ffa03b72:	00 00       	NOP;
ffa03b74:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa03b76:	ae e4 24 00 	R6 = B[P5 + 0x24] (Z);
ffa03b7a:	06 08       	CC = R6 == R0;
ffa03b7c:	dd 17       	IF !CC JUMP 0xffa03b36 <_icmp_rx+0x12> (BP);
ffa03b7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa03b82:	e9 a1       	R1 = [P5 + 0x1c];
ffa03b84:	00 e1 0c 03 	R0.L = 0x30c;		/* (780)	R0=0xff90030c(-7339252) */
ffa03b88:	ff e3 7c eb 	CALL 0xffa01280 <_printf_ip>;
ffa03b8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa03b90:	0a e1 1c 0d 	P2.L = 0xd1c;		/* (3356)	P2=0xff900d1c <_NetDestIP> */
ffa03b94:	e8 a1       	R0 = [P5 + 0x1c];
ffa03b96:	4d 30       	R1 = P5;
ffa03b98:	10 93       	[P2] = R0;
ffa03b9a:	41 64       	R1 += 0x8;		/* (  8) */
ffa03b9c:	00 e3 e0 03 	CALL 0xffa0435c <_ARP_lut_add>;
ffa03ba0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90030c(-7339252) */
ffa03ba4:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa03ba8:	ff e3 12 eb 	CALL 0xffa011cc <_printf_str>;
ffa03bac:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa03bb0:	ea a1 00 00 
ffa03bb4:	f0 b0       	[SP + 0xc] = R0;
ffa03bb6:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa03bba:	30 b1       	[SP + 0x10] = R0;
ffa03bbc:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa03bbe:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa03bc2:	4f 30       	R1 = FP;
ffa03bc4:	70 b1       	[SP + 0x14] = R0;
ffa03bc6:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03bc8:	07 30       	R0 = R7;
ffa03bca:	ff e3 41 fa 	CALL 0xffa0304c <_icmp_packet_setup>;
ffa03bce:	08 30       	R1 = R0;
ffa03bd0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03bd4:	00 0d       	CC = R0 <= 0x0;
ffa03bd6:	b0 1b       	IF CC JUMP 0xffa03b36 <_icmp_rx+0x12>;
ffa03bd8:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa03bda:	45 30       	R0 = P5;
ffa03bdc:	17 30       	R2 = R7;
ffa03bde:	ff e3 e1 eb 	CALL 0xffa013a0 <_memcpy_>;
ffa03be2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d1c(-4190948) */
ffa03be6:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa03bea:	50 95       	R0 = W[P2] (X);
ffa03bec:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03bee:	5c 10       	IF !CC JUMP 0xffa03ca6 <_icmp_rx+0x182>;
ffa03bf0:	00 00       	NOP;
ffa03bf2:	00 00       	NOP;
ffa03bf4:	00 00       	NOP;
ffa03bf6:	50 95       	R0 = W[P2] (X);
ffa03bf8:	06 54       	R0 = R6 & R0;
ffa03bfa:	00 0c       	CC = R0 == 0x0;
ffa03bfc:	25 18       	IF CC JUMP 0xffa03c46 <_icmp_rx+0x122>;
ffa03bfe:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d24 */
ffa03c02:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa03c06:	b2 e0 09 10 	LSETUP(0xffa03c0a <_icmp_rx+0xe6>, 0xffa03c18 <_icmp_rx+0xf4>) LC1 = P1;
ffa03c0a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa03c0e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa03c12:	50 95       	R0 = W[P2] (X);
ffa03c14:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa03c16:	18 18       	IF CC JUMP 0xffa03c46 <_icmp_rx+0x122>;
ffa03c18:	00 00       	NOP;
ffa03c1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa03c1e:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa03c22:	ff e3 d5 ea 	CALL 0xffa011cc <_printf_str>;
ffa03c26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c28:	88 2f       	JUMP.S 0xffa03b38 <_icmp_rx+0x14>;
ffa03c2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03c2e:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa03c32:	ff e3 cd ea 	CALL 0xffa011cc <_printf_str>;
ffa03c36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa03c3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c3c:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_g_streamEnabled> */
ffa03c40:	10 9b       	B[P2] = R0;
ffa03c42:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c44:	7a 2f       	JUMP.S 0xffa03b38 <_icmp_rx+0x14>;
ffa03c46:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900d3c <_rxbuf> */
ffa03c4a:	08 e1 24 0d 	P0.L = 0xd24;		/* (3364)	P0=0xff900d24 <_txIdx> */
ffa03c4e:	01 95       	R1 = W[P0] (Z);
ffa03c50:	11 32       	P2 = R1;
ffa03c52:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa03c56:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa03c5a:	42 95       	R2 = W[P0] (X);
ffa03c5c:	11 0d       	CC = R1 <= 0x2;
ffa03c5e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03c60:	52 91       	P2 = [P2];
ffa03c62:	90 a1       	R0 = [P2 + 0x18];
ffa03c64:	50 b0       	[P2 + 0x4] = R0;
ffa03c66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c68:	90 b2       	[P2 + 0x28] = R0;
ffa03c6a:	11 32       	P2 = R1;
ffa03c6c:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa03c6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c54(-4191148) */
ffa03c72:	08 91       	R0 = [P1];
ffa03c74:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa03c78:	10 93       	[P2] = R0;
ffa03c7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa03c7e:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa03c82:	50 95       	R0 = W[P2] (X);
ffa03c84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa03c88:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa03c8c:	10 97       	W[P2] = R0;
ffa03c8e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa03c92:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa03c96:	10 91       	R0 = [P2];
ffa03c98:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa03c9a:	10 93       	[P2] = R0;
ffa03c9c:	0d 1c       	IF CC JUMP 0xffa03cb6 <_icmp_rx+0x192> (BP);
ffa03c9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ca0:	00 97       	W[P0] = R0;
ffa03ca2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ca4:	4a 2f       	JUMP.S 0xffa03b38 <_icmp_rx+0x14>;
ffa03ca6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03caa:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa03cae:	ff e3 8f ea 	CALL 0xffa011cc <_printf_str>;
ffa03cb2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cb4:	42 2f       	JUMP.S 0xffa03b38 <_icmp_rx+0x14>;
ffa03cb6:	02 30       	R0 = R2;
ffa03cb8:	08 64       	R0 += 0x1;		/* (  1) */
ffa03cba:	00 97       	W[P0] = R0;
ffa03cbc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cbe:	3d 2f       	JUMP.S 0xffa03b38 <_icmp_rx+0x14>;

ffa03cc0 <_bfin_EMAC_recv_poll>:
ffa03cc0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03cc2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d28 <_txbuf> */
ffa03cc6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d24 <_txIdx> */
ffa03cca:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_rxbuf> */
ffa03cce:	0c e1 38 0d 	P4.L = 0xd38;		/* (3384)	P4=0xff900d38 <_rxIdx> */
ffa03cd2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03cd6:	28 30       	R5 = R0;
ffa03cd8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03cda:	75 30       	R6 = P5;
ffa03cdc:	5c 32       	P3 = P4;
ffa03cde:	06 20       	JUMP.S 0xffa03cea <_bfin_EMAC_recv_poll+0x2a>;
ffa03ce0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03ce2:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa03ce6:	07 08       	CC = R7 == R0;
ffa03ce8:	0c 18       	IF CC JUMP 0xffa03d00 <_bfin_EMAC_recv_poll+0x40>;
ffa03cea:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa03cee:	ff e3 95 ef 	CALL 0xffa01c18 <_udelay>;
ffa03cf2:	20 95       	R0 = W[P4] (Z);
ffa03cf4:	10 32       	P2 = R0;
ffa03cf6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa03cf8:	52 91       	P2 = [P2];
ffa03cfa:	90 a2       	R0 = [P2 + 0x28];
ffa03cfc:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03cfe:	f1 1f       	IF CC JUMP 0xffa03ce0 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa03d00:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa03d04:	91 a2       	R1 = [P2 + 0x28];
ffa03d06:	41 54       	R1 = R1 & R0;
ffa03d08:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03d0a:	01 09       	CC = R1 <= R0;
ffa03d0c:	07 10       	IF !CC JUMP 0xffa03d1a <_bfin_EMAC_recv_poll+0x5a>;
ffa03d0e:	01 e8 00 00 	UNLINK;
ffa03d12:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03d14:	07 30       	R0 = R7;
ffa03d16:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03d18:	10 00       	RTS;
ffa03d1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d1c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa03d20:	90 b2 00 00 
ffa03d24:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03d26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03d2a:	0f 30       	R1 = R7;
ffa03d2c:	00 e1 28 03 	R0.L = 0x328;		/* (808)	R0=0xff900328(-7339224) */
ffa03d30:	ff e3 5e e9 	CALL 0xffa00fec <_printf_int>;
ffa03d34:	18 95       	R0 = W[P3] (Z);
ffa03d36:	10 32       	P2 = R0;
ffa03d38:	0e 32       	P1 = R6;
ffa03d3a:	0f 30       	R1 = R7;
ffa03d3c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03d3e:	52 91       	P2 = [P2];
ffa03d40:	90 a1       	R0 = [P2 + 0x18];
ffa03d42:	15 32       	P2 = R5;
ffa03d44:	10 93       	[P2] = R0;
ffa03d46:	00 e3 85 06 	CALL 0xffa04a50 <_ARP_rx>;
ffa03d4a:	00 0c       	CC = R0 == 0x0;
ffa03d4c:	1f 18       	IF CC JUMP 0xffa03d8a <_bfin_EMAC_recv_poll+0xca>;
ffa03d4e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa03d50:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa03d54:	20 95       	R0 = W[P4] (Z);
ffa03d56:	10 32       	P2 = R0;
ffa03d58:	61 95       	R1 = W[P4] (X);
ffa03d5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d5c:	09 e1 38 0d 	P1.L = 0xd38;		/* (3384)	P1=0xff900d38 <_rxIdx> */
ffa03d60:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa03d62:	52 91       	P2 = [P2];
ffa03d64:	90 b2       	[P2 + 0x28] = R0;
ffa03d66:	c8 42       	R0 = R1.L (Z);
ffa03d68:	10 0d       	CC = R0 <= 0x2;
ffa03d6a:	08 1c       	IF CC JUMP 0xffa03d7a <_bfin_EMAC_recv_poll+0xba> (BP);
ffa03d6c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d6e:	08 97       	W[P1] = R0;
ffa03d70:	01 e8 00 00 	UNLINK;
ffa03d74:	07 30       	R0 = R7;
ffa03d76:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03d78:	10 00       	RTS;
ffa03d7a:	01 30       	R0 = R1;
ffa03d7c:	08 64       	R0 += 0x1;		/* (  1) */
ffa03d7e:	08 97       	W[P1] = R0;
ffa03d80:	01 e8 00 00 	UNLINK;
ffa03d84:	07 30       	R0 = R7;
ffa03d86:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03d88:	10 00       	RTS;
ffa03d8a:	0d 32       	P1 = R5;
ffa03d8c:	0f 30       	R1 = R7;
ffa03d8e:	08 91       	R0 = [P1];
ffa03d90:	ff e3 ca fe 	CALL 0xffa03b24 <_icmp_rx>;
ffa03d94:	00 0c       	CC = R0 == 0x0;
ffa03d96:	dd 1f       	IF CC JUMP 0xffa03d50 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa03d98:	db 2f       	JUMP.S 0xffa03d4e <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa03d9c <_DHCP_rx>:
ffa03d9c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03d9e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03da2:	6f 30       	R5 = FP;
ffa03da4:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa03da6:	01 20       	JUMP.S 0xffa03da8 <_DHCP_rx+0xc>;
ffa03da8:	05 30       	R0 = R5;
ffa03daa:	ff e3 8b ff 	CALL 0xffa03cc0 <_bfin_EMAC_recv_poll>;
ffa03dae:	38 30       	R7 = R0;
ffa03db0:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03db4:	87 51       	R6 = R7 + R0;
ffa03db6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03dba:	00 e1 68 03 	R0.L = 0x368;		/* (872)	R0=0xff900368(-7339160) */
ffa03dbe:	0e 30       	R1 = R6;
ffa03dc0:	ff e3 16 e9 	CALL 0xffa00fec <_printf_int>;
ffa03dc4:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa03dc8:	07 09       	CC = R7 <= R0;
ffa03dca:	fd b9       	P5 = [FP -0x4];
ffa03dcc:	0e 18       	IF CC JUMP 0xffa03de8 <_DHCP_rx+0x4c>;
ffa03dce:	00 00       	NOP;
ffa03dd0:	00 00       	NOP;
ffa03dd2:	00 00       	NOP;
ffa03dd4:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa03dd6:	82 c6 c0 83 	R1 = R0 >> 0x8;
ffa03dda:	40 4f       	R0 <<= 0x8;
ffa03ddc:	41 56       	R1 = R1 | R0;
ffa03dde:	c9 42       	R1 = R1.L (Z);
ffa03de0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03de4:	01 08       	CC = R1 == R0;
ffa03de6:	08 18       	IF CC JUMP 0xffa03df6 <_DHCP_rx+0x5a>;
ffa03de8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900800(-7337984) */
ffa03dec:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa03df0:	ff e3 ee e9 	CALL 0xffa011cc <_printf_str>;
ffa03df4:	da 2f       	JUMP.S 0xffa03da8 <_DHCP_rx+0xc>;
ffa03df6:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa03dfa:	21 e1 00 43 	R1 = 0x4300 (X);		/*		R1=0x4300(17152) */
ffa03dfe:	08 08       	CC = R0 == R1;
ffa03e00:	d4 17       	IF !CC JUMP 0xffa03da8 <_DHCP_rx+0xc> (BP);
ffa03e02:	68 e4 13 00 	R0 = W[P5 + 0x26] (Z);
ffa03e06:	21 e1 00 44 	R1 = 0x4400 (X);		/*		R1=0x4400(17408) */
ffa03e0a:	08 08       	CC = R0 == R1;
ffa03e0c:	ce 17       	IF !CC JUMP 0xffa03da8 <_DHCP_rx+0xc> (BP);
ffa03e0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa03e12:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03e16:	11 91       	R1 = [P2];
ffa03e18:	28 a3       	R0 = [P5 + 0x30];
ffa03e1a:	08 08       	CC = R0 == R1;
ffa03e1c:	c6 17       	IF !CC JUMP 0xffa03da8 <_DHCP_rx+0xc> (BP);
ffa03e1e:	41 e1 53 63 	R1.H = 0x6353;		/* (25427)	R1=0x63534400(1666401280) */
ffa03e22:	28 e4 46 00 	R0 = [P5 + 0x118];
ffa03e26:	01 e1 63 82 	R1.L = 0x8263;		/* (-32157)	R1=0x63538263(1666417251) */
ffa03e2a:	08 08       	CC = R0 == R1;
ffa03e2c:	be 17       	IF !CC JUMP 0xffa03da8 <_DHCP_rx+0xc> (BP);
ffa03e2e:	4d 30       	R1 = P5;
ffa03e30:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa03e34:	01 50       	R0 = R1 + R0;
ffa03e36:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa03e3a:	f0 bb 00 00 
ffa03e3e:	ff e3 27 f4 	CALL 0xffa0268c <_DHCP_parse>;
ffa03e42:	e9 a3       	R1 = [P5 + 0x3c];
ffa03e44:	01 0c       	CC = R1 == 0x0;
ffa03e46:	12 1c       	IF CC JUMP 0xffa03e6a <_DHCP_rx+0xce> (BP);
ffa03e48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa03e4c:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa03e50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa03e54:	11 93       	[P2] = R1;
ffa03e56:	00 e1 3c 03 	R0.L = 0x33c;		/* (828)	R0=0xff90033c(-7339204) */
ffa03e5a:	ff e3 13 ea 	CALL 0xffa01280 <_printf_ip>;
ffa03e5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90033c(-7339204) */
ffa03e62:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa03e66:	ff e3 b3 e9 	CALL 0xffa011cc <_printf_str>;
ffa03e6a:	01 e8 00 00 	UNLINK;
ffa03e6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e70:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03e72:	10 00       	RTS;

ffa03e74 <_DHCP_req>:
ffa03e74:	fd 05       	[--SP] = (R7:7, P5:5);
ffa03e76:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_rxbuf> */
ffa03e7a:	0d e1 20 0d 	P5.L = 0xd20;		/* (3360)	P5=0xff900d20 <_NetDHCPserv> */
ffa03e7e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03e80:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03e84:	28 93       	[P5] = R0;
ffa03e86:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa03e88:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa03e8c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e8e:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa03e92:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa03e96:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03e98:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa03e9c:	7f 30       	R7 = FP;
ffa03e9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa03ea2:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa03ea6:	a7 67       	R7 += -0xc;		/* (-12) */
ffa03ea8:	ff e3 92 e9 	CALL 0xffa011cc <_printf_str>;
ffa03eac:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa03eb0:	2a 91 00 00 
ffa03eb4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03eb6:	ff e3 b7 fc 	CALL 0xffa03824 <_DHCP_tx>;
ffa03eba:	ff e3 71 ff 	CALL 0xffa03d9c <_DHCP_rx>;
ffa03ebe:	29 91       	R1 = [P5];
ffa03ec0:	39 0c       	CC = R1 == -0x1;
ffa03ec2:	43 18       	IF CC JUMP 0xffa03f48 <_DHCP_req+0xd4>;
ffa03ec4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa03ec8:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa03ecc:	10 91       	R0 = [P2];
ffa03ece:	00 0c       	CC = R0 == 0x0;
ffa03ed0:	08 18       	IF CC JUMP 0xffa03ee0 <_DHCP_req+0x6c>;
ffa03ed2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_NetOurIP> */
ffa03ed6:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_NetSubnetMask> */
ffa03eda:	10 91       	R0 = [P2];
ffa03edc:	00 0c       	CC = R0 == 0x0;
ffa03ede:	30 10       	IF !CC JUMP 0xffa03f3e <_DHCP_req+0xca>;
ffa03ee0:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa03ee2:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa03ee6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ee8:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa03eec:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03eee:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa03ef2:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa03ef4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa03ef8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03efa:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa03efe:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa03f02:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa03f06:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa03f0a:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa03f0e:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa03f12:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa03f16:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f18:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa03f1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa03f20:	00 e1 ac 03 	R0.L = 0x3ac;		/* (940)	R0=0xff9003ac(-7339092) */
ffa03f24:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa03f28:	ff e3 52 e9 	CALL 0xffa011cc <_printf_str>;
ffa03f2c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa03f2e:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa03f32:	2a 91 00 00 
ffa03f36:	ff e3 77 fc 	CALL 0xffa03824 <_DHCP_tx>;
ffa03f3a:	ff e3 31 ff 	CALL 0xffa03d9c <_DHCP_rx>;
ffa03f3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f40:	01 e8 00 00 	UNLINK;
ffa03f44:	bd 05       	(R7:7, P5:5) = [SP++];
ffa03f46:	10 00       	RTS;
ffa03f48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03f4c:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa03f50:	ff e3 3e e9 	CALL 0xffa011cc <_printf_str>;
ffa03f54:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f56:	f5 2f       	JUMP.S 0xffa03f40 <_DHCP_req+0xcc>;

ffa03f58 <_bfin_EMAC_recv>:
ffa03f58:	fb 05       	[--SP] = (R7:7, P5:3);
ffa03f5a:	28 32       	P5 = R0;
ffa03f5c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d28 <_txbuf> */
ffa03f60:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d38 <_rxIdx> */
ffa03f64:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03f68:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03f6a:	0b e1 3c 0d 	P3.L = 0xd3c;		/* (3388)	P3=0xff900d3c <_rxbuf> */
ffa03f6e:	0c e1 38 0d 	P4.L = 0xd38;		/* (3384)	P4=0xff900d38 <_rxIdx> */
ffa03f72:	01 20       	JUMP.S 0xffa03f74 <_bfin_EMAC_recv+0x1c>;
ffa03f74:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900d24 <_txIdx> */
ffa03f78:	20 95       	R0 = W[P4] (Z);
ffa03f7a:	10 32       	P2 = R0;
ffa03f7c:	08 e1 38 0d 	P0.L = 0xd38;		/* (3384)	P0=0xff900d38 <_rxIdx> */
ffa03f80:	93 5e       	P2 = P3 + (P2 << 0x2);
ffa03f82:	51 91       	P1 = [P2];
ffa03f84:	88 a2       	R0 = [P1 + 0x28];
ffa03f86:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03f88:	43 18       	IF CC JUMP 0xffa0400e <_bfin_EMAC_recv+0xb6>;
ffa03f8a:	00 00       	NOP;
ffa03f8c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f8e:	a0 4f       	R0 <<= 0x14;
ffa03f90:	89 a2       	R1 = [P1 + 0x28];
ffa03f92:	81 54       	R2 = R1 & R0;
ffa03f94:	02 0c       	CC = R2 == 0x0;
ffa03f96:	42 10       	IF !CC JUMP 0xffa0401a <_bfin_EMAC_recv+0xc2>;
ffa03f98:	00 00       	NOP;
ffa03f9a:	00 00       	NOP;
ffa03f9c:	00 00       	NOP;
ffa03f9e:	88 a2       	R0 = [P1 + 0x28];
ffa03fa0:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03fa2:	47 18       	IF CC JUMP 0xffa04030 <_bfin_EMAC_recv+0xd8>;
ffa03fa4:	00 00       	NOP;
ffa03fa6:	00 00       	NOP;
ffa03fa8:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa03fac:	89 a2       	R1 = [P1 + 0x28];
ffa03fae:	c1 55       	R7 = R1 & R0;
ffa03fb0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03fb2:	07 09       	CC = R7 <= R0;
ffa03fb4:	49 18       	IF CC JUMP 0xffa04046 <_bfin_EMAC_recv+0xee>;
ffa03fb6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa03fba:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xffc00c68(-4191128) */
ffa03fbe:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03fc0:	88 a1       	R0 = [P1 + 0x18];
ffa03fc2:	51 95       	R1 = W[P2] (X);
ffa03fc4:	28 93       	[P5] = R0;
ffa03fc6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03fc8:	08 56       	R0 = R0 | R1;
ffa03fca:	10 97       	W[P2] = R0;
ffa03fcc:	41 95       	R1 = W[P0] (X);
ffa03fce:	c8 42       	R0 = R1.L (Z);
ffa03fd0:	10 0d       	CC = R0 <= 0x2;
ffa03fd2:	8a b2       	[P1 + 0x28] = R2;
ffa03fd4:	19 1c       	IF CC JUMP 0xffa04006 <_bfin_EMAC_recv+0xae> (BP);
ffa03fd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fd8:	00 97       	W[P0] = R0;
ffa03fda:	28 91       	R0 = [P5];
ffa03fdc:	0f 30       	R1 = R7;
ffa03fde:	00 e3 39 05 	CALL 0xffa04a50 <_ARP_rx>;
ffa03fe2:	00 0c       	CC = R0 == 0x0;
ffa03fe4:	03 18       	IF CC JUMP 0xffa03fea <_bfin_EMAC_recv+0x92>;
ffa03fe6:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa03fe8:	c6 2f       	JUMP.S 0xffa03f74 <_bfin_EMAC_recv+0x1c>;
ffa03fea:	28 91       	R0 = [P5];
ffa03fec:	0f 30       	R1 = R7;
ffa03fee:	ff e3 9b fd 	CALL 0xffa03b24 <_icmp_rx>;
ffa03ff2:	00 0c       	CC = R0 == 0x0;
ffa03ff4:	f9 17       	IF !CC JUMP 0xffa03fe6 <_bfin_EMAC_recv+0x8e> (BP);
ffa03ff6:	28 91       	R0 = [P5];
ffa03ff8:	0f 30       	R1 = R7;
ffa03ffa:	00 e3 f5 08 	CALL 0xffa051e4 <_tcp_rx>;
ffa03ffe:	00 0c       	CC = R0 == 0x0;
ffa04000:	ba 1f       	IF CC JUMP 0xffa03f74 <_bfin_EMAC_recv+0x1c> (BP);
ffa04002:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa04004:	b8 2f       	JUMP.S 0xffa03f74 <_bfin_EMAC_recv+0x1c>;
ffa04006:	01 30       	R0 = R1;
ffa04008:	08 64       	R0 += 0x1;		/* (  1) */
ffa0400a:	00 97       	W[P0] = R0;
ffa0400c:	e7 2f       	JUMP.S 0xffa03fda <_bfin_EMAC_recv+0x82>;
ffa0400e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa04010:	01 e8 00 00 	UNLINK;
ffa04014:	07 30       	R0 = R7;
ffa04016:	bb 05       	(R7:7, P5:3) = [SP++];
ffa04018:	10 00       	RTS;
ffa0401a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0401e:	00 e1 c0 03 	R0.L = 0x3c0;		/* (960)	R0=0xff9003c0(-7339072) */
ffa04022:	ff e3 d5 e8 	CALL 0xffa011cc <_printf_str>;
ffa04026:	01 e8 00 00 	UNLINK;
ffa0402a:	07 30       	R0 = R7;
ffa0402c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0402e:	10 00       	RTS;
ffa04030:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c0(-7339072) */
ffa04034:	00 e1 dc 03 	R0.L = 0x3dc;		/* (988)	R0=0xff9003dc(-7339044) */
ffa04038:	ff e3 ca e8 	CALL 0xffa011cc <_printf_str>;
ffa0403c:	01 e8 00 00 	UNLINK;
ffa04040:	07 30       	R0 = R7;
ffa04042:	bb 05       	(R7:7, P5:3) = [SP++];
ffa04044:	10 00       	RTS;
ffa04046:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003dc(-7339044) */
ffa0404a:	00 e1 f0 03 	R0.L = 0x3f0;		/* (1008)	R0=0xff9003f0(-7339024) */
ffa0404e:	ff e3 bf e8 	CALL 0xffa011cc <_printf_str>;
ffa04052:	01 e8 00 00 	UNLINK;
ffa04056:	07 30       	R0 = R7;
ffa04058:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0405a:	10 00       	RTS;

ffa0405c <_ARP_init>:
ffa0405c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 */
ffa04060:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa04064:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04068:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0406a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0406c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0406e:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa04070:	b2 e0 12 10 	LSETUP(0xffa04074 <_ARP_init+0x18>, 0xffa04094 <_ARP_init+0x38>) LC1 = P1;
ffa04074:	11 93       	[P2] = R1;
ffa04076:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0407a:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0407e:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa04082:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa04086:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0408a:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0408e:	52 b5       	W[P2 + 0xa] = R2;
ffa04090:	d1 b0       	[P2 + 0xc] = R1;
ffa04092:	11 b1       	[P2 + 0x10] = R1;
ffa04094:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa04096:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_NetArpLut> */
ffa0409a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0409e:	0a e1 60 0d 	P2.L = 0xd60;		/* (3424)	P2=0xff900d60 <_NetArpLut_age> */
ffa040a2:	10 97       	W[P2] = R0;
ffa040a4:	01 e8 00 00 	UNLINK;
ffa040a8:	10 00       	RTS;
	...

ffa040ac <_ARP_lut_find>:
ffa040ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d60 <_NetArpLut_age> */
ffa040b0:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa040b4:	10 91       	R0 = [P2];
ffa040b6:	00 0c       	CC = R0 == 0x0;
ffa040b8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa040bc:	71 18       	IF CC JUMP 0xffa0419e <_ARP_lut_find+0xf2>;
ffa040be:	00 00       	NOP;
ffa040c0:	00 00       	NOP;
ffa040c2:	00 00       	NOP;
ffa040c4:	50 a1       	R0 = [P2 + 0x14];
ffa040c6:	00 0c       	CC = R0 == 0x0;
ffa040c8:	6d 18       	IF CC JUMP 0xffa041a2 <_ARP_lut_find+0xf6>;
ffa040ca:	00 00       	NOP;
ffa040cc:	00 00       	NOP;
ffa040ce:	00 00       	NOP;
ffa040d0:	90 a2       	R0 = [P2 + 0x28];
ffa040d2:	00 0c       	CC = R0 == 0x0;
ffa040d4:	69 18       	IF CC JUMP 0xffa041a6 <_ARP_lut_find+0xfa>;
ffa040d6:	00 00       	NOP;
ffa040d8:	00 00       	NOP;
ffa040da:	00 00       	NOP;
ffa040dc:	d0 a3       	R0 = [P2 + 0x3c];
ffa040de:	00 0c       	CC = R0 == 0x0;
ffa040e0:	65 18       	IF CC JUMP 0xffa041aa <_ARP_lut_find+0xfe>;
ffa040e2:	00 00       	NOP;
ffa040e4:	00 00       	NOP;
ffa040e6:	00 00       	NOP;
ffa040e8:	10 e4 14 00 	R0 = [P2 + 0x50];
ffa040ec:	00 0c       	CC = R0 == 0x0;
ffa040ee:	60 18       	IF CC JUMP 0xffa041ae <_ARP_lut_find+0x102>;
ffa040f0:	00 00       	NOP;
ffa040f2:	00 00       	NOP;
ffa040f4:	00 00       	NOP;
ffa040f6:	10 e4 19 00 	R0 = [P2 + 0x64];
ffa040fa:	00 0c       	CC = R0 == 0x0;
ffa040fc:	5b 18       	IF CC JUMP 0xffa041b2 <_ARP_lut_find+0x106>;
ffa040fe:	00 00       	NOP;
ffa04100:	00 00       	NOP;
ffa04102:	00 00       	NOP;
ffa04104:	10 e4 1e 00 	R0 = [P2 + 0x78];
ffa04108:	00 0c       	CC = R0 == 0x0;
ffa0410a:	56 18       	IF CC JUMP 0xffa041b6 <_ARP_lut_find+0x10a>;
ffa0410c:	00 00       	NOP;
ffa0410e:	00 00       	NOP;
ffa04110:	00 00       	NOP;
ffa04112:	10 e4 23 00 	R0 = [P2 + 0x8c];
ffa04116:	00 0c       	CC = R0 == 0x0;
ffa04118:	51 18       	IF CC JUMP 0xffa041ba <_ARP_lut_find+0x10e>;
ffa0411a:	00 00       	NOP;
ffa0411c:	00 00       	NOP;
ffa0411e:	00 00       	NOP;
ffa04120:	10 e4 28 00 	R0 = [P2 + 0xa0];
ffa04124:	00 0c       	CC = R0 == 0x0;
ffa04126:	4c 18       	IF CC JUMP 0xffa041be <_ARP_lut_find+0x112>;
ffa04128:	00 00       	NOP;
ffa0412a:	00 00       	NOP;
ffa0412c:	00 00       	NOP;
ffa0412e:	10 e4 2d 00 	R0 = [P2 + 0xb4];
ffa04132:	00 0c       	CC = R0 == 0x0;
ffa04134:	47 18       	IF CC JUMP 0xffa041c2 <_ARP_lut_find+0x116>;
ffa04136:	00 00       	NOP;
ffa04138:	00 00       	NOP;
ffa0413a:	00 00       	NOP;
ffa0413c:	51 a5       	R1 = W[P2 + 0xa] (Z);
ffa0413e:	d0 a7       	R0 = W[P2 + 0x1e] (Z);
ffa04140:	01 09       	CC = R1 <= R0;
ffa04142:	18 02       	CC = !CC;
ffa04144:	50 e4 19 00 	R0 = W[P2 + 0x32] (Z);
ffa04148:	02 02       	R2 = CC;
ffa0414a:	01 09       	CC = R1 <= R0;
ffa0414c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0414e:	10 06       	IF !CC R2 = R0;
ffa04150:	50 e4 23 00 	R0 = W[P2 + 0x46] (Z);
ffa04154:	01 09       	CC = R1 <= R0;
ffa04156:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa04158:	10 06       	IF !CC R2 = R0;
ffa0415a:	50 e4 2d 00 	R0 = W[P2 + 0x5a] (Z);
ffa0415e:	01 09       	CC = R1 <= R0;
ffa04160:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04162:	10 06       	IF !CC R2 = R0;
ffa04164:	50 e4 37 00 	R0 = W[P2 + 0x6e] (Z);
ffa04168:	01 09       	CC = R1 <= R0;
ffa0416a:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0416c:	10 06       	IF !CC R2 = R0;
ffa0416e:	50 e4 41 00 	R0 = W[P2 + 0x82] (Z);
ffa04172:	01 09       	CC = R1 <= R0;
ffa04174:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa04176:	10 06       	IF !CC R2 = R0;
ffa04178:	50 e4 4b 00 	R0 = W[P2 + 0x96] (Z);
ffa0417c:	01 09       	CC = R1 <= R0;
ffa0417e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa04180:	10 06       	IF !CC R2 = R0;
ffa04182:	50 e4 55 00 	R0 = W[P2 + 0xaa] (Z);
ffa04186:	01 09       	CC = R1 <= R0;
ffa04188:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0418a:	10 06       	IF !CC R2 = R0;
ffa0418c:	50 e4 5f 00 	R0 = W[P2 + 0xbe] (Z);
ffa04190:	01 09       	CC = R1 <= R0;
ffa04192:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa04194:	10 06       	IF !CC R2 = R0;
ffa04196:	02 30       	R0 = R2;
ffa04198:	01 e8 00 00 	UNLINK;
ffa0419c:	10 00       	RTS;
ffa0419e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa041a0:	fb 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041a2:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa041a4:	f9 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041a6:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa041a8:	f7 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041aa:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa041ac:	f5 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041ae:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa041b0:	f3 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041b2:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa041b4:	f1 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041b6:	32 60       	R2 = 0x6 (X);		/*		R2=0x6(  6) */
ffa041b8:	ef 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041ba:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
ffa041bc:	ed 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041be:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
ffa041c0:	eb 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
ffa041c2:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa041c4:	e9 2f       	JUMP.S 0xffa04196 <_ARP_lut_find+0xea>;
	...

ffa041c8 <_ARP_lu>:
ffa041c8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa041cc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa041d0:	09 e1 64 0d 	P1.L = 0xd64;		/* (3428)	P1=0xff900d64 <_NetArpLut> */
ffa041d4:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P1] || NOP;
ffa041d8:	08 91 00 00 
ffa041dc:	10 08       	CC = R0 == R2;
ffa041de:	4b 18       	IF CC JUMP 0xffa04274 <_ARP_lu+0xac>;
ffa041e0:	00 00       	NOP;
ffa041e2:	00 00       	NOP;
ffa041e4:	00 00       	NOP;
ffa041e6:	48 a1       	R0 = [P1 + 0x14];
ffa041e8:	10 08       	CC = R0 == R2;
ffa041ea:	6b 18       	IF CC JUMP 0xffa042c0 <_ARP_lu+0xf8>;
ffa041ec:	00 00       	NOP;
ffa041ee:	00 00       	NOP;
ffa041f0:	00 00       	NOP;
ffa041f2:	88 a2       	R0 = [P1 + 0x28];
ffa041f4:	10 08       	CC = R0 == R2;
ffa041f6:	6e 18       	IF CC JUMP 0xffa042d2 <_ARP_lu+0x10a>;
ffa041f8:	00 00       	NOP;
ffa041fa:	00 00       	NOP;
ffa041fc:	00 00       	NOP;
ffa041fe:	c8 a3       	R0 = [P1 + 0x3c];
ffa04200:	10 08       	CC = R0 == R2;
ffa04202:	71 18       	IF CC JUMP 0xffa042e4 <_ARP_lu+0x11c>;
ffa04204:	00 00       	NOP;
ffa04206:	00 00       	NOP;
ffa04208:	00 00       	NOP;
ffa0420a:	08 e4 14 00 	R0 = [P1 + 0x50];
ffa0420e:	10 08       	CC = R0 == R2;
ffa04210:	74 18       	IF CC JUMP 0xffa042f8 <_ARP_lu+0x130>;
ffa04212:	00 00       	NOP;
ffa04214:	00 00       	NOP;
ffa04216:	00 00       	NOP;
ffa04218:	08 e4 19 00 	R0 = [P1 + 0x64];
ffa0421c:	10 08       	CC = R0 == R2;
ffa0421e:	77 18       	IF CC JUMP 0xffa0430c <_ARP_lu+0x144>;
ffa04220:	00 00       	NOP;
ffa04222:	00 00       	NOP;
ffa04224:	00 00       	NOP;
ffa04226:	08 e4 1e 00 	R0 = [P1 + 0x78];
ffa0422a:	10 08       	CC = R0 == R2;
ffa0422c:	7a 18       	IF CC JUMP 0xffa04320 <_ARP_lu+0x158>;
ffa0422e:	00 00       	NOP;
ffa04230:	00 00       	NOP;
ffa04232:	00 00       	NOP;
ffa04234:	08 e4 23 00 	R0 = [P1 + 0x8c];
ffa04238:	10 08       	CC = R0 == R2;
ffa0423a:	7d 18       	IF CC JUMP 0xffa04334 <_ARP_lu+0x16c>;
ffa0423c:	00 00       	NOP;
ffa0423e:	00 00       	NOP;
ffa04240:	00 00       	NOP;
ffa04242:	08 e4 28 00 	R0 = [P1 + 0xa0];
ffa04246:	10 08       	CC = R0 == R2;
ffa04248:	80 18       	IF CC JUMP 0xffa04348 <_ARP_lu+0x180>;
ffa0424a:	00 00       	NOP;
ffa0424c:	00 00       	NOP;
ffa0424e:	00 00       	NOP;
ffa04250:	08 e4 2d 00 	R0 = [P1 + 0xb4];
ffa04254:	10 08       	CC = R0 == R2;
ffa04256:	05 18       	IF CC JUMP 0xffa04260 <_ARP_lu+0x98>;
ffa04258:	01 e8 00 00 	UNLINK;
ffa0425c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0425e:	10 00       	RTS;
ffa04260:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_NetArpLut> */
ffa04264:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04268:	10 e4 31 00 	R0 = [P2 + 0xc4];
ffa0426c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0426e:	f5 1f       	IF CC JUMP 0xffa04258 <_ARP_lu+0x90> (BP);
ffa04270:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa04272:	05 20       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa04274:	08 a1       	R0 = [P1 + 0x10];
ffa04276:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04278:	b6 1f       	IF CC JUMP 0xffa041e4 <_ARP_lu+0x1c> (BP);
ffa0427a:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0427c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0427e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa04280:	09 32       	P1 = R1;
ffa04282:	01 32       	P0 = R1;
ffa04284:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa04288:	08 9a       	B[P1++] = R0;
ffa0428a:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0428e:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa04292:	90 e5 06 00 	R0 = B[P2 + 0x6] (X);
ffa04296:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa0429a:	41 32       	P0 = P1;
ffa0429c:	90 e5 07 00 	R0 = B[P2 + 0x7] (X);
ffa042a0:	08 6c       	P0 += 0x1;		/* (  1) */
ffa042a2:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa042a6:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa042aa:	11 6c       	P1 += 0x2;		/* (  2) */
ffa042ac:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa042b0:	90 e5 09 00 	R0 = B[P2 + 0x9] (X);
ffa042b4:	88 e6 02 00 	B[P1 + 0x2] = R0;
ffa042b8:	01 e8 00 00 	UNLINK;
ffa042bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa042be:	10 00       	RTS;
ffa042c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900000 <_l1_data_a> */
ffa042c4:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa042c8:	50 a2       	R0 = [P2 + 0x24];
ffa042ca:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa042cc:	92 1f       	IF CC JUMP 0xffa041f0 <_ARP_lu+0x28> (BP);
ffa042ce:	0a 68       	P2 = 0x1 (X);		/*		P2=0x1(  1) */
ffa042d0:	d6 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa042d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900001 */
ffa042d6:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa042da:	90 a3       	R0 = [P2 + 0x38];
ffa042dc:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa042de:	8f 1f       	IF CC JUMP 0xffa041fc <_ARP_lu+0x34> (BP);
ffa042e0:	12 68       	P2 = 0x2 (X);		/*		P2=0x2(  2) */
ffa042e2:	cd 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa042e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900002 */
ffa042e8:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa042ec:	10 e4 13 00 	R0 = [P2 + 0x4c];
ffa042f0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa042f2:	8b 1f       	IF CC JUMP 0xffa04208 <_ARP_lu+0x40> (BP);
ffa042f4:	1a 68       	P2 = 0x3 (X);		/*		P2=0x3(  3) */
ffa042f6:	c3 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa042f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900003 */
ffa042fc:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04300:	10 e4 18 00 	R0 = [P2 + 0x60];
ffa04304:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04306:	88 1f       	IF CC JUMP 0xffa04216 <_ARP_lu+0x4e> (BP);
ffa04308:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0430a:	b9 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa0430c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa04310:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04314:	10 e4 1d 00 	R0 = [P2 + 0x74];
ffa04318:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0431a:	85 1f       	IF CC JUMP 0xffa04224 <_ARP_lu+0x5c> (BP);
ffa0431c:	2a 68       	P2 = 0x5 (X);		/*		P2=0x5(  5) */
ffa0431e:	af 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa04320:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900005 */
ffa04324:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04328:	10 e4 22 00 	R0 = [P2 + 0x88];
ffa0432c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0432e:	82 1f       	IF CC JUMP 0xffa04232 <_ARP_lu+0x6a> (BP);
ffa04330:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa04332:	a5 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa04334:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa04338:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa0433c:	10 e4 27 00 	R0 = [P2 + 0x9c];
ffa04340:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04342:	7f 1f       	IF CC JUMP 0xffa04240 <_ARP_lu+0x78> (BP);
ffa04344:	3a 68       	P2 = 0x7 (X);		/*		P2=0x7(  7) */
ffa04346:	9b 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;
ffa04348:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900007 */
ffa0434c:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04350:	10 e4 2c 00 	R0 = [P2 + 0xb0];
ffa04354:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04356:	7c 1f       	IF CC JUMP 0xffa0424e <_ARP_lu+0x86> (BP);
ffa04358:	42 68       	P2 = 0x8 (X);		/*		P2=0x8(  8) */
ffa0435a:	91 2f       	JUMP.S 0xffa0427c <_ARP_lu+0xb4>;

ffa0435c <_ARP_lut_add>:
ffa0435c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0435e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d38 <_rxIdx> */
ffa04362:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04366:	0c e1 64 0d 	P4.L = 0xd64;		/* (3428)	P4=0xff900d64 <_NetArpLut> */
ffa0436a:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa0436e:	20 91 00 00 
ffa04372:	07 08       	CC = R7 == R0;
ffa04374:	19 32       	P3 = R1;
ffa04376:	e2 18       	IF CC JUMP 0xffa0453a <_ARP_lut_add+0x1de>;
ffa04378:	00 00       	NOP;
ffa0437a:	00 00       	NOP;
ffa0437c:	00 00       	NOP;
ffa0437e:	60 a1       	R0 = [P4 + 0x14];
ffa04380:	07 08       	CC = R7 == R0;
ffa04382:	fc 18       	IF CC JUMP 0xffa0457a <_ARP_lut_add+0x21e>;
ffa04384:	00 00       	NOP;
ffa04386:	00 00       	NOP;
ffa04388:	00 00       	NOP;
ffa0438a:	a0 a2       	R0 = [P4 + 0x28];
ffa0438c:	07 08       	CC = R7 == R0;
ffa0438e:	f8 18       	IF CC JUMP 0xffa0457e <_ARP_lut_add+0x222>;
ffa04390:	00 00       	NOP;
ffa04392:	00 00       	NOP;
ffa04394:	00 00       	NOP;
ffa04396:	e0 a3       	R0 = [P4 + 0x3c];
ffa04398:	07 08       	CC = R7 == R0;
ffa0439a:	f4 18       	IF CC JUMP 0xffa04582 <_ARP_lut_add+0x226>;
ffa0439c:	00 00       	NOP;
ffa0439e:	00 00       	NOP;
ffa043a0:	00 00       	NOP;
ffa043a2:	20 e4 14 00 	R0 = [P4 + 0x50];
ffa043a6:	07 08       	CC = R7 == R0;
ffa043a8:	ef 18       	IF CC JUMP 0xffa04586 <_ARP_lut_add+0x22a>;
ffa043aa:	00 00       	NOP;
ffa043ac:	00 00       	NOP;
ffa043ae:	00 00       	NOP;
ffa043b0:	20 e4 19 00 	R0 = [P4 + 0x64];
ffa043b4:	07 08       	CC = R7 == R0;
ffa043b6:	ea 18       	IF CC JUMP 0xffa0458a <_ARP_lut_add+0x22e>;
ffa043b8:	00 00       	NOP;
ffa043ba:	00 00       	NOP;
ffa043bc:	00 00       	NOP;
ffa043be:	20 e4 1e 00 	R0 = [P4 + 0x78];
ffa043c2:	07 08       	CC = R7 == R0;
ffa043c4:	e5 18       	IF CC JUMP 0xffa0458e <_ARP_lut_add+0x232>;
ffa043c6:	00 00       	NOP;
ffa043c8:	00 00       	NOP;
ffa043ca:	00 00       	NOP;
ffa043cc:	20 e4 23 00 	R0 = [P4 + 0x8c];
ffa043d0:	07 08       	CC = R7 == R0;
ffa043d2:	e0 18       	IF CC JUMP 0xffa04592 <_ARP_lut_add+0x236>;
ffa043d4:	00 00       	NOP;
ffa043d6:	00 00       	NOP;
ffa043d8:	00 00       	NOP;
ffa043da:	20 e4 28 00 	R0 = [P4 + 0xa0];
ffa043de:	07 08       	CC = R7 == R0;
ffa043e0:	db 18       	IF CC JUMP 0xffa04596 <_ARP_lut_add+0x23a>;
ffa043e2:	00 00       	NOP;
ffa043e4:	00 00       	NOP;
ffa043e6:	00 00       	NOP;
ffa043e8:	20 e4 2d 00 	R0 = [P4 + 0xb4];
ffa043ec:	07 08       	CC = R7 == R0;
ffa043ee:	d6 18       	IF CC JUMP 0xffa0459a <_ARP_lut_add+0x23e>;
ffa043f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa043f4:	0f 30       	R1 = R7;
ffa043f6:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa043fa:	ff e3 43 e7 	CALL 0xffa01280 <_printf_ip>;
ffa043fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa04402:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa04406:	ff e3 e3 e6 	CALL 0xffa011cc <_printf_str>;
ffa0440a:	20 91       	R0 = [P4];
ffa0440c:	00 0c       	CC = R0 == 0x0;
ffa0440e:	c8 18       	IF CC JUMP 0xffa0459e <_ARP_lut_add+0x242>;
ffa04410:	00 00       	NOP;
ffa04412:	00 00       	NOP;
ffa04414:	00 00       	NOP;
ffa04416:	60 a1       	R0 = [P4 + 0x14];
ffa04418:	00 0c       	CC = R0 == 0x0;
ffa0441a:	c4 18       	IF CC JUMP 0xffa045a2 <_ARP_lut_add+0x246>;
ffa0441c:	00 00       	NOP;
ffa0441e:	00 00       	NOP;
ffa04420:	00 00       	NOP;
ffa04422:	a0 a2       	R0 = [P4 + 0x28];
ffa04424:	00 0c       	CC = R0 == 0x0;
ffa04426:	c0 18       	IF CC JUMP 0xffa045a6 <_ARP_lut_add+0x24a>;
ffa04428:	00 00       	NOP;
ffa0442a:	00 00       	NOP;
ffa0442c:	00 00       	NOP;
ffa0442e:	e0 a3       	R0 = [P4 + 0x3c];
ffa04430:	00 0c       	CC = R0 == 0x0;
ffa04432:	a2 18       	IF CC JUMP 0xffa04576 <_ARP_lut_add+0x21a>;
ffa04434:	00 00       	NOP;
ffa04436:	00 00       	NOP;
ffa04438:	00 00       	NOP;
ffa0443a:	20 e4 14 00 	R0 = [P4 + 0x50];
ffa0443e:	00 0c       	CC = R0 == 0x0;
ffa04440:	b5 18       	IF CC JUMP 0xffa045aa <_ARP_lut_add+0x24e>;
ffa04442:	00 00       	NOP;
ffa04444:	00 00       	NOP;
ffa04446:	00 00       	NOP;
ffa04448:	20 e4 19 00 	R0 = [P4 + 0x64];
ffa0444c:	00 0c       	CC = R0 == 0x0;
ffa0444e:	b0 18       	IF CC JUMP 0xffa045ae <_ARP_lut_add+0x252>;
ffa04450:	00 00       	NOP;
ffa04452:	00 00       	NOP;
ffa04454:	00 00       	NOP;
ffa04456:	20 e4 1e 00 	R0 = [P4 + 0x78];
ffa0445a:	00 0c       	CC = R0 == 0x0;
ffa0445c:	ab 18       	IF CC JUMP 0xffa045b2 <_ARP_lut_add+0x256>;
ffa0445e:	00 00       	NOP;
ffa04460:	00 00       	NOP;
ffa04462:	00 00       	NOP;
ffa04464:	20 e4 23 00 	R0 = [P4 + 0x8c];
ffa04468:	00 0c       	CC = R0 == 0x0;
ffa0446a:	a6 18       	IF CC JUMP 0xffa045b6 <_ARP_lut_add+0x25a>;
ffa0446c:	00 00       	NOP;
ffa0446e:	00 00       	NOP;
ffa04470:	00 00       	NOP;
ffa04472:	20 e4 28 00 	R0 = [P4 + 0xa0];
ffa04476:	00 0c       	CC = R0 == 0x0;
ffa04478:	a1 18       	IF CC JUMP 0xffa045ba <_ARP_lut_add+0x25e>;
ffa0447a:	00 00       	NOP;
ffa0447c:	00 00       	NOP;
ffa0447e:	00 00       	NOP;
ffa04480:	20 e4 2d 00 	R0 = [P4 + 0xb4];
ffa04484:	00 0c       	CC = R0 == 0x0;
ffa04486:	9c 18       	IF CC JUMP 0xffa045be <_ARP_lut_add+0x262>;
ffa04488:	00 00       	NOP;
ffa0448a:	00 00       	NOP;
ffa0448c:	00 00       	NOP;
ffa0448e:	61 a5       	R1 = W[P4 + 0xa] (Z);
ffa04490:	e0 a7       	R0 = W[P4 + 0x1e] (Z);
ffa04492:	01 09       	CC = R1 <= R0;
ffa04494:	18 02       	CC = !CC;
ffa04496:	00 02       	R0 = CC;
ffa04498:	10 32       	P2 = R0;
ffa0449a:	60 e4 19 00 	R0 = W[P4 + 0x32] (Z);
ffa0449e:	01 09       	CC = R1 <= R0;
ffa044a0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa044a2:	90 06       	IF !CC P2 = R0;
ffa044a4:	60 e4 23 00 	R0 = W[P4 + 0x46] (Z);
ffa044a8:	01 09       	CC = R1 <= R0;
ffa044aa:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa044ac:	90 06       	IF !CC P2 = R0;
ffa044ae:	60 e4 2d 00 	R0 = W[P4 + 0x5a] (Z);
ffa044b2:	01 09       	CC = R1 <= R0;
ffa044b4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa044b6:	90 06       	IF !CC P2 = R0;
ffa044b8:	60 e4 37 00 	R0 = W[P4 + 0x6e] (Z);
ffa044bc:	01 09       	CC = R1 <= R0;
ffa044be:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa044c0:	90 06       	IF !CC P2 = R0;
ffa044c2:	60 e4 41 00 	R0 = W[P4 + 0x82] (Z);
ffa044c6:	01 09       	CC = R1 <= R0;
ffa044c8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa044ca:	90 06       	IF !CC P2 = R0;
ffa044cc:	60 e4 4b 00 	R0 = W[P4 + 0x96] (Z);
ffa044d0:	01 09       	CC = R1 <= R0;
ffa044d2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa044d4:	90 06       	IF !CC P2 = R0;
ffa044d6:	60 e4 55 00 	R0 = W[P4 + 0xaa] (Z);
ffa044da:	01 09       	CC = R1 <= R0;
ffa044dc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa044de:	90 06       	IF !CC P2 = R0;
ffa044e0:	60 e4 5f 00 	R0 = W[P4 + 0xbe] (Z);
ffa044e4:	01 09       	CC = R1 <= R0;
ffa044e6:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa044e8:	90 06       	IF !CC P2 = R0;
ffa044ea:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa044ec:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa044ee:	17 93       	[P2] = R7;
ffa044f0:	58 99       	R0 = B[P3] (X);
ffa044f2:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa044f6:	98 e5 01 00 	R0 = B[P3 + 0x1] (X);
ffa044fa:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa044fe:	98 e5 02 00 	R0 = B[P3 + 0x2] (X);
ffa04502:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa04506:	98 e5 03 00 	R0 = B[P3 + 0x3] (X);
ffa0450a:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa0450e:	98 e5 04 00 	R0 = B[P3 + 0x4] (X);
ffa04512:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa04516:	98 e5 05 00 	R0 = B[P3 + 0x5] (X);
ffa0451a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d64 <_NetArpLut> */
ffa0451e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa04522:	09 e1 60 0d 	P1.L = 0xd60;		/* (3424)	P1=0xff900d60 <_NetArpLut_age> */
ffa04526:	48 95       	R0 = W[P1] (X);
ffa04528:	08 64       	R0 += 0x1;		/* (  1) */
ffa0452a:	08 97       	W[P1] = R0;
ffa0452c:	50 b5       	W[P2 + 0xa] = R0;
ffa0452e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04530:	10 b1       	[P2 + 0x10] = R0;
ffa04532:	01 e8 00 00 	UNLINK;
ffa04536:	bb 05       	(R7:7, P5:3) = [SP++];
ffa04538:	10 00       	RTS;
ffa0453a:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0453c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0453e:	58 99       	R0 = B[P3] (X);
ffa04540:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa04542:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa04546:	98 e5 01 00 	R0 = B[P3 + 0x1] (X);
ffa0454a:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0454e:	98 e5 02 00 	R0 = B[P3 + 0x2] (X);
ffa04552:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa04556:	98 e5 03 00 	R0 = B[P3 + 0x3] (X);
ffa0455a:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa0455e:	98 e5 04 00 	R0 = B[P3 + 0x4] (X);
ffa04562:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa04566:	98 e5 05 00 	R0 = B[P3 + 0x5] (X);
ffa0456a:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0456e:	01 e8 00 00 	UNLINK;
ffa04572:	bb 05       	(R7:7, P5:3) = [SP++];
ffa04574:	10 00       	RTS;
ffa04576:	1a 68       	P2 = 0x3 (X);		/*		P2=0x3(  3) */
ffa04578:	b9 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa0457a:	0a 68       	P2 = 0x1 (X);		/*		P2=0x1(  1) */
ffa0457c:	e0 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa0457e:	12 68       	P2 = 0x2 (X);		/*		P2=0x2(  2) */
ffa04580:	de 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa04582:	1a 68       	P2 = 0x3 (X);		/*		P2=0x3(  3) */
ffa04584:	dc 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa04586:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa04588:	da 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa0458a:	2a 68       	P2 = 0x5 (X);		/*		P2=0x5(  5) */
ffa0458c:	d8 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa0458e:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa04590:	d6 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa04592:	3a 68       	P2 = 0x7 (X);		/*		P2=0x7(  7) */
ffa04594:	d4 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa04596:	42 68       	P2 = 0x8 (X);		/*		P2=0x8(  8) */
ffa04598:	d2 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa0459a:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa0459c:	d0 2f       	JUMP.S 0xffa0453c <_ARP_lut_add+0x1e0>;
ffa0459e:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa045a0:	a5 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045a2:	0a 68       	P2 = 0x1 (X);		/*		P2=0x1(  1) */
ffa045a4:	a3 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045a6:	12 68       	P2 = 0x2 (X);		/*		P2=0x2(  2) */
ffa045a8:	a1 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045aa:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa045ac:	9f 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045ae:	2a 68       	P2 = 0x5 (X);		/*		P2=0x5(  5) */
ffa045b0:	9d 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045b2:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa045b4:	9b 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045b6:	3a 68       	P2 = 0x7 (X);		/*		P2=0x7(  7) */
ffa045b8:	99 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045ba:	42 68       	P2 = 0x8 (X);		/*		P2=0x8(  8) */
ffa045bc:	97 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
ffa045be:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa045c0:	95 2f       	JUMP.S 0xffa044ea <_ARP_lut_add+0x18e>;
	...

ffa045c4 <_ARP_tx>:
ffa045c4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa045c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900009 */
ffa045ca:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa045ce:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa045d2:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa045d6:	10 95 00 00 
ffa045da:	10 32       	P2 = R0;
ffa045dc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d60 <_NetArpLut_age> */
ffa045e0:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa045e4:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa045e6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d64 <_NetArpLut> */
ffa045ea:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa045ec:	52 91       	P2 = [P2];
ffa045ee:	0c e1 4c 0d 	P4.L = 0xd4c;		/* (3404)	P4=0xff900d4c <_NetOurMAC> */
ffa045f2:	95 ad       	P5 = [P2 + 0x18];
ffa045f4:	28 97       	W[P5] = R0;
ffa045f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa045f8:	a8 e6 02 00 	B[P5 + 0x2] = R0;
ffa045fc:	a8 e6 03 00 	B[P5 + 0x3] = R0;
ffa04600:	a8 e6 04 00 	B[P5 + 0x4] = R0;
ffa04604:	a8 e6 05 00 	B[P5 + 0x5] = R0;
ffa04608:	a8 e6 06 00 	B[P5 + 0x6] = R0;
ffa0460c:	a8 e6 07 00 	B[P5 + 0x7] = R0;
ffa04610:	60 99       	R0 = B[P4] (X);
ffa04612:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa04616:	a0 e5 01 00 	R0 = B[P4 + 0x1] (X);
ffa0461a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0461e:	a0 e5 02 00 	R0 = B[P4 + 0x2] (X);
ffa04622:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa04626:	a0 e5 03 00 	R0 = B[P4 + 0x3] (X);
ffa0462a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0462e:	a0 e5 04 00 	R0 = B[P4 + 0x4] (X);
ffa04632:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa04636:	a0 e5 05 00 	R0 = B[P4 + 0x5] (X);
ffa0463a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0463e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa04642:	ff e3 3d ef 	CALL 0xffa024bc <_htons>;
ffa04646:	e8 b5       	W[P5 + 0xe] = R0;
ffa04648:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0464a:	ff e3 39 ef 	CALL 0xffa024bc <_htons>;
ffa0464e:	28 b6       	W[P5 + 0x10] = R0;
ffa04650:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04654:	ff e3 34 ef 	CALL 0xffa024bc <_htons>;
ffa04658:	68 b6       	W[P5 + 0x12] = R0;
ffa0465a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0465c:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa04660:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04662:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa04666:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04668:	ff e3 2a ef 	CALL 0xffa024bc <_htons>;
ffa0466c:	e8 b6       	W[P5 + 0x16] = R0;
ffa0466e:	60 99       	R0 = B[P4] (X);
ffa04670:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04672:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa04676:	a9 e6 22 00 	B[P5 + 0x22] = R1;
ffa0467a:	a0 e5 01 00 	R0 = B[P4 + 0x1] (X);
ffa0467e:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa04682:	a9 e6 23 00 	B[P5 + 0x23] = R1;
ffa04686:	a0 e5 02 00 	R0 = B[P4 + 0x2] (X);
ffa0468a:	a8 e6 1a 00 	B[P5 + 0x1a] = R0;
ffa0468e:	a9 e6 24 00 	B[P5 + 0x24] = R1;
ffa04692:	a0 e5 03 00 	R0 = B[P4 + 0x3] (X);
ffa04696:	a8 e6 1b 00 	B[P5 + 0x1b] = R0;
ffa0469a:	a9 e6 25 00 	B[P5 + 0x25] = R1;
ffa0469e:	a0 e5 04 00 	R0 = B[P4 + 0x4] (X);
ffa046a2:	a8 e6 1c 00 	B[P5 + 0x1c] = R0;
ffa046a6:	a9 e6 26 00 	B[P5 + 0x26] = R1;
ffa046aa:	a0 e5 05 00 	R0 = B[P4 + 0x5] (X);
ffa046ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa046b2:	a8 e6 1d 00 	B[P5 + 0x1d] = R0;
ffa046b6:	a9 e6 27 00 	B[P5 + 0x27] = R1;
ffa046ba:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_NetOurIP> */
ffa046be:	50 99       	R0 = B[P2] (X);
ffa046c0:	a8 e6 1e 00 	B[P5 + 0x1e] = R0;
ffa046c4:	10 91       	R0 = [P2];
ffa046c6:	40 4e       	R0 >>= 0x8;
ffa046c8:	a8 e6 1f 00 	B[P5 + 0x1f] = R0;
ffa046cc:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa046d0:	a8 e6 20 00 	B[P5 + 0x20] = R0;
ffa046d4:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa046d8:	a8 e6 21 00 	B[P5 + 0x21] = R0;
ffa046dc:	af b2       	[P5 + 0x28] = R7;
ffa046de:	01 e8 00 00 	UNLINK;
ffa046e2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa046e4:	ff e2 fe f0 	JUMP.L 0xffa028e0 <_bfin_EMAC_send_nocopy>;

ffa046e8 <_ARP_req>:
ffa046e8:	e3 05       	[--SP] = (R7:4, P5:3);
ffa046ea:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900d38 <_rxIdx> */
ffa046ee:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa046f2:	08 e1 64 0d 	P0.L = 0xd64;		/* (3428)	P0=0xff900d64 <_NetArpLut> */
ffa046f6:	43 91       	P3 = [P0];
ffa046f8:	38 30       	R7 = R0;
ffa046fa:	01 34       	I0 = R1;
ffa046fc:	43 30       	R0 = P3;
ffa046fe:	07 08       	CC = R7 == R0;
ffa04700:	c1 18       	IF CC JUMP 0xffa04882 <_ARP_req+0x19a>;
ffa04702:	00 00       	NOP;
ffa04704:	00 00       	NOP;
ffa04706:	00 00       	NOP;
ffa04708:	44 ad       	P4 = [P0 + 0x14];
ffa0470a:	4c 30       	R1 = P4;
ffa0470c:	0f 08       	CC = R7 == R1;
ffa0470e:	e1 18       	IF CC JUMP 0xffa048d0 <_ARP_req+0x1e8>;
ffa04710:	00 00       	NOP;
ffa04712:	00 00       	NOP;
ffa04714:	00 00       	NOP;
ffa04716:	85 ae       	P5 = [P0 + 0x28];
ffa04718:	45 30       	R0 = P5;
ffa0471a:	07 08       	CC = R7 == R0;
ffa0471c:	e3 18       	IF CC JUMP 0xffa048e2 <_ARP_req+0x1fa>;
ffa0471e:	00 00       	NOP;
ffa04720:	00 00       	NOP;
ffa04722:	00 00       	NOP;
ffa04724:	c1 af       	P1 = [P0 + 0x3c];
ffa04726:	49 30       	R1 = P1;
ffa04728:	0f 08       	CC = R7 == R1;
ffa0472a:	e5 18       	IF CC JUMP 0xffa048f4 <_ARP_req+0x20c>;
ffa0472c:	00 00       	NOP;
ffa0472e:	00 00       	NOP;
ffa04730:	00 00       	NOP;
ffa04732:	04 e4 14 00 	R4 = [P0 + 0x50];
ffa04736:	27 08       	CC = R7 == R4;
ffa04738:	e8 18       	IF CC JUMP 0xffa04908 <_ARP_req+0x220>;
ffa0473a:	00 00       	NOP;
ffa0473c:	00 00       	NOP;
ffa0473e:	00 00       	NOP;
ffa04740:	05 e4 19 00 	R5 = [P0 + 0x64];
ffa04744:	2f 08       	CC = R7 == R5;
ffa04746:	eb 18       	IF CC JUMP 0xffa0491c <_ARP_req+0x234>;
ffa04748:	00 00       	NOP;
ffa0474a:	00 00       	NOP;
ffa0474c:	00 00       	NOP;
ffa0474e:	06 e4 1e 00 	R6 = [P0 + 0x78];
ffa04752:	37 08       	CC = R7 == R6;
ffa04754:	ee 18       	IF CC JUMP 0xffa04930 <_ARP_req+0x248>;
ffa04756:	00 00       	NOP;
ffa04758:	00 00       	NOP;
ffa0475a:	00 00       	NOP;
ffa0475c:	01 e4 23 00 	R1 = [P0 + 0x8c];
ffa04760:	0f 08       	CC = R7 == R1;
ffa04762:	f1 18       	IF CC JUMP 0xffa04944 <_ARP_req+0x25c>;
ffa04764:	00 00       	NOP;
ffa04766:	00 00       	NOP;
ffa04768:	00 00       	NOP;
ffa0476a:	03 e4 28 00 	R3 = [P0 + 0xa0];
ffa0476e:	1f 08       	CC = R7 == R3;
ffa04770:	f4 18       	IF CC JUMP 0xffa04958 <_ARP_req+0x270>;
ffa04772:	00 00       	NOP;
ffa04774:	00 00       	NOP;
ffa04776:	00 00       	NOP;
ffa04778:	02 e4 2d 00 	R2 = [P0 + 0xb4];
ffa0477c:	17 08       	CC = R7 == R2;
ffa0477e:	f7 18       	IF CC JUMP 0xffa0496c <_ARP_req+0x284>;
ffa04780:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa04784:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04788:	43 30       	R0 = P3;
ffa0478a:	52 91       	P2 = [P2];
ffa0478c:	07 08       	CC = R7 == R0;
ffa0478e:	fa bb       	[FP -0x4] = P2;
ffa04790:	f8 18       	IF CC JUMP 0xffa04980 <_ARP_req+0x298>;
ffa04792:	44 30       	R0 = P4;
ffa04794:	07 08       	CC = R7 == R0;
ffa04796:	15 19       	IF CC JUMP 0xffa049c0 <_ARP_req+0x2d8>;
ffa04798:	45 30       	R0 = P5;
ffa0479a:	07 08       	CC = R7 == R0;
ffa0479c:	17 19       	IF CC JUMP 0xffa049ca <_ARP_req+0x2e2>;
ffa0479e:	41 30       	R0 = P1;
ffa047a0:	07 08       	CC = R7 == R0;
ffa047a2:	19 19       	IF CC JUMP 0xffa049d4 <_ARP_req+0x2ec>;
ffa047a4:	27 08       	CC = R7 == R4;
ffa047a6:	1d 19       	IF CC JUMP 0xffa049e0 <_ARP_req+0x2f8>;
ffa047a8:	2f 08       	CC = R7 == R5;
ffa047aa:	21 19       	IF CC JUMP 0xffa049ec <_ARP_req+0x304>;
ffa047ac:	37 08       	CC = R7 == R6;
ffa047ae:	25 19       	IF CC JUMP 0xffa049f8 <_ARP_req+0x310>;
ffa047b0:	0f 08       	CC = R7 == R1;
ffa047b2:	29 19       	IF CC JUMP 0xffa04a04 <_ARP_req+0x31c>;
ffa047b4:	1f 08       	CC = R7 == R3;
ffa047b6:	2d 19       	IF CC JUMP 0xffa04a10 <_ARP_req+0x328>;
ffa047b8:	17 08       	CC = R7 == R2;
ffa047ba:	31 19       	IF CC JUMP 0xffa04a1c <_ARP_req+0x334>;
ffa047bc:	43 0c       	CC = P3 == 0x0;
ffa047be:	37 19       	IF CC JUMP 0xffa04a2c <_ARP_req+0x344>;
ffa047c0:	44 0c       	CC = P4 == 0x0;
ffa047c2:	37 19       	IF CC JUMP 0xffa04a30 <_ARP_req+0x348>;
ffa047c4:	45 0c       	CC = P5 == 0x0;
ffa047c6:	37 19       	IF CC JUMP 0xffa04a34 <_ARP_req+0x34c>;
ffa047c8:	41 0c       	CC = P1 == 0x0;
ffa047ca:	37 19       	IF CC JUMP 0xffa04a38 <_ARP_req+0x350>;
ffa047cc:	04 0c       	CC = R4 == 0x0;
ffa047ce:	37 19       	IF CC JUMP 0xffa04a3c <_ARP_req+0x354>;
ffa047d0:	05 0c       	CC = R5 == 0x0;
ffa047d2:	37 19       	IF CC JUMP 0xffa04a40 <_ARP_req+0x358>;
ffa047d4:	06 0c       	CC = R6 == 0x0;
ffa047d6:	37 19       	IF CC JUMP 0xffa04a44 <_ARP_req+0x35c>;
ffa047d8:	01 0c       	CC = R1 == 0x0;
ffa047da:	27 19       	IF CC JUMP 0xffa04a28 <_ARP_req+0x340>;
ffa047dc:	03 0c       	CC = R3 == 0x0;
ffa047de:	35 19       	IF CC JUMP 0xffa04a48 <_ARP_req+0x360>;
ffa047e0:	02 0c       	CC = R2 == 0x0;
ffa047e2:	35 19       	IF CC JUMP 0xffa04a4c <_ARP_req+0x364>;
ffa047e4:	00 00       	NOP;
ffa047e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa047ea:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa047ee:	41 a5       	R1 = W[P0 + 0xa] (Z);
ffa047f0:	c0 a7       	R0 = W[P0 + 0x1e] (Z);
ffa047f2:	01 09       	CC = R1 <= R0;
ffa047f4:	18 02       	CC = !CC;
ffa047f6:	00 02       	R0 = CC;
ffa047f8:	08 32       	P1 = R0;
ffa047fa:	40 e4 19 00 	R0 = W[P0 + 0x32] (Z);
ffa047fe:	01 09       	CC = R1 <= R0;
ffa04800:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04802:	88 06       	IF !CC P1 = R0;
ffa04804:	50 e4 23 00 	R0 = W[P2 + 0x46] (Z);
ffa04808:	01 09       	CC = R1 <= R0;
ffa0480a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0480c:	88 06       	IF !CC P1 = R0;
ffa0480e:	50 e4 2d 00 	R0 = W[P2 + 0x5a] (Z);
ffa04812:	01 09       	CC = R1 <= R0;
ffa04814:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04816:	88 06       	IF !CC P1 = R0;
ffa04818:	50 e4 37 00 	R0 = W[P2 + 0x6e] (Z);
ffa0481c:	01 09       	CC = R1 <= R0;
ffa0481e:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa04820:	88 06       	IF !CC P1 = R0;
ffa04822:	50 e4 41 00 	R0 = W[P2 + 0x82] (Z);
ffa04826:	01 09       	CC = R1 <= R0;
ffa04828:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0482a:	88 06       	IF !CC P1 = R0;
ffa0482c:	50 e4 4b 00 	R0 = W[P2 + 0x96] (Z);
ffa04830:	01 09       	CC = R1 <= R0;
ffa04832:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa04834:	88 06       	IF !CC P1 = R0;
ffa04836:	50 e4 55 00 	R0 = W[P2 + 0xaa] (Z);
ffa0483a:	01 09       	CC = R1 <= R0;
ffa0483c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0483e:	88 06       	IF !CC P1 = R0;
ffa04840:	50 e4 5f 00 	R0 = W[P2 + 0xbe] (Z);
ffa04844:	01 09       	CC = R1 <= R0;
ffa04846:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa04848:	88 06       	IF !CC P1 = R0;
ffa0484a:	89 5e       	P2 = P1 + (P1 << 0x2);
ffa0484c:	90 5e       	P2 = P0 + (P2 << 0x2);
ffa0484e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04850:	10 b1       	[P2 + 0x10] = R0;
ffa04852:	f1 b9       	R1 = [FP -0x4];
ffa04854:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa04858:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa0485c:	04 cc 08 00 	R0 = R1 + R0 (NS) || [P2] = R7 || NOP;
ffa04860:	17 93 00 00 
ffa04864:	09 e1 60 0d 	P1.L = 0xd60;		/* (3424)	P1=0xff900d60 <_NetArpLut_age> */
ffa04868:	d0 b0       	[P2 + 0xc] = R0;
ffa0486a:	48 95       	R0 = W[P1] (X);
ffa0486c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0486e:	08 97       	W[P1] = R0;
ffa04870:	50 b5       	W[P2 + 0xa] = R0;
ffa04872:	07 30       	R0 = R7;
ffa04874:	ff e3 a8 fe 	CALL 0xffa045c4 <_ARP_tx>;
ffa04878:	01 e8 00 00 	UNLINK;
ffa0487c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0487e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa04880:	10 00       	RTS;
ffa04882:	00 a1       	R0 = [P0 + 0x10];
ffa04884:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04886:	40 1f       	IF CC JUMP 0xffa04706 <_ARP_req+0x1e> (BP);
ffa04888:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0488a:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0488c:	90 5e       	P2 = P0 + (P2 << 0x2);
ffa0488e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa04892:	88 32       	P1 = I0;
ffa04894:	08 9a       	B[P1++] = R0;
ffa04896:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0489a:	80 32       	P0 = I0;
ffa0489c:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa048a0:	90 e5 06 00 	R0 = B[P2 + 0x6] (X);
ffa048a4:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa048a8:	41 32       	P0 = P1;
ffa048aa:	90 e5 07 00 	R0 = B[P2 + 0x7] (X);
ffa048ae:	08 6c       	P0 += 0x1;		/* (  1) */
ffa048b0:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa048b4:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa048b8:	11 6c       	P1 += 0x2;		/* (  2) */
ffa048ba:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa048be:	90 e5 09 00 	R0 = B[P2 + 0x9] (X);
ffa048c2:	88 e6 02 00 	B[P1 + 0x2] = R0;
ffa048c6:	01 e8 00 00 	UNLINK;
ffa048ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa048cc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa048ce:	10 00       	RTS;
ffa048d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900000 <_l1_data_a> */
ffa048d4:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa048d8:	50 a2       	R0 = [P2 + 0x24];
ffa048da:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa048dc:	1c 1f       	IF CC JUMP 0xffa04714 <_ARP_req+0x2c> (BP);
ffa048de:	0a 68       	P2 = 0x1 (X);		/*		P2=0x1(  1) */
ffa048e0:	d5 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa048e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900001 */
ffa048e6:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa048ea:	90 a3       	R0 = [P2 + 0x38];
ffa048ec:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa048ee:	1a 1f       	IF CC JUMP 0xffa04722 <_ARP_req+0x3a> (BP);
ffa048f0:	12 68       	P2 = 0x2 (X);		/*		P2=0x2(  2) */
ffa048f2:	cc 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa048f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900002 */
ffa048f8:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa048fc:	10 e4 13 00 	R0 = [P2 + 0x4c];
ffa04900:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04902:	17 1f       	IF CC JUMP 0xffa04730 <_ARP_req+0x48> (BP);
ffa04904:	1a 68       	P2 = 0x3 (X);		/*		P2=0x3(  3) */
ffa04906:	c2 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa04908:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900003 */
ffa0490c:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04910:	10 e4 18 00 	R0 = [P2 + 0x60];
ffa04914:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04916:	14 1f       	IF CC JUMP 0xffa0473e <_ARP_req+0x56> (BP);
ffa04918:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0491a:	b8 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa0491c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa04920:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04924:	10 e4 1d 00 	R0 = [P2 + 0x74];
ffa04928:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0492a:	11 1f       	IF CC JUMP 0xffa0474c <_ARP_req+0x64> (BP);
ffa0492c:	2a 68       	P2 = 0x5 (X);		/*		P2=0x5(  5) */
ffa0492e:	ae 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa04930:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900005 */
ffa04934:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04938:	10 e4 22 00 	R0 = [P2 + 0x88];
ffa0493c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0493e:	0e 1f       	IF CC JUMP 0xffa0475a <_ARP_req+0x72> (BP);
ffa04940:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa04942:	a4 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa04944:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa04948:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa0494c:	10 e4 27 00 	R0 = [P2 + 0x9c];
ffa04950:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04952:	0b 1f       	IF CC JUMP 0xffa04768 <_ARP_req+0x80> (BP);
ffa04954:	3a 68       	P2 = 0x7 (X);		/*		P2=0x7(  7) */
ffa04956:	9a 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa04958:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900007 */
ffa0495c:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04960:	10 e4 2c 00 	R0 = [P2 + 0xb0];
ffa04964:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04966:	08 1f       	IF CC JUMP 0xffa04776 <_ARP_req+0x8e> (BP);
ffa04968:	42 68       	P2 = 0x8 (X);		/*		P2=0x8(  8) */
ffa0496a:	90 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa0496c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900008 */
ffa04970:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_NetArpLut> */
ffa04974:	10 e4 31 00 	R0 = [P2 + 0xc4];
ffa04978:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0497a:	03 1f       	IF CC JUMP 0xffa04780 <_ARP_req+0x98> (BP);
ffa0497c:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa0497e:	86 2f       	JUMP.S 0xffa0488a <_ARP_req+0x1a2>;
ffa04980:	00 a1       	R0 = [P0 + 0x10];
ffa04982:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa04984:	07 1f       	IF CC JUMP 0xffa04792 <_ARP_req+0xaa> (BP);
ffa04986:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa04988:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0498a:	50 5f       	P5 = P0 + (P2 << 0x2);
ffa0498c:	e8 a0       	R0 = [P5 + 0xc];
ffa0498e:	f1 b9       	R1 = [FP -0x4];
ffa04990:	81 09       	CC = R1 < R0 (IU);
ffa04992:	73 1f       	IF CC JUMP 0xffa04878 <_ARP_req+0x190> (BP);
ffa04994:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04998:	0f 30       	R1 = R7;
ffa0499a:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa0499e:	ff e3 71 e4 	CALL 0xffa01280 <_printf_ip>;
ffa049a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa049a6:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa049aa:	ff e3 11 e4 	CALL 0xffa011cc <_printf_str>;
ffa049ae:	07 30       	R0 = R7;
ffa049b0:	ff e3 0a fe 	CALL 0xffa045c4 <_ARP_tx>;
ffa049b4:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa049b8:	f1 b9       	R1 = [FP -0x4];
ffa049ba:	01 50       	R0 = R1 + R0;
ffa049bc:	e8 b0       	[P5 + 0xc] = R0;
ffa049be:	5d 2f       	JUMP.S 0xffa04878 <_ARP_req+0x190>;
ffa049c0:	40 a2       	R0 = [P0 + 0x24];
ffa049c2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa049c4:	ea 1e       	IF CC JUMP 0xffa04798 <_ARP_req+0xb0> (BP);
ffa049c6:	0a 68       	P2 = 0x1 (X);		/*		P2=0x1(  1) */
ffa049c8:	e0 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa049ca:	80 a3       	R0 = [P0 + 0x38];
ffa049cc:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa049ce:	e8 1e       	IF CC JUMP 0xffa0479e <_ARP_req+0xb6> (BP);
ffa049d0:	12 68       	P2 = 0x2 (X);		/*		P2=0x2(  2) */
ffa049d2:	db 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa049d4:	00 e4 13 00 	R0 = [P0 + 0x4c];
ffa049d8:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa049da:	e5 1e       	IF CC JUMP 0xffa047a4 <_ARP_req+0xbc> (BP);
ffa049dc:	1a 68       	P2 = 0x3 (X);		/*		P2=0x3(  3) */
ffa049de:	d5 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa049e0:	00 e4 18 00 	R0 = [P0 + 0x60];
ffa049e4:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa049e6:	e1 1e       	IF CC JUMP 0xffa047a8 <_ARP_req+0xc0> (BP);
ffa049e8:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa049ea:	cf 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa049ec:	00 e4 1d 00 	R0 = [P0 + 0x74];
ffa049f0:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa049f2:	dd 1e       	IF CC JUMP 0xffa047ac <_ARP_req+0xc4> (BP);
ffa049f4:	2a 68       	P2 = 0x5 (X);		/*		P2=0x5(  5) */
ffa049f6:	c9 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa049f8:	00 e4 22 00 	R0 = [P0 + 0x88];
ffa049fc:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa049fe:	d9 1e       	IF CC JUMP 0xffa047b0 <_ARP_req+0xc8> (BP);
ffa04a00:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa04a02:	c3 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa04a04:	00 e4 27 00 	R0 = [P0 + 0x9c];
ffa04a08:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa04a0a:	d5 1e       	IF CC JUMP 0xffa047b4 <_ARP_req+0xcc> (BP);
ffa04a0c:	3a 68       	P2 = 0x7 (X);		/*		P2=0x7(  7) */
ffa04a0e:	bd 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa04a10:	00 e4 2c 00 	R0 = [P0 + 0xb0];
ffa04a14:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa04a16:	d1 1e       	IF CC JUMP 0xffa047b8 <_ARP_req+0xd0> (BP);
ffa04a18:	42 68       	P2 = 0x8 (X);		/*		P2=0x8(  8) */
ffa04a1a:	b7 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa04a1c:	00 e4 31 00 	R0 = [P0 + 0xc4];
ffa04a20:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa04a22:	cd 1e       	IF CC JUMP 0xffa047bc <_ARP_req+0xd4> (BP);
ffa04a24:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa04a26:	b1 2f       	JUMP.S 0xffa04988 <_ARP_req+0x2a0>;
ffa04a28:	39 68       	P1 = 0x7 (X);		/*		P1=0x7(  7) */
ffa04a2a:	10 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a2c:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa04a2e:	0e 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a30:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa04a32:	0c 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a34:	11 68       	P1 = 0x2 (X);		/*		P1=0x2(  2) */
ffa04a36:	0a 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a38:	19 68       	P1 = 0x3 (X);		/*		P1=0x3(  3) */
ffa04a3a:	08 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a3c:	21 68       	P1 = 0x4 (X);		/*		P1=0x4(  4) */
ffa04a3e:	06 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a40:	29 68       	P1 = 0x5 (X);		/*		P1=0x5(  5) */
ffa04a42:	04 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a44:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa04a46:	02 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a48:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa04a4a:	00 2f       	JUMP.S 0xffa0484a <_ARP_req+0x162>;
ffa04a4c:	49 68       	P1 = 0x9 (X);		/*		P1=0x9(  9) */
ffa04a4e:	fe 2e       	JUMP.S 0xffa0484a <_ARP_req+0x162>;

ffa04a50 <_ARP_rx>:
ffa04a50:	fb 05       	[--SP] = (R7:7, P5:3);
ffa04a52:	20 32       	P4 = R0;
ffa04a54:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04a58:	39 30       	R7 = R1;
ffa04a5a:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa04a5c:	ff e3 30 ed 	CALL 0xffa024bc <_htons>;
ffa04a60:	c0 42       	R0 = R0.L (Z);
ffa04a62:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa04a66:	08 08       	CC = R0 == R1;
ffa04a68:	06 18       	IF CC JUMP 0xffa04a74 <_ARP_rx+0x24>;
ffa04a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a6c:	01 e8 00 00 	UNLINK;
ffa04a70:	bb 05       	(R7:7, P5:3) = [SP++];
ffa04a72:	10 00       	RTS;
ffa04a74:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa04a76:	07 0a       	CC = R7 <= R0 (IU);
ffa04a78:	f9 1f       	IF CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04a7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04a7c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa04a7e:	ff e3 1f ed 	CALL 0xffa024bc <_htons>;
ffa04a82:	c0 42       	R0 = R0.L (Z);
ffa04a84:	07 08       	CC = R7 == R0;
ffa04a86:	f2 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04a88:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04a8c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa04a8e:	ff e3 17 ed 	CALL 0xffa024bc <_htons>;
ffa04a92:	c0 42       	R0 = R0.L (Z);
ffa04a94:	07 08       	CC = R7 == R0;
ffa04a96:	ea 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04a98:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa04a9a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa04a9e:	08 08       	CC = R0 == R1;
ffa04aa0:	e5 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04aa2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04aa4:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa04aa6:	ff e3 0b ed 	CALL 0xffa024bc <_htons>;
ffa04aaa:	c0 42       	R0 = R0.L (Z);
ffa04aac:	07 08       	CC = R7 == R0;
ffa04aae:	0c 14       	IF !CC JUMP 0xffa04ac6 <_ARP_rx+0x76> (BP);
ffa04ab0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900009 */
ffa04ab4:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_NetOurMAC> */
ffa04ab8:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa04abc:	10 99       	R0 = B[P2] (Z);
ffa04abe:	01 08       	CC = R1 == R0;
ffa04ac0:	ba 18       	IF CC JUMP 0xffa04c34 <_ARP_rx+0x1e4>;
ffa04ac2:	00 00       	NOP;
ffa04ac4:	00 00       	NOP;
ffa04ac6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04ac8:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa04aca:	ff e3 f9 ec 	CALL 0xffa024bc <_htons>;
ffa04ace:	c0 42       	R0 = R0.L (Z);
ffa04ad0:	07 08       	CC = R7 == R0;
ffa04ad2:	cc 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04ad4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04ad8:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa04ada:	ff e3 f1 ec 	CALL 0xffa024bc <_htons>;
ffa04ade:	c0 42       	R0 = R0.L (Z);
ffa04ae0:	07 08       	CC = R7 == R0;
ffa04ae2:	c4 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04ae4:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa04ae6:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa04aea:	08 08       	CC = R0 == R1;
ffa04aec:	bf 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04aee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04af0:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa04af2:	ff e3 e5 ec 	CALL 0xffa024bc <_htons>;
ffa04af6:	c0 42       	R0 = R0.L (Z);
ffa04af8:	07 08       	CC = R7 == R0;
ffa04afa:	b8 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04afc:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa04b00:	07 e1 58 0d 	R7.L = 0xd58;		/* (3416)	R7=0xff900d58 <_NetOurIP>(-7336616) */
ffa04b04:	17 32       	P2 = R7;
ffa04b06:	a1 a2       	R1 = [P4 + 0x28];
ffa04b08:	10 91       	R0 = [P2];
ffa04b0a:	01 08       	CC = R1 == R0;
ffa04b0c:	af 17       	IF !CC JUMP 0xffa04a6a <_ARP_rx+0x1a> (BP);
ffa04b0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04b12:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa04b16:	ff e3 5b e3 	CALL 0xffa011cc <_printf_str>;
ffa04b1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_NetOurMAC> */
ffa04b1e:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa04b22:	10 95       	R0 = W[P2] (Z);
ffa04b24:	10 32       	P2 = R0;
ffa04b26:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900009 */
ffa04b2a:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa04b2e:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa04b30:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d20 <_NetDHCPserv> */
ffa04b34:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa04b36:	52 91       	P2 = [P2];
ffa04b38:	0d e1 4c 0d 	P5.L = 0xd4c;		/* (3404)	P5=0xff900d4c <_NetOurMAC> */
ffa04b3c:	93 ad       	P3 = [P2 + 0x18];
ffa04b3e:	18 97       	W[P3] = R0;
ffa04b40:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa04b44:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa04b48:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa04b4c:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa04b50:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa04b54:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa04b58:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa04b5c:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa04b60:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa04b64:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa04b68:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa04b6c:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa04b70:	68 99       	R0 = B[P5] (X);
ffa04b72:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa04b76:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa04b7a:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa04b7e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa04b82:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa04b86:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa04b8a:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa04b8e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa04b92:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa04b96:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa04b9a:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa04b9e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa04ba2:	ff e3 8d ec 	CALL 0xffa024bc <_htons>;
ffa04ba6:	d8 b5       	W[P3 + 0xe] = R0;
ffa04ba8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04baa:	ff e3 89 ec 	CALL 0xffa024bc <_htons>;
ffa04bae:	18 b6       	W[P3 + 0x10] = R0;
ffa04bb0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04bb4:	ff e3 84 ec 	CALL 0xffa024bc <_htons>;
ffa04bb8:	58 b6       	W[P3 + 0x12] = R0;
ffa04bba:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa04bbc:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa04bc0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04bc2:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa04bc6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04bc8:	ff e3 7a ec 	CALL 0xffa024bc <_htons>;
ffa04bcc:	44 32       	P0 = P4;
ffa04bce:	d8 b6       	W[P3 + 0x16] = R0;
ffa04bd0:	53 32       	P2 = P3;
ffa04bd2:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa04bd4:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa04bd6:	b2 e0 08 10 	LSETUP(0xffa04bda <_ARP_rx+0x18a>, 0xffa04be6 <_ARP_rx+0x196>) LC1 = P1;
ffa04bda:	68 98       	R0 = B[P5++] (X);
ffa04bdc:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa04be0:	40 98       	R0 = B[P0++] (X);
ffa04be2:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa04be6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa04be8:	17 32       	P2 = R7;
ffa04bea:	50 99       	R0 = B[P2] (X);
ffa04bec:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa04bf0:	10 91       	R0 = [P2];
ffa04bf2:	40 4e       	R0 >>= 0x8;
ffa04bf4:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa04bf8:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa04bfc:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa04c00:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa04c04:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa04c08:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa04c0c:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa04c10:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa04c14:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa04c18:	f3 b0       	[SP + 0xc] = R3;
ffa04c1a:	ff e3 ab eb 	CALL 0xffa02370 <_FormatIPAddress>;
ffa04c1e:	98 b2       	[P3 + 0x28] = R0;
ffa04c20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa04c24:	00 e1 70 05 	R0.L = 0x570;		/* (1392)	R0=0xff900570(-7338640) */
ffa04c28:	ff e3 d2 e2 	CALL 0xffa011cc <_printf_str>;
ffa04c2c:	ff e3 5a ee 	CALL 0xffa028e0 <_bfin_EMAC_send_nocopy>;
ffa04c30:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c32:	1d 2f       	JUMP.S 0xffa04a6c <_ARP_rx+0x1c>;
ffa04c34:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa04c38:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa04c3c:	01 08       	CC = R1 == R0;
ffa04c3e:	44 17       	IF !CC JUMP 0xffa04ac6 <_ARP_rx+0x76> (BP);
ffa04c40:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa04c44:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa04c48:	01 08       	CC = R1 == R0;
ffa04c4a:	3e 17       	IF !CC JUMP 0xffa04ac6 <_ARP_rx+0x76> (BP);
ffa04c4c:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa04c50:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa04c54:	01 08       	CC = R1 == R0;
ffa04c56:	38 17       	IF !CC JUMP 0xffa04ac6 <_ARP_rx+0x76> (BP);
ffa04c58:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa04c5c:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa04c60:	01 08       	CC = R1 == R0;
ffa04c62:	32 17       	IF !CC JUMP 0xffa04ac6 <_ARP_rx+0x76> (BP);
ffa04c64:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa04c68:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa04c6c:	01 08       	CC = R1 == R0;
ffa04c6e:	2c 17       	IF !CC JUMP 0xffa04ac6 <_ARP_rx+0x76> (BP);
ffa04c70:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa04c72:	44 30       	R0 = P4;
ffa04c74:	ff e3 44 ec 	CALL 0xffa024fc <_pack4chars>;
ffa04c78:	38 30       	R7 = R0;
ffa04c7a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04c7e:	0f 30       	R1 = R7;
ffa04c80:	00 e1 30 05 	R0.L = 0x530;		/* (1328)	R0=0xff900530(-7338704) */
ffa04c84:	ff e3 fe e2 	CALL 0xffa01280 <_printf_ip>;
ffa04c88:	5c 32       	P3 = P4;
ffa04c8a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900530(-7338704) */
ffa04c8e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900d4c <_NetOurMAC> */
ffa04c92:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa04c96:	0c e1 64 0d 	P4.L = 0xd64;		/* (3428)	P4=0xff900d64 <_NetArpLut> */
ffa04c9a:	ff e3 99 e2 	CALL 0xffa011cc <_printf_str>;
ffa04c9e:	d3 6f       	P3 += -0x6;		/* ( -6) */
ffa04ca0:	4c 32       	P1 = P4;
ffa04ca2:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa04ca4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa04ca6:	b2 e0 06 20 	LSETUP(0xffa04caa <_ARP_rx+0x25a>, 0xffa04cb2 <_ARP_rx+0x262>) LC1 = P2;
ffa04caa:	08 91       	R0 = [P1];
ffa04cac:	07 08       	CC = R7 == R0;
ffa04cae:	47 18       	IF CC JUMP 0xffa04d3c <_ARP_rx+0x2ec>;
ffa04cb0:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa04cb2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa04cb4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007e0(-7338016) */
ffa04cb8:	0f 30       	R1 = R7;
ffa04cba:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa04cbe:	ff e3 e1 e2 	CALL 0xffa01280 <_printf_ip>;
ffa04cc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa04cc6:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa04cca:	ff e3 81 e2 	CALL 0xffa011cc <_printf_str>;
ffa04cce:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa04cd2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04cd4:	09 e1 64 0d 	P1.L = 0xd64;		/* (3428)	P1=0xff900d64 <_NetArpLut> */
ffa04cd8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa04cda:	b2 e0 06 20 	LSETUP(0xffa04cde <_ARP_rx+0x28e>, 0xffa04ce6 <_ARP_rx+0x296>) LC1 = P2;
ffa04cde:	08 91       	R0 = [P1];
ffa04ce0:	00 0c       	CC = R0 == 0x0;
ffa04ce2:	12 18       	IF CC JUMP 0xffa04d06 <_ARP_rx+0x2b6>;
ffa04ce4:	09 64       	R1 += 0x1;		/* (  1) */
ffa04ce6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa04ce8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d64 <_NetArpLut> */
ffa04cec:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04cee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04cf0:	63 a5       	R3 = W[P4 + 0xa] (Z);
ffa04cf2:	09 e1 82 0d 	P1.L = 0xd82;		/* (3458)	P1=0xff900d82 */
ffa04cf6:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa04cf8:	b2 e0 06 20 	LSETUP(0xffa04cfc <_ARP_rx+0x2ac>, 0xffa04d04 <_ARP_rx+0x2b4>) LC1 = P2;
ffa04cfc:	08 95       	R0 = W[P1] (Z);
ffa04cfe:	03 09       	CC = R3 <= R0;
ffa04d00:	0a 06       	IF !CC R1 = R2;
ffa04d02:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa04d04:	0a 64       	R2 += 0x1;		/* (  1) */
ffa04d06:	11 32       	P2 = R1;
ffa04d08:	6b 32       	P5 = P3;
ffa04d0a:	50 44       	P0 = P2 << 0x2;
ffa04d0c:	c2 45       	P2 = (P2 + P0) << 0x2;
ffa04d0e:	62 5a       	P1 = P2 + P4;
ffa04d10:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04d12:	0f 93       	[P1] = R7;
ffa04d14:	a2 5a       	P2 = P2 + P4;
ffa04d16:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa04d18:	b2 e0 03 10 	LSETUP(0xffa04d1c <_ARP_rx+0x2cc>, 0xffa04d1e <_ARP_rx+0x2ce>) LC1 = P1;
ffa04d1c:	68 98       	R0 = B[P5++] (X);
ffa04d1e:	10 9a       	B[P2++] = R0;
ffa04d20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900009 */
ffa04d24:	0a e1 60 0d 	P2.L = 0xd60;		/* (3424)	P2=0xff900d60 <_NetArpLut_age> */
ffa04d28:	50 95       	R0 = W[P2] (X);
ffa04d2a:	08 64       	R0 += 0x1;		/* (  1) */
ffa04d2c:	10 97       	W[P2] = R0;
ffa04d2e:	11 32       	P2 = R1;
ffa04d30:	d0 45       	P0 = (P0 + P2) << 0x2;
ffa04d32:	a0 5a       	P2 = P0 + P4;
ffa04d34:	50 b5       	W[P2 + 0xa] = R0;
ffa04d36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04d38:	10 b1       	[P2 + 0x10] = R0;
ffa04d3a:	99 2e       	JUMP.S 0xffa04a6c <_ARP_rx+0x1c>;
ffa04d3c:	43 32       	P0 = P3;
ffa04d3e:	65 5a       	P1 = P5 + P4;
ffa04d40:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa04d42:	b2 e0 03 20 	LSETUP(0xffa04d46 <_ARP_rx+0x2f6>, 0xffa04d48 <_ARP_rx+0x2f8>) LC1 = P2;
ffa04d46:	40 98       	R0 = B[P0++] (X);
ffa04d48:	08 9a       	B[P1++] = R0;
ffa04d4a:	73 2f       	JUMP.S 0xffa04c30 <_ARP_rx+0x1e0>;

ffa04d4c <_tcp_length>:
ffa04d4c:	c5 04       	[--SP] = (P5:5);
ffa04d4e:	28 32       	P5 = R0;
ffa04d50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04d54:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa04d56:	ff e3 b3 eb 	CALL 0xffa024bc <_htons>;
ffa04d5a:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa04d5e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa04d60:	51 54       	R1 = R1 & R2;
ffa04d62:	11 4f       	R1 <<= 0x2;
ffa04d64:	c0 42       	R0 = R0.L (Z);
ffa04d66:	08 52       	R0 = R0 - R1;
ffa04d68:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa04d6c:	11 4d       	R1 >>>= 0x2;
ffa04d6e:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa04d70:	51 54       	R1 = R1 & R2;
ffa04d72:	01 e8 00 00 	UNLINK;
ffa04d76:	08 52       	R0 = R0 - R1;
ffa04d78:	85 04       	(P5:5) = [SP++];
ffa04d7a:	10 00       	RTS;

ffa04d7c <_tcp_checksum_calc>:
ffa04d7c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa04d7e:	28 32       	P5 = R0;
ffa04d80:	29 30       	R5 = R1;
ffa04d82:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04d86:	e9 a7       	R1 = W[P5 + 0x1e] (Z);
ffa04d88:	a8 a7       	R0 = W[P5 + 0x1c] (Z);
ffa04d8a:	08 50       	R0 = R0 + R1;
ffa04d8c:	69 e4 10 00 	R1 = W[P5 + 0x20] (Z);
ffa04d90:	08 50       	R0 = R0 + R1;
ffa04d92:	6e e4 11 00 	R6 = W[P5 + 0x22] (Z);
ffa04d96:	86 51       	R6 = R6 + R0;
ffa04d98:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04d9c:	10 4e       	R0 >>= 0x2;
ffa04d9e:	05 50       	R0 = R5 + R0;
ffa04da0:	c0 42       	R0 = R0.L (Z);
ffa04da2:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa04da6:	ff e3 8b eb 	CALL 0xffa024bc <_htons>;
ffa04daa:	47 4f       	R7 <<= 0x8;
ffa04dac:	c0 42       	R0 = R0.L (Z);
ffa04dae:	c7 51       	R7 = R7 + R0;
ffa04db0:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa04db2:	f7 50       	R3 = R7 + R6;
ffa04db4:	0d 1c       	IF CC JUMP 0xffa04dce <_tcp_checksum_calc+0x52> (BP);
ffa04db6:	0d 32       	P1 = R5;
ffa04db8:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04dbc:	10 4e       	R0 >>= 0x2;
ffa04dbe:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa04dc0:	0d 64       	R5 += 0x1;		/* (  1) */
ffa04dc2:	a9 5a       	P2 = P1 + P5;
ffa04dc4:	08 32       	P1 = R0;
ffa04dc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04dc8:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa04dca:	8a 5a       	P2 = P2 + P1;
ffa04dcc:	10 9b       	B[P2] = R0;
ffa04dce:	82 c6 0d 83 	R1 = R5 >> 0x1f;
ffa04dd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04dd4:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa04dd8:	69 50       	R1 = R1 + R5;
ffa04dda:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04dde:	09 4d       	R1 >>>= 0x1;
ffa04de0:	18 4e       	R0 >>= 0x3;
ffa04de2:	41 50       	R1 = R1 + R0;
ffa04de4:	01 0d       	CC = R1 <= 0x0;
ffa04de6:	09 18       	IF CC JUMP 0xffa04df8 <_tcp_checksum_calc+0x7c>;
ffa04de8:	55 32       	P2 = P5;
ffa04dea:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa04dec:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa04dee:	0a 64       	R2 += 0x1;		/* (  1) */
ffa04df0:	10 94       	R0 = W[P2++] (Z);
ffa04df2:	0a 08       	CC = R2 == R1;
ffa04df4:	c3 50       	R3 = R3 + R0;
ffa04df6:	fc 17       	IF !CC JUMP 0xffa04dee <_tcp_checksum_calc+0x72> (BP);
ffa04df8:	d8 42       	R0 = R3.L (Z);
ffa04dfa:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa04dfe:	08 50       	R0 = R0 + R1;
ffa04e00:	c0 43       	R0 =~ R0;
ffa04e02:	01 e8 00 00 	UNLINK;
ffa04e06:	c0 42       	R0 = R0.L (Z);
ffa04e08:	ad 05       	(R7:5, P5:5) = [SP++];
ffa04e0a:	10 00       	RTS;

ffa04e0c <_tcp_packet_setup>:
ffa04e0c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa04e0e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa04e12:	29 32       	P5 = R1;
ffa04e14:	7f 30       	R7 = FP;
ffa04e16:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa04e18:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04e1a:	f0 bb       	[FP -0x4] = R0;
ffa04e1c:	07 30       	R0 = R7;
ffa04e1e:	2a 30       	R5 = R2;
ffa04e20:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa04e24:	ff e3 6c ee 	CALL 0xffa02afc <_eth_header_setup>;
ffa04e28:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa04e2c:	68 99 00 00 
ffa04e30:	80 0c       	CC = R0 < 0x0;
ffa04e32:	14 18       	IF CC JUMP 0xffa04e5a <_tcp_packet_setup+0x4e>;
ffa04e34:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa04e36:	f0 b0       	[SP + 0xc] = R0;
ffa04e38:	15 30       	R2 = R5;
ffa04e3a:	01 30       	R0 = R1;
ffa04e3c:	0f 30       	R1 = R7;
ffa04e3e:	ff e3 73 eb 	CALL 0xffa02524 <_ip_header_setup>;
ffa04e42:	b9 a2       	R1 = [FP + 0x28];
ffa04e44:	f1 b0       	[SP + 0xc] = R1;
ffa04e46:	f9 a2       	R1 = [FP + 0x2c];
ffa04e48:	31 b1       	[SP + 0x10] = R1;
ffa04e4a:	72 43       	R2 = R6.B (Z);
ffa04e4c:	0f 30       	R1 = R7;
ffa04e4e:	ff e3 5f f0 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa04e52:	01 e8 00 00 	UNLINK;
ffa04e56:	ad 05       	(R7:5, P5:5) = [SP++];
ffa04e58:	10 00       	RTS;
ffa04e5a:	01 e8 00 00 	UNLINK;
ffa04e5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04e60:	ad 05       	(R7:5, P5:5) = [SP++];
ffa04e62:	10 00       	RTS;

ffa04e64 <_tcp_checksum_check>:
ffa04e64:	e5 05       	[--SP] = (R7:4, P5:5);
ffa04e66:	28 32       	P5 = R0;
ffa04e68:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04e6c:	29 30       	R5 = R1;
ffa04e6e:	a8 a7       	R0 = W[P5 + 0x1c] (Z);
ffa04e70:	e9 a7       	R1 = W[P5 + 0x1e] (Z);
ffa04e72:	08 50       	R0 = R0 + R1;
ffa04e74:	69 e4 10 00 	R1 = W[P5 + 0x20] (Z);
ffa04e78:	08 50       	R0 = R0 + R1;
ffa04e7a:	6e e4 11 00 	R6 = W[P5 + 0x22] (Z);
ffa04e7e:	86 51       	R6 = R6 + R0;
ffa04e80:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04e84:	10 4e       	R0 >>= 0x2;
ffa04e86:	05 50       	R0 = R5 + R0;
ffa04e88:	c0 42       	R0 = R0.L (Z);
ffa04e8a:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa04e8e:	6c e5 1a 00 	R4 = W[P5 + 0x34] (X);
ffa04e92:	ff e3 15 eb 	CALL 0xffa024bc <_htons>;
ffa04e96:	47 4f       	R7 <<= 0x8;
ffa04e98:	c0 42       	R0 = R0.L (Z);
ffa04e9a:	c7 51       	R7 = R7 + R0;
ffa04e9c:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa04e9e:	f7 50       	R3 = R7 + R6;
ffa04ea0:	0d 1c       	IF CC JUMP 0xffa04eba <_tcp_checksum_check+0x56> (BP);
ffa04ea2:	0d 32       	P1 = R5;
ffa04ea4:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04ea8:	10 4e       	R0 >>= 0x2;
ffa04eaa:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa04eac:	0d 64       	R5 += 0x1;		/* (  1) */
ffa04eae:	a9 5a       	P2 = P1 + P5;
ffa04eb0:	08 32       	P1 = R0;
ffa04eb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04eb4:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa04eb6:	8a 5a       	P2 = P2 + P1;
ffa04eb8:	10 9b       	B[P2] = R0;
ffa04eba:	82 c6 0d 83 	R1 = R5 >> 0x1f;
ffa04ebe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04ec0:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa04ec4:	69 50       	R1 = R1 + R5;
ffa04ec6:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04eca:	09 4d       	R1 >>>= 0x1;
ffa04ecc:	18 4e       	R0 >>= 0x3;
ffa04ece:	41 50       	R1 = R1 + R0;
ffa04ed0:	01 0d       	CC = R1 <= 0x0;
ffa04ed2:	09 18       	IF CC JUMP 0xffa04ee4 <_tcp_checksum_check+0x80>;
ffa04ed4:	55 32       	P2 = P5;
ffa04ed6:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa04ed8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa04eda:	0a 64       	R2 += 0x1;		/* (  1) */
ffa04edc:	10 94       	R0 = W[P2++] (Z);
ffa04ede:	0a 08       	CC = R2 == R1;
ffa04ee0:	c3 50       	R3 = R3 + R0;
ffa04ee2:	fc 17       	IF !CC JUMP 0xffa04eda <_tcp_checksum_check+0x76> (BP);
ffa04ee4:	d8 42       	R0 = R3.L (Z);
ffa04ee6:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa04eea:	08 50       	R0 = R0 + R1;
ffa04eec:	c0 43       	R0 =~ R0;
ffa04eee:	e1 42       	R1 = R4.L (Z);
ffa04ef0:	c7 42       	R7 = R0.L (Z);
ffa04ef2:	39 08       	CC = R1 == R7;
ffa04ef4:	19 18       	IF CC JUMP 0xffa04f26 <_tcp_checksum_check+0xc2>;
ffa04ef6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04efa:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa04efe:	ff e3 7b df 	CALL 0xffa00df4 <_printf_hex>;
ffa04f02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900588(-7338616) */
ffa04f06:	0f 30       	R1 = R7;
ffa04f08:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa04f0c:	ff e3 74 df 	CALL 0xffa00df4 <_printf_hex>;
ffa04f10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa04f14:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa04f18:	ff e3 5a e1 	CALL 0xffa011cc <_printf_str>;
ffa04f1c:	01 e8 00 00 	UNLINK;
ffa04f20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f22:	a5 05       	(R7:4, P5:5) = [SP++];
ffa04f24:	10 00       	RTS;
ffa04f26:	01 e8 00 00 	UNLINK;
ffa04f2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f2c:	a5 05       	(R7:4, P5:5) = [SP++];
ffa04f2e:	10 00       	RTS;

ffa04f30 <_tcp_checksum_set>:
ffa04f30:	ed 05       	[--SP] = (R7:5, P5:5);
ffa04f32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa04f36:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04f3a:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa04f3e:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa04f42:	10 95 00 00 
ffa04f46:	10 32       	P2 = R0;
ffa04f48:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa04f4c:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa04f50:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa04f52:	52 91       	P2 = [P2];
ffa04f54:	95 ad       	P5 = [P2 + 0x18];
ffa04f56:	e9 a7       	R1 = W[P5 + 0x1e] (Z);
ffa04f58:	a8 a7       	R0 = W[P5 + 0x1c] (Z);
ffa04f5a:	08 50       	R0 = R0 + R1;
ffa04f5c:	69 e4 10 00 	R1 = W[P5 + 0x20] (Z);
ffa04f60:	08 50       	R0 = R0 + R1;
ffa04f62:	6e e4 11 00 	R6 = W[P5 + 0x22] (Z);
ffa04f66:	86 51       	R6 = R6 + R0;
ffa04f68:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04f6c:	10 4e       	R0 >>= 0x2;
ffa04f6e:	05 50       	R0 = R5 + R0;
ffa04f70:	c0 42       	R0 = R0.L (Z);
ffa04f72:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa04f76:	ff e3 a3 ea 	CALL 0xffa024bc <_htons>;
ffa04f7a:	47 4f       	R7 <<= 0x8;
ffa04f7c:	c0 42       	R0 = R0.L (Z);
ffa04f7e:	c7 51       	R7 = R7 + R0;
ffa04f80:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa04f82:	f7 50       	R3 = R7 + R6;
ffa04f84:	0d 1c       	IF CC JUMP 0xffa04f9e <_tcp_checksum_set+0x6e> (BP);
ffa04f86:	0d 32       	P1 = R5;
ffa04f88:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04f8c:	10 4e       	R0 >>= 0x2;
ffa04f8e:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa04f90:	0d 64       	R5 += 0x1;		/* (  1) */
ffa04f92:	a9 5a       	P2 = P1 + P5;
ffa04f94:	08 32       	P1 = R0;
ffa04f96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f98:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa04f9a:	8a 5a       	P2 = P2 + P1;
ffa04f9c:	10 9b       	B[P2] = R0;
ffa04f9e:	82 c6 0d 83 	R1 = R5 >> 0x1f;
ffa04fa2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04fa4:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa04fa8:	69 50       	R1 = R1 + R5;
ffa04faa:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa04fae:	09 4d       	R1 >>>= 0x1;
ffa04fb0:	18 4e       	R0 >>= 0x3;
ffa04fb2:	41 50       	R1 = R1 + R0;
ffa04fb4:	01 0d       	CC = R1 <= 0x0;
ffa04fb6:	09 18       	IF CC JUMP 0xffa04fc8 <_tcp_checksum_set+0x98>;
ffa04fb8:	55 32       	P2 = P5;
ffa04fba:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa04fbc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa04fbe:	0a 64       	R2 += 0x1;		/* (  1) */
ffa04fc0:	10 94       	R0 = W[P2++] (Z);
ffa04fc2:	0a 08       	CC = R2 == R1;
ffa04fc4:	c3 50       	R3 = R3 + R0;
ffa04fc6:	fc 17       	IF !CC JUMP 0xffa04fbe <_tcp_checksum_set+0x8e> (BP);
ffa04fc8:	d8 42       	R0 = R3.L (Z);
ffa04fca:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa04fce:	08 50       	R0 = R0 + R1;
ffa04fd0:	c0 43       	R0 =~ R0;
ffa04fd2:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa04fd6:	01 e8 00 00 	UNLINK;
ffa04fda:	ad 05       	(R7:5, P5:5) = [SP++];
ffa04fdc:	10 00       	RTS;
	...

ffa04fe0 <_tcp_burst>:
ffa04fe0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa04fe2:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa04fe6:	78 b2       	[FP + 0x24] = R0;
ffa04fe8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa04fec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa04ff0:	7a a2       	R2 = [FP + 0x24];
ffa04ff2:	09 e1 4c 0e 	P1.L = 0xe4c;		/* (3660)	P1=0xff900e4c <_g_httpHeaderLen> */
ffa04ff6:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_g_httpContentLen> */
ffa04ffa:	02 0d       	CC = R2 <= 0x0;
ffa04ffc:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa05000:	10 91 00 00 
ffa05004:	09 91       	R1 = [P1];
ffa05006:	e8 18       	IF CC JUMP 0xffa051d6 <_tcp_burst+0x1f6>;
ffa05008:	41 50       	R1 = R1 + R0;
ffa0500a:	8c 09       	CC = R4 < R1 (IU);
ffa0500c:	19 32       	P3 = R1;
ffa0500e:	e4 10       	IF !CC JUMP 0xffa051d6 <_tcp_burst+0x1f6>;
ffa05010:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa05012:	43 30       	R0 = P3;
ffa05014:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e4c <_g_httpHeaderLen> */
ffa05018:	e0 53       	R7 = R0 - R4;
ffa0501a:	09 e1 38 0e 	P1.L = 0xe38;		/* (3640)	P1=0xff900e38 <_TcpSeqHttpStart> */
ffa0501e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa05022:	07 cc 38 4e 	R7 = MIN (R7, R0) || R0 = [P1] || NOP;
ffa05026:	08 91 00 00 
ffa0502a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_g_httpContentLen> */
ffa0502e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e38 <_TcpSeqHttpStart> */
ffa05032:	44 51       	R5 = R4 + R0;
ffa05034:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa05038:	09 e1 1c 0d 	P1.L = 0xd1c;		/* (3356)	P1=0xff900d1c <_NetDestIP> */
ffa0503c:	15 93       	[P2] = R5;
ffa0503e:	0e 91       	R6 = [P1];
ffa05040:	c7 65       	R7 += 0x38;		/* ( 56) */
ffa05042:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa05046:	47 30       	R0 = FP;
ffa05048:	4f 30       	R1 = FP;
ffa0504a:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa0504e:	e7 bb       	[FP -0x8] = R7;
ffa05050:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa05052:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa05054:	82 ce 06 c4 	R2 = ROT R6 BY 0x0 || P5 = [P2] || NOP;
ffa05058:	55 91 00 00 
ffa0505c:	ff e3 50 ed 	CALL 0xffa02afc <_eth_header_setup>;
ffa05060:	08 30       	R1 = R0;
ffa05062:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05066:	80 0c       	CC = R0 < 0x0;
ffa05068:	47 66       	R7 += -0x38;		/* (-56) */
ffa0506a:	a8 18       	IF CC JUMP 0xffa051ba <_tcp_burst+0x1da>;
ffa0506c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0506e:	f0 b0       	[SP + 0xc] = R0;
ffa05070:	01 30       	R0 = R1;
ffa05072:	4f 30       	R1 = FP;
ffa05074:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05076:	16 30       	R2 = R6;
ffa05078:	ff e3 56 ea 	CALL 0xffa02524 <_ip_header_setup>;
ffa0507c:	4f 30       	R1 = FP;
ffa0507e:	f5 b0       	[SP + 0xc] = R5;
ffa05080:	35 bd       	[SP + 0x10] = P5;
ffa05082:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05084:	c2 60       	R2 = 0x18 (X);		/*		R2=0x18( 24) */
ffa05086:	ff e3 43 ef 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa0508a:	28 30       	R5 = R0;
ffa0508c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05090:	00 0d       	CC = R0 <= 0x0;
ffa05092:	89 18       	IF CC JUMP 0xffa051a4 <_tcp_burst+0x1c4>;
ffa05094:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d1c <_NetDestIP> */
ffa05098:	09 e1 4c 0e 	P1.L = 0xe4c;		/* (3660)	P1=0xff900e4c <_g_httpHeaderLen> */
ffa0509c:	08 91       	R0 = [P1];
ffa0509e:	20 0a       	CC = R0 <= R4 (IU);
ffa050a0:	8f 10       	IF !CC JUMP 0xffa051be <_tcp_burst+0x1de>;
ffa050a2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa050a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa050a8:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa050ac:	10 91       	R0 = [P2];
ffa050ae:	21 e1 01 04 	R1 = 0x401 (X);		/*		R1=0x401(1025) */
ffa050b2:	04 52       	R0 = R4 - R0;
ffa050b4:	41 4f       	R1 <<= 0x8;
ffa050b6:	08 50       	R0 = R0 + R1;
ffa050b8:	17 30       	R2 = R7;
ffa050ba:	0d 30       	R1 = R5;
ffa050bc:	ff e3 72 e1 	CALL 0xffa013a0 <_memcpy_>;
ffa050c0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e4c <_g_httpHeaderLen> */
ffa050c4:	09 e1 38 0e 	P1.L = 0xe38;		/* (3640)	P1=0xff900e38 <_TcpSeqHttpStart> */
ffa050c8:	08 91       	R0 = [P1];
ffa050ca:	3c 51       	R4 = R4 + R7;
ffa050cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa050d0:	04 50       	R0 = R4 + R0;
ffa050d2:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa050d6:	10 93       	[P2] = R0;
ffa050d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa050dc:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa050e0:	10 95       	R0 = W[P2] (Z);
ffa050e2:	10 32       	P2 = R0;
ffa050e4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e38 <_TcpSeqHttpStart> */
ffa050e8:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa050ec:	77 51       	R5 = R7 + R6;
ffa050ee:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa050f0:	52 91       	P2 = [P2];
ffa050f2:	95 ad       	P5 = [P2 + 0x18];
ffa050f4:	a8 a7       	R0 = W[P5 + 0x1c] (Z);
ffa050f6:	ef a7       	R7 = W[P5 + 0x1e] (Z);
ffa050f8:	c7 51       	R7 = R7 + R0;
ffa050fa:	68 e4 10 00 	R0 = W[P5 + 0x20] (Z);
ffa050fe:	c7 51       	R7 = R7 + R0;
ffa05100:	68 e4 11 00 	R0 = W[P5 + 0x22] (Z);
ffa05104:	c7 51       	R7 = R7 + R0;
ffa05106:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0510a:	10 4e       	R0 >>= 0x2;
ffa0510c:	05 50       	R0 = R5 + R0;
ffa0510e:	c0 42       	R0 = R0.L (Z);
ffa05110:	ae e4 19 00 	R6 = B[P5 + 0x19] (Z);
ffa05114:	ff e3 d4 e9 	CALL 0xffa024bc <_htons>;
ffa05118:	46 4f       	R6 <<= 0x8;
ffa0511a:	c0 42       	R0 = R0.L (Z);
ffa0511c:	86 51       	R6 = R6 + R0;
ffa0511e:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa05120:	fe 51       	R7 = R6 + R7;
ffa05122:	0d 1c       	IF CC JUMP 0xffa0513c <_tcp_burst+0x15c> (BP);
ffa05124:	0d 32       	P1 = R5;
ffa05126:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0512a:	10 4e       	R0 >>= 0x2;
ffa0512c:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0512e:	0d 64       	R5 += 0x1;		/* (  1) */
ffa05130:	a9 5a       	P2 = P1 + P5;
ffa05132:	08 32       	P1 = R0;
ffa05134:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05136:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa05138:	8a 5a       	P2 = P2 + P1;
ffa0513a:	10 9b       	B[P2] = R0;
ffa0513c:	82 c6 0d 83 	R1 = R5 >> 0x1f;
ffa05140:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05142:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa05146:	69 50       	R1 = R1 + R5;
ffa05148:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0514c:	09 4d       	R1 >>>= 0x1;
ffa0514e:	18 4e       	R0 >>= 0x3;
ffa05150:	41 50       	R1 = R1 + R0;
ffa05152:	01 0d       	CC = R1 <= 0x0;
ffa05154:	09 18       	IF CC JUMP 0xffa05166 <_tcp_burst+0x186>;
ffa05156:	55 32       	P2 = P5;
ffa05158:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0515a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0515c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0515e:	10 94       	R0 = W[P2++] (Z);
ffa05160:	0b 08       	CC = R3 == R1;
ffa05162:	c7 51       	R7 = R7 + R0;
ffa05164:	fc 17       	IF !CC JUMP 0xffa0515c <_tcp_burst+0x17c> (BP);
ffa05166:	f8 42       	R0 = R7.L (Z);
ffa05168:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0516c:	08 50       	R0 = R0 + R1;
ffa0516e:	c0 43       	R0 =~ R0;
ffa05170:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa05174:	ff e3 b6 eb 	CALL 0xffa028e0 <_bfin_EMAC_send_nocopy>;
ffa05178:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa0517c:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_rxIdx> */
ffa05180:	10 95       	R0 = W[P2] (Z);
ffa05182:	10 32       	P2 = R0;
ffa05184:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa05188:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_rxbuf> */
ffa0518c:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0518e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa05190:	52 91       	P2 = [P2];
ffa05192:	90 a2       	R0 = [P2 + 0x28];
ffa05194:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa05196:	07 1c       	IF CC JUMP 0xffa051a4 <_tcp_burst+0x1c4> (BP);
ffa05198:	90 a2       	R0 = [P2 + 0x28];
ffa0519a:	4c 30       	R1 = P4;
ffa0519c:	7a a2       	R2 = [FP + 0x24];
ffa0519e:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa051a0:	11 50       	R0 = R1 + R2;
ffa051a2:	a0 06       	IF !CC P4 = R0;
ffa051a4:	79 ae       	P1 = [FP + 0x24];
ffa051a6:	61 09       	CC = P1 <= P4;
ffa051a8:	04 18       	IF CC JUMP 0xffa051b0 <_tcp_burst+0x1d0>;
ffa051aa:	43 30       	R0 = P3;
ffa051ac:	84 09       	CC = R4 < R0 (IU);
ffa051ae:	32 1f       	IF CC JUMP 0xffa05012 <_tcp_burst+0x32> (BP);
ffa051b0:	01 e8 00 00 	UNLINK;
ffa051b4:	44 30       	R0 = P4;
ffa051b6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa051b8:	10 00       	RTS;
ffa051ba:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa051bc:	6a 2f       	JUMP.S 0xffa05090 <_tcp_burst+0xb0>;
ffa051be:	a0 53       	R6 = R0 - R4;
ffa051c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051c2:	90 4f       	R0 <<= 0x12;
ffa051c4:	04 50       	R0 = R4 + R0;
ffa051c6:	0d 30       	R1 = R5;
ffa051c8:	16 30       	R2 = R6;
ffa051ca:	ff e3 eb e0 	CALL 0xffa013a0 <_memcpy_>;
ffa051ce:	75 51       	R5 = R5 + R6;
ffa051d0:	f7 53       	R7 = R7 - R6;
ffa051d2:	34 51       	R4 = R4 + R6;
ffa051d4:	68 2f       	JUMP.S 0xffa050a4 <_tcp_burst+0xc4>;
ffa051d6:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa051d8:	01 e8 00 00 	UNLINK;
ffa051dc:	44 30       	R0 = P4;
ffa051de:	a3 05       	(R7:4, P5:3) = [SP++];
ffa051e0:	10 00       	RTS;
	...

ffa051e4 <_tcp_rx>:
ffa051e4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa051e6:	20 32       	P4 = R0;
ffa051e8:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa051ec:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa051f0:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa051f2:	ff e3 65 e9 	CALL 0xffa024bc <_htons>;
ffa051f6:	c0 42       	R0 = R0.L (Z);
ffa051f8:	07 08       	CC = R7 == R0;
ffa051fa:	06 18       	IF CC JUMP 0xffa05206 <_tcp_rx+0x22>;
ffa051fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa051fe:	01 e8 00 00 	UNLINK;
ffa05202:	a3 05       	(R7:4, P5:3) = [SP++];
ffa05204:	10 00       	RTS;
ffa05206:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0520a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0520c:	08 08       	CC = R0 == R1;
ffa0520e:	f7 17       	IF !CC JUMP 0xffa051fc <_tcp_rx+0x18> (BP);
ffa05210:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa05214:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa05218:	ff e3 52 e9 	CALL 0xffa024bc <_htons>;
ffa0521c:	c0 42       	R0 = R0.L (Z);
ffa0521e:	07 08       	CC = R7 == R0;
ffa05220:	ee 17       	IF !CC JUMP 0xffa051fc <_tcp_rx+0x18> (BP);
ffa05222:	44 30       	R0 = P4;
ffa05224:	80 64       	R0 += 0x10;		/* ( 16) */
ffa05226:	ff e3 61 ee 	CALL 0xffa02ee8 <_ip_header_checksum>;
ffa0522a:	40 43       	R0 = R0.B (Z);
ffa0522c:	00 0c       	CC = R0 == 0x0;
ffa0522e:	e7 1f       	IF CC JUMP 0xffa051fc <_tcp_rx+0x18> (BP);
ffa05230:	4c 30       	R1 = P4;
ffa05232:	41 64       	R1 += 0x8;		/* (  8) */
ffa05234:	e0 a1       	R0 = [P4 + 0x1c];
ffa05236:	ff e3 93 f8 	CALL 0xffa0435c <_ARP_lut_add>;
ffa0523a:	60 a6       	R0 = W[P4 + 0x12] (Z);
ffa0523c:	ff e3 40 e9 	CALL 0xffa024bc <_htons>;
ffa05240:	a1 e4 10 00 	R1 = B[P4 + 0x10] (Z);
ffa05244:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa05246:	51 54       	R1 = R1 & R2;
ffa05248:	11 4f       	R1 <<= 0x2;
ffa0524a:	c0 42       	R0 = R0.L (Z);
ffa0524c:	08 52       	R0 = R0 - R1;
ffa0524e:	a1 e4 30 00 	R1 = B[P4 + 0x30] (Z);
ffa05252:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa05254:	11 4d       	R1 >>>= 0x2;
ffa05256:	51 54       	R1 = R1 & R2;
ffa05258:	48 53       	R5 = R0 - R1;
ffa0525a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa0525e:	0d 30       	R1 = R5;
ffa05260:	00 e1 b4 05 	R0.L = 0x5b4;		/* (1460)	R0=0xff9005b4(-7338572) */
ffa05264:	ff e3 c4 de 	CALL 0xffa00fec <_printf_int>;
ffa05268:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b4(-7338572) */
ffa0526c:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa05270:	ff e3 ae df 	CALL 0xffa011cc <_printf_str>;
ffa05274:	a0 a7       	R0 = W[P4 + 0x1c] (Z);
ffa05276:	e1 a7       	R1 = W[P4 + 0x1e] (Z);
ffa05278:	08 50       	R0 = R0 + R1;
ffa0527a:	66 e4 10 00 	R6 = W[P4 + 0x20] (Z);
ffa0527e:	86 51       	R6 = R6 + R0;
ffa05280:	60 e4 11 00 	R0 = W[P4 + 0x22] (Z);
ffa05284:	86 51       	R6 = R6 + R0;
ffa05286:	a0 e4 30 00 	R0 = B[P4 + 0x30] (Z);
ffa0528a:	10 4e       	R0 >>= 0x2;
ffa0528c:	05 50       	R0 = R5 + R0;
ffa0528e:	c0 42       	R0 = R0.L (Z);
ffa05290:	a7 e4 19 00 	R7 = B[P4 + 0x19] (Z);
ffa05294:	64 e5 1a 00 	R4 = W[P4 + 0x34] (X);
ffa05298:	ff e3 12 e9 	CALL 0xffa024bc <_htons>;
ffa0529c:	47 4f       	R7 <<= 0x8;
ffa0529e:	c0 42       	R0 = R0.L (Z);
ffa052a0:	c7 51       	R7 = R7 + R0;
ffa052a2:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa052a4:	f7 50       	R3 = R7 + R6;
ffa052a6:	36 14       	IF !CC JUMP 0xffa05312 <_tcp_rx+0x12e> (BP);
ffa052a8:	5c 32       	P3 = P4;
ffa052aa:	15 30       	R2 = R5;
ffa052ac:	23 6d       	P3 += 0x24;		/* ( 36) */
ffa052ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa052b0:	82 c6 0a 83 	R1 = R2 >> 0x1f;
ffa052b4:	60 e6 1a 00 	W[P4 + 0x34] = R0;
ffa052b8:	51 50       	R1 = R1 + R2;
ffa052ba:	a0 e4 30 00 	R0 = B[P4 + 0x30] (Z);
ffa052be:	09 4d       	R1 >>>= 0x1;
ffa052c0:	18 4e       	R0 >>= 0x3;
ffa052c2:	41 50       	R1 = R1 + R0;
ffa052c4:	01 0d       	CC = R1 <= 0x0;
ffa052c6:	08 18       	IF CC JUMP 0xffa052d6 <_tcp_rx+0xf2>;
ffa052c8:	53 32       	P2 = P3;
ffa052ca:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa052cc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa052ce:	10 94       	R0 = W[P2++] (Z);
ffa052d0:	11 08       	CC = R1 == R2;
ffa052d2:	c3 50       	R3 = R3 + R0;
ffa052d4:	fc 17       	IF !CC JUMP 0xffa052cc <_tcp_rx+0xe8> (BP);
ffa052d6:	d8 42       	R0 = R3.L (Z);
ffa052d8:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa052dc:	08 50       	R0 = R0 + R1;
ffa052de:	c0 43       	R0 =~ R0;
ffa052e0:	e1 42       	R1 = R4.L (Z);
ffa052e2:	c7 42       	R7 = R0.L (Z);
ffa052e4:	39 08       	CC = R1 == R7;
ffa052e6:	24 18       	IF CC JUMP 0xffa0532e <_tcp_rx+0x14a>;
ffa052e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa052ec:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa052f0:	ff e3 82 dd 	CALL 0xffa00df4 <_printf_hex>;
ffa052f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900588(-7338616) */
ffa052f8:	0f 30       	R1 = R7;
ffa052fa:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa052fe:	ff e3 7b dd 	CALL 0xffa00df4 <_printf_hex>;
ffa05302:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa05306:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa0530a:	ff e3 61 df 	CALL 0xffa011cc <_printf_str>;
ffa0530e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05310:	77 2f       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa05312:	0d 32       	P1 = R5;
ffa05314:	a0 e4 30 00 	R0 = B[P4 + 0x30] (Z);
ffa05318:	5c 32       	P3 = P4;
ffa0531a:	10 4e       	R0 >>= 0x2;
ffa0531c:	23 6d       	P3 += 0x24;		/* ( 36) */
ffa0531e:	99 5a       	P2 = P1 + P3;
ffa05320:	08 32       	P1 = R0;
ffa05322:	15 30       	R2 = R5;
ffa05324:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05326:	0a 64       	R2 += 0x1;		/* (  1) */
ffa05328:	8a 5a       	P2 = P2 + P1;
ffa0532a:	10 9b       	B[P2] = R0;
ffa0532c:	c1 2f       	JUMP.S 0xffa052ae <_tcp_rx+0xca>;
ffa0532e:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa05332:	48 43       	R0 = R1.B (Z);
ffa05334:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa05336:	10 08       	CC = R0 == R2;
ffa05338:	2f 19       	IF CC JUMP 0xffa05596 <_tcp_rx+0x3b2>;
ffa0533a:	10 0c       	CC = R0 == 0x2;
ffa0533c:	48 19       	IF CC JUMP 0xffa055cc <_tcp_rx+0x3e8>;
ffa0533e:	48 43       	R0 = R1.B (Z);
ffa05340:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa05342:	08 08       	CC = R0 == R1;
ffa05344:	5c 18       	IF CC JUMP 0xffa053fc <_tcp_rx+0x218>;
ffa05346:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa05348:	84 10       	IF !CC JUMP 0xffa05450 <_tcp_rx+0x26c>;
ffa0534a:	00 00       	NOP;
ffa0534c:	00 00       	NOP;
ffa0534e:	00 00       	NOP;
ffa05350:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa05354:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa05356:	0c 1c       	IF CC JUMP 0xffa0536e <_tcp_rx+0x18a> (BP);
ffa05358:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d3c <_rxbuf> */
ffa0535c:	09 e1 3c 0e 	P1.L = 0xe3c;		/* (3644)	P1=0xff900e3c <_TcpState> */
ffa05360:	0f 91       	R7 = [P1];
ffa05362:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa05364:	07 08       	CC = R7 == R0;
ffa05366:	02 14       	IF !CC JUMP 0xffa0536a <_tcp_rx+0x186> (BP);
ffa05368:	de 22       	JUMP.S 0xffa05924 <_tcp_rx+0x740>;
ffa0536a:	07 0c       	CC = R7 == 0x0;
ffa0536c:	d2 19       	IF CC JUMP 0xffa05710 <_tcp_rx+0x52c>;
ffa0536e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e3c <_TcpState> */
ffa05372:	09 e1 3c 0e 	P1.L = 0xe3c;		/* (3644)	P1=0xff900e3c <_TcpState> */
ffa05376:	08 91       	R0 = [P1];
ffa05378:	10 0c       	CC = R0 == 0x2;
ffa0537a:	41 17       	IF !CC JUMP 0xffa051fc <_tcp_rx+0x18> (BP);
ffa0537c:	a0 a2       	R0 = [P4 + 0x28];
ffa0537e:	a7 e5 30 00 	R7 = B[P4 + 0x30] (X);
ffa05382:	ff e3 a9 e8 	CALL 0xffa024d4 <_htonl>;
ffa05386:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_rxIdx> */
ffa0538a:	28 50       	R0 = R0 + R5;
ffa0538c:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa05390:	10 93       	[P2] = R0;
ffa05392:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e3c <_TcpState> */
ffa05396:	e0 a1       	R0 = [P4 + 0x1c];
ffa05398:	09 e1 1c 0d 	P1.L = 0xd1c;		/* (3356)	P1=0xff900d1c <_NetDestIP> */
ffa0539c:	08 93       	[P1] = R0;
ffa0539e:	e0 a2       	R0 = [P4 + 0x2c];
ffa053a0:	ff e3 9a e8 	CALL 0xffa024d4 <_htonl>;
ffa053a4:	08 30       	R1 = R0;
ffa053a6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900004 */
ffa053aa:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa053ae:	0d e1 38 0e 	P5.L = 0xe38;		/* (3640)	P5=0xff900e38 <_TcpSeqHttpStart> */
ffa053b2:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa053b4:	2b 91       	R3 = [P5];
ffa053b6:	02 14       	IF !CC JUMP 0xffa053ba <_tcp_rx+0x1d6> (BP);
ffa053b8:	88 22       	JUMP.S 0xffa058c8 <_tcp_rx+0x6e4>;
ffa053ba:	05 0c       	CC = R5 == 0x0;
ffa053bc:	02 18       	IF CC JUMP 0xffa053c0 <_tcp_rx+0x1dc>;
ffa053be:	85 22       	JUMP.S 0xffa058c8 <_tcp_rx+0x6e4>;
ffa053c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa053c4:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa053c8:	10 91       	R0 = [P2];
ffa053ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa053ce:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_g_httpContentLen> */
ffa053d2:	04 cc 0b 44 	R2 = R1 - R3 (NS) || R1 = [P2] || NOP;
ffa053d6:	11 91 00 00 
ffa053da:	08 50       	R0 = R0 + R1;
ffa053dc:	02 08       	CC = R2 == R0;
ffa053de:	02 18       	IF CC JUMP 0xffa053e2 <_tcp_rx+0x1fe>;
ffa053e0:	15 23       	JUMP.S 0xffa05a0a <_tcp_rx+0x826>;
ffa053e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_g_httpContentLen> */
ffa053e6:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_g_httpRxed> */
ffa053ea:	15 93       	[P2] = R5;
ffa053ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_g_httpRxed> */
ffa053f0:	1a 50       	R0 = R2 + R3;
ffa053f2:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa053f6:	10 93       	[P2] = R0;
ffa053f8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa053fa:	02 2f       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa053fc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d1c <_NetDestIP> */
ffa05400:	09 e1 3c 0e 	P1.L = 0xe3c;		/* (3644)	P1=0xff900e3c <_TcpState> */
ffa05404:	08 91       	R0 = [P1];
ffa05406:	08 0c       	CC = R0 == 0x1;
ffa05408:	a8 17       	IF !CC JUMP 0xffa05358 <_tcp_rx+0x174> (BP);
ffa0540a:	e0 a2       	R0 = [P4 + 0x2c];
ffa0540c:	ff e3 64 e8 	CALL 0xffa024d4 <_htonl>;
ffa05410:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa05414:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa05418:	11 91       	R1 = [P2];
ffa0541a:	08 08       	CC = R0 == R1;
ffa0541c:	02 14       	IF !CC JUMP 0xffa05420 <_tcp_rx+0x23c> (BP);
ffa0541e:	fc 22       	JUMP.S 0xffa05a16 <_tcp_rx+0x832>;
ffa05420:	e0 a2       	R0 = [P4 + 0x2c];
ffa05422:	ff e3 59 e8 	CALL 0xffa024d4 <_htonl>;
ffa05426:	08 30       	R1 = R0;
ffa05428:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0542c:	00 e1 e0 05 	R0.L = 0x5e0;		/* (1504)	R0=0xff9005e0(-7338528) */
ffa05430:	ff e3 28 df 	CALL 0xffa01280 <_printf_ip>;
ffa05434:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa05438:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0543a:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa0543e:	10 93       	[P2] = R0;
ffa05440:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05444:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa05448:	ff e3 c2 de 	CALL 0xffa011cc <_printf_str>;
ffa0544c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0544e:	d8 2e       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa05450:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05454:	00 e1 0c 06 	R0.L = 0x60c;		/* (1548)	R0=0xff90060c(-7338484) */
ffa05458:	ff e3 ba de 	CALL 0xffa011cc <_printf_str>;
ffa0545c:	a0 a2       	R0 = [P4 + 0x28];
ffa0545e:	ff e3 3b e8 	CALL 0xffa024d4 <_htonl>;
ffa05462:	28 32       	P5 = R0;
ffa05464:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa05468:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa0546c:	10 93       	[P2] = R0;
ffa0546e:	e7 a1       	R7 = [P4 + 0x1c];
ffa05470:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa05472:	55 93       	[P2] = P5;
ffa05474:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa05478:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa0547c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e3c <_TcpState> */
ffa05480:	10 91       	R0 = [P2];
ffa05482:	09 e1 1c 0d 	P1.L = 0xd1c;		/* (3356)	P1=0xff900d1c <_NetDestIP> */
ffa05486:	10 0c       	CC = R0 == 0x2;
ffa05488:	0f 93       	[P1] = R7;
ffa0548a:	bd 19       	IF CC JUMP 0xffa05804 <_tcp_rx+0x620>;
ffa0548c:	00 0c       	CC = R0 == 0x0;
ffa0548e:	bb 1d       	IF CC JUMP 0xffa05804 <_tcp_rx+0x620> (BP);
ffa05490:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d1c <_NetDestIP> */
ffa05494:	09 e1 3c 0e 	P1.L = 0xe3c;		/* (3644)	P1=0xff900e3c <_TcpState> */
ffa05498:	08 91       	R0 = [P1];
ffa0549a:	18 0c       	CC = R0 == 0x3;
ffa0549c:	59 17       	IF !CC JUMP 0xffa0534e <_tcp_rx+0x16a> (BP);
ffa0549e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa054a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa054a4:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_g_httpRxed> */
ffa054a8:	10 93       	[P2] = R0;
ffa054aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_g_httpRxed> */
ffa054ae:	0a e1 1c 0d 	P2.L = 0xd1c;		/* (3356)	P2=0xff900d1c <_NetDestIP> */
ffa054b2:	77 30       	R6 = FP;
ffa054b4:	17 91       	R7 = [P2];
ffa054b6:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa054b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d1c <_NetDestIP> */
ffa054bc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e3c <_TcpState> */
ffa054c0:	c6 67       	R6 += -0x8;		/* ( -8) */
ffa054c2:	4f 30       	R1 = FP;
ffa054c4:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa054c8:	09 e1 34 0e 	P1.L = 0xe34;		/* (3636)	P1=0xff900e34 <_TcpSeqClient> */
ffa054cc:	e0 bb       	[FP -0x8] = R0;
ffa054ce:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa054d0:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R4 = [P2] || NOP;
ffa054d4:	14 91 00 00 
ffa054d8:	82 ce 07 c4 	R2 = ROT R7 BY 0x0 || P5 = [P1] || NOP;
ffa054dc:	4d 91 00 00 
ffa054e0:	ff e3 0e eb 	CALL 0xffa02afc <_eth_header_setup>;
ffa054e4:	08 30       	R1 = R0;
ffa054e6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa054ea:	80 0c       	CC = R0 < 0x0;
ffa054ec:	12 18       	IF CC JUMP 0xffa05510 <_tcp_rx+0x32c>;
ffa054ee:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa054f0:	f0 b0       	[SP + 0xc] = R0;
ffa054f2:	17 30       	R2 = R7;
ffa054f4:	01 30       	R0 = R1;
ffa054f6:	0e 30       	R1 = R6;
ffa054f8:	ff e3 16 e8 	CALL 0xffa02524 <_ip_header_setup>;
ffa054fc:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa05500:	f4 b0 00 00 
ffa05504:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa05506:	35 bd       	[SP + 0x10] = P5;
ffa05508:	ff e3 02 ed 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa0550c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05510:	00 0d       	CC = R0 <= 0x0;
ffa05512:	1e 1b       	IF CC JUMP 0xffa0534e <_tcp_rx+0x16a>;
ffa05514:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa05518:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0551a:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa0551e:	10 93       	[P2] = R0;
ffa05520:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa05524:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa05528:	10 95       	R0 = W[P2] (Z);
ffa0552a:	10 32       	P2 = R0;
ffa0552c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e34 <_TcpSeqClient> */
ffa05530:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa05534:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa05536:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa05538:	52 91       	P2 = [P2];
ffa0553a:	95 ad       	P5 = [P2 + 0x18];
ffa0553c:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0553e:	4d 32       	P1 = P5;
ffa05540:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa05542:	b2 e0 03 20 	LSETUP(0xffa05546 <_tcp_rx+0x362>, 0xffa05548 <_tcp_rx+0x364>) LC1 = P2;
ffa05546:	08 94       	R0 = W[P1++] (Z);
ffa05548:	86 51       	R6 = R6 + R0;
ffa0554a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0554e:	10 4e       	R0 >>= 0x2;
ffa05550:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa05554:	ff e3 b4 e7 	CALL 0xffa024bc <_htons>;
ffa05558:	c0 42       	R0 = R0.L (Z);
ffa0555a:	47 4f       	R7 <<= 0x8;
ffa0555c:	c7 51       	R7 = R7 + R0;
ffa0555e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05560:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa05564:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa05568:	82 c6 e8 87 	R3 = R0 >> 0x3;
ffa0556c:	03 0d       	CC = R3 <= 0x0;
ffa0556e:	77 50       	R1 = R7 + R6;
ffa05570:	09 18       	IF CC JUMP 0xffa05582 <_tcp_rx+0x39e>;
ffa05572:	55 32       	P2 = P5;
ffa05574:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa05576:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa05578:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0557a:	10 94       	R0 = W[P2++] (Z);
ffa0557c:	13 08       	CC = R3 == R2;
ffa0557e:	41 50       	R1 = R1 + R0;
ffa05580:	fc 17       	IF !CC JUMP 0xffa05578 <_tcp_rx+0x394> (BP);
ffa05582:	c8 42       	R0 = R1.L (Z);
ffa05584:	81 4e       	R1 >>= 0x10;
ffa05586:	08 50       	R0 = R0 + R1;
ffa05588:	c0 43       	R0 =~ R0;
ffa0558a:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0558e:	ff e3 a9 e9 	CALL 0xffa028e0 <_bfin_EMAC_send_nocopy>;
ffa05592:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05594:	35 2e       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa05596:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0559a:	00 e1 c8 05 	R0.L = 0x5c8;		/* (1480)	R0=0xff9005c8(-7338552) */
ffa0559e:	ff e3 17 de 	CALL 0xffa011cc <_printf_str>;
ffa055a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa055a6:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa055aa:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa055ac:	17 93       	[P2] = R7;
ffa055ae:	a0 a2       	R0 = [P4 + 0x28];
ffa055b0:	ff e3 92 e7 	CALL 0xffa024d4 <_htonl>;
ffa055b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa055b8:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa055bc:	10 93       	[P2] = R0;
ffa055be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa055c2:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_g_httpRxed> */
ffa055c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa055c8:	17 93       	[P2] = R7;
ffa055ca:	1a 2e       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa055cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa055d0:	00 e1 d4 05 	R0.L = 0x5d4;		/* (1492)	R0=0xff9005d4(-7338540) */
ffa055d4:	ff e3 fc dd 	CALL 0xffa011cc <_printf_str>;
ffa055d8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e38 <_TcpSeqHttpStart> */
ffa055dc:	a0 a2       	R0 = [P4 + 0x28];
ffa055de:	ff e3 7b e7 	CALL 0xffa024d4 <_htonl>;
ffa055e2:	0d e1 34 0e 	P5.L = 0xe34;		/* (3636)	P5=0xff900e34 <_TcpSeqClient> */
ffa055e6:	28 93       	[P5] = R0;
ffa055e8:	60 a6       	R0 = W[P4 + 0x12] (Z);
ffa055ea:	ff e3 69 e7 	CALL 0xffa024bc <_htons>;
ffa055ee:	a1 e4 10 00 	R1 = B[P4 + 0x10] (Z);
ffa055f2:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa055f4:	51 54       	R1 = R1 & R2;
ffa055f6:	11 4f       	R1 <<= 0x2;
ffa055f8:	c0 42       	R0 = R0.L (Z);
ffa055fa:	04 cc 01 40 	R0 = R0 - R1 (NS) || R3 = [P5] || NOP;
ffa055fe:	2b 91 00 00 
ffa05602:	a1 e4 30 00 	R1 = B[P4 + 0x30] (Z);
ffa05606:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa05608:	11 4d       	R1 >>>= 0x2;
ffa0560a:	51 54       	R1 = R1 & R2;
ffa0560c:	08 52       	R0 = R0 - R1;
ffa0560e:	0b 64       	R3 += 0x1;		/* (  1) */
ffa05610:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_g_httpRxed> */
ffa05614:	d8 50       	R3 = R0 + R3;
ffa05616:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_TcpClientPort> */
ffa0561a:	60 e5 12 00 	R0 = W[P4 + 0x24] (X);
ffa0561e:	10 97       	W[P2] = R0;
ffa05620:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e48 <_TcpClientPort> */
ffa05624:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5] = R3 || NOP;
ffa05628:	2b 93 00 00 
ffa0562c:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_g_httpRxed> */
ffa05630:	10 93       	[P2] = R0;
ffa05632:	77 30       	R6 = FP;
ffa05634:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_g_httpRxed> */
ffa05638:	e7 a1       	R7 = [P4 + 0x1c];
ffa0563a:	0a e1 1c 0d 	P2.L = 0xd1c;		/* (3356)	P2=0xff900d1c <_NetDestIP> */
ffa0563e:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa05640:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e34 <_TcpSeqClient> */
ffa05644:	c6 67       	R6 += -0x8;		/* ( -8) */
ffa05646:	4f 30       	R1 = FP;
ffa05648:	e0 bb       	[FP -0x8] = R0;
ffa0564a:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0564c:	17 93       	[P2] = R7;
ffa0564e:	0d e1 30 0e 	P5.L = 0xe30;		/* (3632)	P5=0xff900e30 <_TcpSeqHost> */
ffa05652:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || [FP -0xc] = R3 || NOP;
ffa05656:	d3 bb 00 00 
ffa0565a:	82 ce 07 c4 	R2 = ROT R7 BY 0x0 || R4 = [P5] || NOP;
ffa0565e:	2c 91 00 00 
ffa05662:	ff e3 4d ea 	CALL 0xffa02afc <_eth_header_setup>;
ffa05666:	08 30       	R1 = R0;
ffa05668:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0566c:	80 0c       	CC = R0 < 0x0;
ffa0566e:	13 18       	IF CC JUMP 0xffa05694 <_tcp_rx+0x4b0>;
ffa05670:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa05672:	f0 b0       	[SP + 0xc] = R0;
ffa05674:	17 30       	R2 = R7;
ffa05676:	01 30       	R0 = R1;
ffa05678:	0e 30       	R1 = R6;
ffa0567a:	ff e3 55 e7 	CALL 0xffa02524 <_ip_header_setup>;
ffa0567e:	d9 b9       	P1 = [FP -0xc];
ffa05680:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa05684:	f4 b0 00 00 
ffa05688:	92 60       	R2 = 0x12 (X);		/*		R2=0x12( 18) */
ffa0568a:	31 bd       	[SP + 0x10] = P1;
ffa0568c:	ff e3 40 ec 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa05690:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05694:	00 0d       	CC = R0 <= 0x0;
ffa05696:	b7 19       	IF CC JUMP 0xffa05a04 <_tcp_rx+0x820>;
ffa05698:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d1c <_NetDestIP> */
ffa0569c:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa056a0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa056a4:	28 91       	R0 = [P5];
ffa056a6:	08 64       	R0 += 0x1;		/* (  1) */
ffa056a8:	28 93       	[P5] = R0;
ffa056aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa056ac:	10 93       	[P2] = R0;
ffa056ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa056b2:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa056b6:	10 95       	R0 = W[P2] (Z);
ffa056b8:	10 32       	P2 = R0;
ffa056ba:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa056be:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa056c0:	52 91       	P2 = [P2];
ffa056c2:	95 ad       	P5 = [P2 + 0x18];
ffa056c4:	a9 a7       	R1 = W[P5 + 0x1c] (Z);
ffa056c6:	e8 a7       	R0 = W[P5 + 0x1e] (Z);
ffa056c8:	08 50       	R0 = R0 + R1;
ffa056ca:	6e e4 10 00 	R6 = W[P5 + 0x20] (Z);
ffa056ce:	86 51       	R6 = R6 + R0;
ffa056d0:	68 e4 11 00 	R0 = W[P5 + 0x22] (Z);
ffa056d4:	86 51       	R6 = R6 + R0;
ffa056d6:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa056da:	10 4e       	R0 >>= 0x2;
ffa056dc:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa056e0:	ff e3 ee e6 	CALL 0xffa024bc <_htons>;
ffa056e4:	c0 42       	R0 = R0.L (Z);
ffa056e6:	47 4f       	R7 <<= 0x8;
ffa056e8:	c7 51       	R7 = R7 + R0;
ffa056ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa056ec:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa056f0:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa056f4:	82 c6 e8 87 	R3 = R0 >> 0x3;
ffa056f8:	03 0d       	CC = R3 <= 0x0;
ffa056fa:	77 50       	R1 = R7 + R6;
ffa056fc:	43 1b       	IF CC JUMP 0xffa05582 <_tcp_rx+0x39e>;
ffa056fe:	55 32       	P2 = P5;
ffa05700:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa05702:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa05704:	0a 64       	R2 += 0x1;		/* (  1) */
ffa05706:	10 94       	R0 = W[P2++] (Z);
ffa05708:	13 08       	CC = R3 == R2;
ffa0570a:	41 50       	R1 = R1 + R0;
ffa0570c:	fc 17       	IF !CC JUMP 0xffa05704 <_tcp_rx+0x520> (BP);
ffa0570e:	3a 2f       	JUMP.S 0xffa05582 <_tcp_rx+0x39e>;
ffa05710:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05714:	00 e1 30 06 	R0.L = 0x630;		/* (1584)	R0=0xff900630(-7338448) */
ffa05718:	ff e3 5a dd 	CALL 0xffa011cc <_printf_str>;
ffa0571c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa05720:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_g_httpRxed> */
ffa05724:	17 93       	[P2] = R7;
ffa05726:	a0 a2       	R0 = [P4 + 0x28];
ffa05728:	ff e3 d6 e6 	CALL 0xffa024d4 <_htonl>;
ffa0572c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_g_httpRxed> */
ffa05730:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa05734:	10 93       	[P2] = R0;
ffa05736:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa0573a:	e6 a1       	R6 = [P4 + 0x1c];
ffa0573c:	0a e1 1c 0d 	P2.L = 0xd1c;		/* (3356)	P2=0xff900d1c <_NetDestIP> */
ffa05740:	16 93       	[P2] = R6;
ffa05742:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d1c <_NetDestIP> */
ffa05746:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_TcpClientPort> */
ffa0574a:	20 30       	R4 = R0;
ffa0574c:	6f 32       	P5 = FP;
ffa0574e:	60 e5 12 00 	R0 = W[P4 + 0x24] (X);
ffa05752:	10 97       	W[P2] = R0;
ffa05754:	c5 6f       	P5 += -0x8;		/* ( -8) */
ffa05756:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa05758:	4f 30       	R1 = FP;
ffa0575a:	e0 bb       	[FP -0x8] = R0;
ffa0575c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0575e:	45 30       	R0 = P5;
ffa05760:	16 30       	R2 = R6;
ffa05762:	ff e3 cd e9 	CALL 0xffa02afc <_eth_header_setup>;
ffa05766:	08 30       	R1 = R0;
ffa05768:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0576c:	80 0c       	CC = R0 < 0x0;
ffa0576e:	10 18       	IF CC JUMP 0xffa0578e <_tcp_rx+0x5aa>;
ffa05770:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa05772:	f0 b0       	[SP + 0xc] = R0;
ffa05774:	16 30       	R2 = R6;
ffa05776:	01 30       	R0 = R1;
ffa05778:	4d 30       	R1 = P5;
ffa0577a:	ff e3 d5 e6 	CALL 0xffa02524 <_ip_header_setup>;
ffa0577e:	4d 30       	R1 = P5;
ffa05780:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa05782:	f4 b0       	[SP + 0xc] = R4;
ffa05784:	37 b1       	[SP + 0x10] = R7;
ffa05786:	ff e3 c3 eb 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa0578a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0578e:	00 0d       	CC = R0 <= 0x0;
ffa05790:	02 14       	IF !CC JUMP 0xffa05794 <_tcp_rx+0x5b0> (BP);
ffa05792:	ee 2d       	JUMP.S 0xffa0536e <_tcp_rx+0x18a>;
ffa05794:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e48 <_TcpClientPort> */
ffa05798:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_TcpState> */
ffa0579c:	17 93       	[P2] = R7;
ffa0579e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_TcpState> */
ffa057a2:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa057a6:	11 95       	R1 = W[P2] (Z);
ffa057a8:	11 32       	P2 = R1;
ffa057aa:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa057ae:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa057b2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa057b4:	52 91       	P2 = [P2];
ffa057b6:	95 ad       	P5 = [P2 + 0x18];
ffa057b8:	e9 a7       	R1 = W[P5 + 0x1e] (Z);
ffa057ba:	a8 a7       	R0 = W[P5 + 0x1c] (Z);
ffa057bc:	08 50       	R0 = R0 + R1;
ffa057be:	69 e4 10 00 	R1 = W[P5 + 0x20] (Z);
ffa057c2:	08 50       	R0 = R0 + R1;
ffa057c4:	6e e4 11 00 	R6 = W[P5 + 0x22] (Z);
ffa057c8:	86 51       	R6 = R6 + R0;
ffa057ca:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa057ce:	10 4e       	R0 >>= 0x2;
ffa057d0:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa057d4:	ff e3 74 e6 	CALL 0xffa024bc <_htons>;
ffa057d8:	c0 42       	R0 = R0.L (Z);
ffa057da:	47 4f       	R7 <<= 0x8;
ffa057dc:	c7 51       	R7 = R7 + R0;
ffa057de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa057e0:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa057e4:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa057e8:	82 c6 e8 87 	R3 = R0 >> 0x3;
ffa057ec:	03 0d       	CC = R3 <= 0x0;
ffa057ee:	77 50       	R1 = R7 + R6;
ffa057f0:	c9 1a       	IF CC JUMP 0xffa05582 <_tcp_rx+0x39e>;
ffa057f2:	55 32       	P2 = P5;
ffa057f4:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa057f6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa057f8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa057fa:	10 94       	R0 = W[P2++] (Z);
ffa057fc:	13 08       	CC = R3 == R2;
ffa057fe:	41 50       	R1 = R1 + R0;
ffa05800:	fc 17       	IF !CC JUMP 0xffa057f8 <_tcp_rx+0x614> (BP);
ffa05802:	c0 2e       	JUMP.S 0xffa05582 <_tcp_rx+0x39e>;
ffa05804:	77 30       	R6 = FP;
ffa05806:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa05808:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa0580c:	c6 67       	R6 += -0x8;		/* ( -8) */
ffa0580e:	4f 30       	R1 = FP;
ffa05810:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa05814:	e0 bb       	[FP -0x8] = R0;
ffa05816:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa05818:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R4 = [P2] || NOP;
ffa0581c:	14 91 00 00 
ffa05820:	17 30       	R2 = R7;
ffa05822:	ff e3 6d e9 	CALL 0xffa02afc <_eth_header_setup>;
ffa05826:	08 30       	R1 = R0;
ffa05828:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0582c:	80 0c       	CC = R0 < 0x0;
ffa0582e:	12 18       	IF CC JUMP 0xffa05852 <_tcp_rx+0x66e>;
ffa05830:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa05832:	f0 b0       	[SP + 0xc] = R0;
ffa05834:	17 30       	R2 = R7;
ffa05836:	01 30       	R0 = R1;
ffa05838:	0e 30       	R1 = R6;
ffa0583a:	ff e3 75 e6 	CALL 0xffa02524 <_ip_header_setup>;
ffa0583e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa05842:	f4 b0 00 00 
ffa05846:	8a 60       	R2 = 0x11 (X);		/*		R2=0x11( 17) */
ffa05848:	35 bd       	[SP + 0x10] = P5;
ffa0584a:	ff e3 61 eb 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa0584e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05852:	00 0d       	CC = R0 <= 0x0;
ffa05854:	1e 1a       	IF CC JUMP 0xffa05490 <_tcp_rx+0x2ac>;
ffa05856:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa0585a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa0585e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa05860:	09 e1 3c 0e 	P1.L = 0xe3c;		/* (3644)	P1=0xff900e3c <_TcpState> */
ffa05864:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa05868:	08 93       	[P1] = R0;
ffa0586a:	10 95       	R0 = W[P2] (Z);
ffa0586c:	10 32       	P2 = R0;
ffa0586e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e3c <_TcpState> */
ffa05872:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa05876:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa05878:	52 91       	P2 = [P2];
ffa0587a:	95 ad       	P5 = [P2 + 0x18];
ffa0587c:	e8 a7       	R0 = W[P5 + 0x1e] (Z);
ffa0587e:	af a7       	R7 = W[P5 + 0x1c] (Z);
ffa05880:	c7 51       	R7 = R7 + R0;
ffa05882:	68 e4 10 00 	R0 = W[P5 + 0x20] (Z);
ffa05886:	c7 51       	R7 = R7 + R0;
ffa05888:	68 e4 11 00 	R0 = W[P5 + 0x22] (Z);
ffa0588c:	c7 51       	R7 = R7 + R0;
ffa0588e:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa05892:	10 4e       	R0 >>= 0x2;
ffa05894:	ae e4 19 00 	R6 = B[P5 + 0x19] (Z);
ffa05898:	ff e3 12 e6 	CALL 0xffa024bc <_htons>;
ffa0589c:	c0 42       	R0 = R0.L (Z);
ffa0589e:	46 4f       	R6 <<= 0x8;
ffa058a0:	86 51       	R6 = R6 + R0;
ffa058a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa058a4:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa058a8:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa058ac:	82 c6 e8 87 	R3 = R0 >> 0x3;
ffa058b0:	03 0d       	CC = R3 <= 0x0;
ffa058b2:	7e 50       	R1 = R6 + R7;
ffa058b4:	67 1a       	IF CC JUMP 0xffa05582 <_tcp_rx+0x39e>;
ffa058b6:	55 32       	P2 = P5;
ffa058b8:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa058ba:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa058bc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa058be:	10 94       	R0 = W[P2++] (Z);
ffa058c0:	13 08       	CC = R3 == R2;
ffa058c2:	41 50       	R1 = R1 + R0;
ffa058c4:	fc 17       	IF !CC JUMP 0xffa058bc <_tcp_rx+0x6d8> (BP);
ffa058c6:	5e 2e       	JUMP.S 0xffa05582 <_tcp_rx+0x39e>;
ffa058c8:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa058cc:	38 54       	R0 = R0 & R7;
ffa058ce:	4b 30       	R1 = P3;
ffa058d0:	10 4d       	R0 >>>= 0x2;
ffa058d2:	01 50       	R0 = R1 + R0;
ffa058d4:	0d 30       	R1 = R5;
ffa058d6:	00 e3 c9 07 	CALL 0xffa06868 <_httpCollate>;
ffa058da:	00 0c       	CC = R0 == 0x0;
ffa058dc:	2c 1c       	IF CC JUMP 0xffa05934 <_tcp_rx+0x750> (BP);
ffa058de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa058e2:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa058e6:	10 91       	R0 = [P2];
ffa058e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa058ec:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa058f0:	11 91       	R1 = [P2];
ffa058f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa058f6:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_g_httpContentLen> */
ffa058fa:	28 93       	[P5] = R0;
ffa058fc:	10 91       	R0 = [P2];
ffa058fe:	41 50       	R1 = R1 + R0;
ffa05900:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa05904:	00 e1 4c 06 	R0.L = 0x64c;		/* (1612)	R0=0xff90064c(-7338420) */
ffa05908:	ff e3 72 db 	CALL 0xffa00fec <_printf_int>;
ffa0590c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90064c(-7338420) */
ffa05910:	00 e1 e0 07 	R0.L = 0x7e0;		/* (2016)	R0=0xff9007e0(-7338016) */
ffa05914:	ff e3 5c dc 	CALL 0xffa011cc <_printf_str>;
ffa05918:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0591a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0591c:	ff e3 62 fb 	CALL 0xffa04fe0 <_tcp_burst>;
ffa05920:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05922:	6e 2c       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa05924:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05928:	00 e1 1c 06 	R0.L = 0x61c;		/* (1564)	R0=0xff90061c(-7338468) */
ffa0592c:	ff e3 50 dc 	CALL 0xffa011cc <_printf_str>;
ffa05930:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05932:	66 2c       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa05934:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa05938:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_g_httpContentLen> */
ffa0593c:	09 e1 1c 0d 	P1.L = 0xd1c;		/* (3356)	P1=0xff900d1c <_NetDestIP> */
ffa05940:	0a e1 30 0e 	P2.L = 0xe30;		/* (3632)	P2=0xff900e30 <_TcpSeqHost> */
ffa05944:	77 30       	R6 = FP;
ffa05946:	0f 91       	R7 = [P1];
ffa05948:	15 91       	R5 = [P2];
ffa0594a:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0594c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e30 <_TcpSeqHost> */
ffa05950:	c6 67       	R6 += -0x8;		/* ( -8) */
ffa05952:	4f 30       	R1 = FP;
ffa05954:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa05958:	e0 bb       	[FP -0x8] = R0;
ffa0595a:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0595c:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R4 = [P2] || NOP;
ffa05960:	14 91 00 00 
ffa05964:	17 30       	R2 = R7;
ffa05966:	ff e3 cb e8 	CALL 0xffa02afc <_eth_header_setup>;
ffa0596a:	08 30       	R1 = R0;
ffa0596c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05970:	80 0c       	CC = R0 < 0x0;
ffa05972:	12 18       	IF CC JUMP 0xffa05996 <_tcp_rx+0x7b2>;
ffa05974:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa05976:	f0 b0       	[SP + 0xc] = R0;
ffa05978:	17 30       	R2 = R7;
ffa0597a:	01 30       	R0 = R1;
ffa0597c:	0e 30       	R1 = R6;
ffa0597e:	ff e3 d3 e5 	CALL 0xffa02524 <_ip_header_setup>;
ffa05982:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0xc] = R5 || NOP;
ffa05986:	f5 b0 00 00 
ffa0598a:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa0598c:	34 b1       	[SP + 0x10] = R4;
ffa0598e:	ff e3 bf ea 	CALL 0xffa02f0c <_tcp_header_setup>;
ffa05992:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa05996:	00 0d       	CC = R0 <= 0x0;
ffa05998:	02 14       	IF !CC JUMP 0xffa0599c <_tcp_rx+0x7b8> (BP);
ffa0599a:	31 2c       	JUMP.S 0xffa051fc <_tcp_rx+0x18>;
ffa0599c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa059a0:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_txIdx> */
ffa059a4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d1c <_NetDestIP> */
ffa059a8:	10 95       	R0 = W[P2] (Z);
ffa059aa:	10 32       	P2 = R0;
ffa059ac:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_txbuf> */
ffa059b0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa059b2:	52 91       	P2 = [P2];
ffa059b4:	95 ad       	P5 = [P2 + 0x18];
ffa059b6:	e8 a7       	R0 = W[P5 + 0x1e] (Z);
ffa059b8:	a9 a7       	R1 = W[P5 + 0x1c] (Z);
ffa059ba:	41 50       	R1 = R1 + R0;
ffa059bc:	68 e4 10 00 	R0 = W[P5 + 0x20] (Z);
ffa059c0:	08 50       	R0 = R0 + R1;
ffa059c2:	6e e4 11 00 	R6 = W[P5 + 0x22] (Z);
ffa059c6:	86 51       	R6 = R6 + R0;
ffa059c8:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa059cc:	10 4e       	R0 >>= 0x2;
ffa059ce:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa059d2:	ff e3 75 e5 	CALL 0xffa024bc <_htons>;
ffa059d6:	c0 42       	R0 = R0.L (Z);
ffa059d8:	47 4f       	R7 <<= 0x8;
ffa059da:	c7 51       	R7 = R7 + R0;
ffa059dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa059de:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa059e2:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa059e6:	82 c6 e8 87 	R3 = R0 >> 0x3;
ffa059ea:	03 0d       	CC = R3 <= 0x0;
ffa059ec:	77 50       	R1 = R7 + R6;
ffa059ee:	02 14       	IF !CC JUMP 0xffa059f2 <_tcp_rx+0x80e> (BP);
ffa059f0:	c9 2d       	JUMP.S 0xffa05582 <_tcp_rx+0x39e>;
ffa059f2:	55 32       	P2 = P5;
ffa059f4:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa059f6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa059f8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa059fa:	10 94       	R0 = W[P2++] (Z);
ffa059fc:	13 08       	CC = R3 == R2;
ffa059fe:	41 50       	R1 = R1 + R0;
ffa05a00:	fc 17       	IF !CC JUMP 0xffa059f8 <_tcp_rx+0x814> (BP);
ffa05a02:	c0 2d       	JUMP.S 0xffa05582 <_tcp_rx+0x39e>;
ffa05a04:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa05a08:	9b 2c       	JUMP.S 0xffa0533e <_tcp_rx+0x15a>;
ffa05a0a:	0a 30       	R1 = R2;
ffa05a0c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05a0e:	ff e3 e9 fa 	CALL 0xffa04fe0 <_tcp_burst>;
ffa05a12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05a14:	f5 2b       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
ffa05a16:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_txbuf> */
ffa05a1a:	09 e1 3c 0e 	P1.L = 0xe3c;		/* (3644)	P1=0xff900e3c <_TcpState> */
ffa05a1e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa05a20:	08 93       	[P1] = R0;
ffa05a22:	a0 a2       	R0 = [P4 + 0x28];
ffa05a24:	ff e3 58 e5 	CALL 0xffa024d4 <_htonl>;
ffa05a28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_txIdx> */
ffa05a2c:	0a e1 34 0e 	P2.L = 0xe34;		/* (3636)	P2=0xff900e34 <_TcpSeqClient> */
ffa05a30:	10 93       	[P2] = R0;
ffa05a32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa05a36:	00 e1 fc 05 	R0.L = 0x5fc;		/* (1532)	R0=0xff9005fc(-7338500) */
ffa05a3a:	ff e3 c9 db 	CALL 0xffa011cc <_printf_str>;
ffa05a3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05a40:	df 2b       	JUMP.S 0xffa051fe <_tcp_rx+0x1a>;
	...

ffa05a44 <_htmlForm>:
ffa05a44:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa05a48:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900000 <_l1_data_a>(-7340032) */
ffa05a4c:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa05a50:	01 e8 00 00 	UNLINK;
ffa05a54:	ff e2 d6 dc 	JUMP.L 0xffa01400 <_strcpy_>;

ffa05a58 <_htmlDiv>:
ffa05a58:	12 43       	R2 = R2.B (X);
ffa05a5a:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa05a5e:	1a 08       	CC = R2 == R3;
ffa05a60:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa05a64:	09 18       	IF CC JUMP 0xffa05a76 <_htmlDiv+0x1e>;
ffa05a66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa05a6a:	02 e1 bc 06 	R2.L = 0x6bc;		/* (1724)	R2=0xff9006bc(-7338308) */
ffa05a6e:	01 e8 00 00 	UNLINK;
ffa05a72:	ff e2 c7 dc 	JUMP.L 0xffa01400 <_strcpy_>;
ffa05a76:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006bc(-7338308) */
ffa05a7a:	02 e1 88 06 	R2.L = 0x688;		/* (1672)	R2=0xff900688(-7338360) */
ffa05a7e:	01 e8 00 00 	UNLINK;
ffa05a82:	ff e2 bf dc 	JUMP.L 0xffa01400 <_strcpy_>;
	...

ffa05a88 <_html404>:
ffa05a88:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa05a8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a8e:	f0 bb       	[FP -0x4] = R0;
ffa05a90:	4f 30       	R1 = FP;
ffa05a92:	20 e1 01 04 	R0 = 0x401 (X);		/*		R0=0x401(1025) */
ffa05a96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900688(-7338360) */
ffa05a9a:	40 4f       	R0 <<= 0x8;
ffa05a9c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa05a9e:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa05aa2:	ff e3 af dc 	CALL 0xffa01400 <_strcpy_>;
ffa05aa6:	f0 b9       	R0 = [FP -0x4];
ffa05aa8:	01 e8 00 00 	UNLINK;
ffa05aac:	10 00       	RTS;
	...

ffa05ab0 <_htmlCursorOption>:
ffa05ab0:	68 05       	[--SP] = (R7:5);
ffa05ab2:	2a 30       	R5 = R2;
ffa05ab4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa05ab8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05abc:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa05ac0:	3f a2 00 00 
ffa05ac4:	02 e1 0c 07 	R2.L = 0x70c;		/* (1804)	R2=0xff90070c(-7338228) */
ffa05ac8:	ff e3 9c dc 	CALL 0xffa01400 <_strcpy_>;
ffa05acc:	0e 30       	R1 = R6;
ffa05ace:	15 30       	R2 = R5;
ffa05ad0:	ff e3 64 e1 	CALL 0xffa01d98 <_strprintf_int>;
ffa05ad4:	3d 08       	CC = R5 == R7;
ffa05ad6:	16 18       	IF CC JUMP 0xffa05b02 <_htmlCursorOption+0x52>;
ffa05ad8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90070c(-7338228) */
ffa05adc:	0e 30       	R1 = R6;
ffa05ade:	02 e1 34 07 	R2.L = 0x734;		/* (1844)	R2=0xff900734(-7338188) */
ffa05ae2:	ff e3 8f dc 	CALL 0xffa01400 <_strcpy_>;
ffa05ae6:	0e 30       	R1 = R6;
ffa05ae8:	15 30       	R2 = R5;
ffa05aea:	ff e3 57 e1 	CALL 0xffa01d98 <_strprintf_int>;
ffa05aee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900734(-7338188) */
ffa05af2:	01 e8 00 00 	UNLINK;
ffa05af6:	0e 30       	R1 = R6;
ffa05af8:	02 e1 38 07 	R2.L = 0x738;		/* (1848)	R2=0xff900738(-7338184) */
ffa05afc:	28 05       	(R7:5) = [SP++];
ffa05afe:	ff e2 81 dc 	JUMP.L 0xffa01400 <_strcpy_>;
ffa05b02:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900738(-7338184) */
ffa05b06:	0e 30       	R1 = R6;
ffa05b08:	02 e1 1c 07 	R2.L = 0x71c;		/* (1820)	R2=0xff90071c(-7338212) */
ffa05b0c:	ff e3 7a dc 	CALL 0xffa01400 <_strcpy_>;
ffa05b10:	e4 2f       	JUMP.S 0xffa05ad8 <_htmlCursorOption+0x28>;
	...

ffa05b14 <_htmlCursorSelect>:
ffa05b14:	60 05       	[--SP] = (R7:4);
ffa05b16:	2a 30       	R5 = R2;
ffa05b18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90071c(-7338212) */
ffa05b1c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa05b20:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R6 = [FP + 0x28] || NOP;
ffa05b24:	be a2 00 00 
ffa05b28:	02 e1 44 07 	R2.L = 0x744;		/* (1860)	R2=0xff900744(-7338172) */
ffa05b2c:	7c a2       	R4 = [FP + 0x24];
ffa05b2e:	ff e3 69 dc 	CALL 0xffa01400 <_strcpy_>;
ffa05b32:	0f 30       	R1 = R7;
ffa05b34:	15 30       	R2 = R5;
ffa05b36:	ff e3 65 dc 	CALL 0xffa01400 <_strcpy_>;
ffa05b3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900744(-7338172) */
ffa05b3e:	0f 30       	R1 = R7;
ffa05b40:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa05b44:	ff e3 5e dc 	CALL 0xffa01400 <_strcpy_>;
ffa05b48:	0f 30       	R1 = R7;
ffa05b4a:	14 30       	R2 = R4;
ffa05b4c:	ff e3 5a dc 	CALL 0xffa01400 <_strcpy_>;
ffa05b50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa05b54:	0f 30       	R1 = R7;
ffa05b56:	02 e1 6c 07 	R2.L = 0x76c;		/* (1900)	R2=0xff90076c(-7338132) */
ffa05b5a:	ff e3 53 dc 	CALL 0xffa01400 <_strcpy_>;
ffa05b5e:	f6 b0       	[SP + 0xc] = R6;
ffa05b60:	0f 30       	R1 = R7;
ffa05b62:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa05b64:	ff e3 a6 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05b68:	f6 b0       	[SP + 0xc] = R6;
ffa05b6a:	0f 30       	R1 = R7;
ffa05b6c:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa05b6e:	ff e3 a1 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05b72:	f6 b0       	[SP + 0xc] = R6;
ffa05b74:	0f 30       	R1 = R7;
ffa05b76:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa05b78:	ff e3 9c ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05b7c:	f6 b0       	[SP + 0xc] = R6;
ffa05b7e:	0f 30       	R1 = R7;
ffa05b80:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa05b82:	ff e3 97 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05b86:	f6 b0       	[SP + 0xc] = R6;
ffa05b88:	0f 30       	R1 = R7;
ffa05b8a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa05b8c:	ff e3 92 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05b90:	f6 b0       	[SP + 0xc] = R6;
ffa05b92:	0f 30       	R1 = R7;
ffa05b94:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa05b96:	ff e3 8d ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05b9a:	f6 b0       	[SP + 0xc] = R6;
ffa05b9c:	0f 30       	R1 = R7;
ffa05b9e:	32 60       	R2 = 0x6 (X);		/*		R2=0x6(  6) */
ffa05ba0:	ff e3 88 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05ba4:	f6 b0       	[SP + 0xc] = R6;
ffa05ba6:	0f 30       	R1 = R7;
ffa05ba8:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
ffa05baa:	ff e3 83 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bae:	f6 b0       	[SP + 0xc] = R6;
ffa05bb0:	0f 30       	R1 = R7;
ffa05bb2:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
ffa05bb4:	ff e3 7e ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bb8:	f6 b0       	[SP + 0xc] = R6;
ffa05bba:	0f 30       	R1 = R7;
ffa05bbc:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa05bbe:	ff e3 79 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bc2:	f6 b0       	[SP + 0xc] = R6;
ffa05bc4:	0f 30       	R1 = R7;
ffa05bc6:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa05bc8:	ff e3 74 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bcc:	f6 b0       	[SP + 0xc] = R6;
ffa05bce:	0f 30       	R1 = R7;
ffa05bd0:	5a 60       	R2 = 0xb (X);		/*		R2=0xb( 11) */
ffa05bd2:	ff e3 6f ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bd6:	f6 b0       	[SP + 0xc] = R6;
ffa05bd8:	0f 30       	R1 = R7;
ffa05bda:	62 60       	R2 = 0xc (X);		/*		R2=0xc( 12) */
ffa05bdc:	ff e3 6a ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05be0:	f6 b0       	[SP + 0xc] = R6;
ffa05be2:	0f 30       	R1 = R7;
ffa05be4:	6a 60       	R2 = 0xd (X);		/*		R2=0xd( 13) */
ffa05be6:	ff e3 65 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bea:	f6 b0       	[SP + 0xc] = R6;
ffa05bec:	0f 30       	R1 = R7;
ffa05bee:	72 60       	R2 = 0xe (X);		/*		R2=0xe( 14) */
ffa05bf0:	ff e3 60 ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bf4:	f6 b0       	[SP + 0xc] = R6;
ffa05bf6:	0f 30       	R1 = R7;
ffa05bf8:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa05bfa:	ff e3 5b ff 	CALL 0xffa05ab0 <_htmlCursorOption>;
ffa05bfe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90000f(-7340017) */
ffa05c02:	01 e8 00 00 	UNLINK;
ffa05c06:	0f 30       	R1 = R7;
ffa05c08:	02 e1 70 07 	R2.L = 0x770;		/* (1904)	R2=0xff900770(-7338128) */
ffa05c0c:	20 05       	(R7:4) = [SP++];
ffa05c0e:	ff e2 f9 db 	JUMP.L 0xffa01400 <_strcpy_>;
	...

ffa05c14 <_httpHeader>:
ffa05c14:	78 05       	[--SP] = (R7:7);
ffa05c16:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa05c1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05c1c:	7f 30       	R7 = FP;
ffa05c1e:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa05c20:	f0 bb       	[FP -0x4] = R0;
ffa05c22:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900770(-7338128) */
ffa05c26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05c28:	0f 30       	R1 = R7;
ffa05c2a:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa05c2e:	90 4f       	R0 <<= 0x12;
ffa05c30:	ff e3 e8 db 	CALL 0xffa01400 <_strcpy_>;
ffa05c34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa05c38:	0f 30       	R1 = R7;
ffa05c3a:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa05c3e:	ff e3 e1 db 	CALL 0xffa01400 <_strcpy_>;
ffa05c42:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa05c46:	0f 30       	R1 = R7;
ffa05c48:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa05c4c:	ff e3 da db 	CALL 0xffa01400 <_strcpy_>;
ffa05c50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e34 <_TcpSeqClient> */
ffa05c54:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_g_httpContentLen> */
ffa05c58:	12 91       	R2 = [P2];
ffa05c5a:	0f 30       	R1 = R7;
ffa05c5c:	ff e3 9e e0 	CALL 0xffa01d98 <_strprintf_int>;
ffa05c60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa05c64:	0f 30       	R1 = R7;
ffa05c66:	02 e1 c4 07 	R2.L = 0x7c4;		/* (1988)	R2=0xff9007c4(-7338044) */
ffa05c6a:	ff e3 cb db 	CALL 0xffa01400 <_strcpy_>;
ffa05c6e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_g_httpContentLen> */
ffa05c72:	f0 b9       	R0 = [FP -0x4];
ffa05c74:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa05c78:	10 93       	[P2] = R0;
ffa05c7a:	01 e8 00 00 	UNLINK;
ffa05c7e:	38 05       	(R7:7) = [SP++];
ffa05c80:	10 00       	RTS;
	...

ffa05c84 <_htmlDefault>:
ffa05c84:	f5 05       	[--SP] = (R7:6, P5:5);
ffa05c86:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa05c8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05c8c:	77 30       	R6 = FP;
ffa05c8e:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa05c90:	f0 bb       	[FP -0x4] = R0;
ffa05c92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c4(-7338044) */
ffa05c96:	20 e1 01 04 	R0 = 0x401 (X);		/*		R0=0x401(1025) */
ffa05c9a:	0e 30       	R1 = R6;
ffa05c9c:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa05ca0:	40 4f       	R0 <<= 0x8;
ffa05ca2:	ff e3 af db 	CALL 0xffa01400 <_strcpy_>;
ffa05ca6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa05caa:	0e 30       	R1 = R6;
ffa05cac:	02 e1 88 06 	R2.L = 0x688;		/* (1672)	R2=0xff900688(-7338360) */
ffa05cb0:	ff e3 a8 db 	CALL 0xffa01400 <_strcpy_>;
ffa05cb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900688(-7338360) */
ffa05cb8:	0e 30       	R1 = R6;
ffa05cba:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa05cbe:	ff e3 a1 db 	CALL 0xffa01400 <_strcpy_>;
ffa05cc2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa05cc6:	0e 30       	R1 = R6;
ffa05cc8:	02 e1 34 08 	R2.L = 0x834;		/* (2100)	R2=0xff900834(-7337932) */
ffa05ccc:	ff e3 9a db 	CALL 0xffa01400 <_strcpy_>;
ffa05cd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa05cd4:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_g_streamEnabled> */
ffa05cd8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa05cdc:	10 99 00 00 
ffa05ce0:	00 0c       	CC = R0 == 0x0;
ffa05ce2:	b8 1d       	IF CC JUMP 0xffa06052 <_htmlDefault+0x3ce> (BP);
ffa05ce4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900834(-7337932) */
ffa05ce8:	01 30       	R0 = R1;
ffa05cea:	02 e1 84 08 	R2.L = 0x884;		/* (2180)	R2=0xff900884(-7337852) */
ffa05cee:	0e 30       	R1 = R6;
ffa05cf0:	ff e3 88 db 	CALL 0xffa01400 <_strcpy_>;
ffa05cf4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900884(-7337852) */
ffa05cf8:	0e 30       	R1 = R6;
ffa05cfa:	02 e1 9c 08 	R2.L = 0x89c;		/* (2204)	R2=0xff90089c(-7337828) */
ffa05cfe:	ff e3 81 db 	CALL 0xffa01400 <_strcpy_>;
ffa05d02:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90089c(-7337828) */
ffa05d06:	0e 30       	R1 = R6;
ffa05d08:	02 e1 88 06 	R2.L = 0x688;		/* (1672)	R2=0xff900688(-7338360) */
ffa05d0c:	ff e3 7a db 	CALL 0xffa01400 <_strcpy_>;
ffa05d10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900688(-7338360) */
ffa05d14:	0e 30       	R1 = R6;
ffa05d16:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa05d1a:	ff e3 73 db 	CALL 0xffa01400 <_strcpy_>;
ffa05d1e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa05d22:	0e 30       	R1 = R6;
ffa05d24:	02 e1 b0 08 	R2.L = 0x8b0;		/* (2224)	R2=0xff9008b0(-7337808) */
ffa05d28:	ff e3 6c db 	CALL 0xffa01400 <_strcpy_>;
ffa05d2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b0(-7337808) */
ffa05d30:	0e 30       	R1 = R6;
ffa05d32:	02 e1 cc 08 	R2.L = 0x8cc;		/* (2252)	R2=0xff9008cc(-7337780) */
ffa05d36:	ff e3 65 db 	CALL 0xffa01400 <_strcpy_>;
ffa05d3a:	0e 30       	R1 = R6;
ffa05d3c:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa05d3e:	ff e3 2d e0 	CALL 0xffa01d98 <_strprintf_int>;
ffa05d42:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e30 <_TcpSeqHost> */
ffa05d46:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900001(-7340031) */
ffa05d4a:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_NetDataDestIP> */
ffa05d4e:	0e 30       	R1 = R6;
ffa05d50:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa05d54:	ff e3 56 db 	CALL 0xffa01400 <_strcpy_>;
ffa05d58:	2a 99       	R2 = B[P5] (Z);
ffa05d5a:	0e 30       	R1 = R6;
ffa05d5c:	ff e3 1e e0 	CALL 0xffa01d98 <_strprintf_int>;
ffa05d60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa05d64:	0e 30       	R1 = R6;
ffa05d66:	02 e1 fc 08 	R2.L = 0x8fc;		/* (2300)	R2=0xff9008fc(-7337732) */
ffa05d6a:	ff e3 4b db 	CALL 0xffa01400 <_strcpy_>;
ffa05d6e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008fc(-7337732) */
ffa05d72:	0e 30       	R1 = R6;
ffa05d74:	02 e1 cc 08 	R2.L = 0x8cc;		/* (2252)	R2=0xff9008cc(-7337780) */
ffa05d78:	ff e3 44 db 	CALL 0xffa01400 <_strcpy_>;
ffa05d7c:	0e 30       	R1 = R6;
ffa05d7e:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa05d80:	ff e3 0c e0 	CALL 0xffa01d98 <_strprintf_int>;
ffa05d84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900002(-7340030) */
ffa05d88:	0e 30       	R1 = R6;
ffa05d8a:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa05d8e:	ff e3 39 db 	CALL 0xffa01400 <_strcpy_>;
ffa05d92:	aa e4 01 00 	R2 = B[P5 + 0x1] (Z);
ffa05d96:	0e 30       	R1 = R6;
ffa05d98:	ff e3 00 e0 	CALL 0xffa01d98 <_strprintf_int>;
ffa05d9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa05da0:	0e 30       	R1 = R6;
ffa05da2:	02 e1 fc 08 	R2.L = 0x8fc;		/* (2300)	R2=0xff9008fc(-7337732) */
ffa05da6:	ff e3 2d db 	CALL 0xffa01400 <_strcpy_>;
ffa05daa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008fc(-7337732) */
ffa05dae:	0e 30       	R1 = R6;
ffa05db0:	02 e1 cc 08 	R2.L = 0x8cc;		/* (2252)	R2=0xff9008cc(-7337780) */
ffa05db4:	ff e3 26 db 	CALL 0xffa01400 <_strcpy_>;
ffa05db8:	0e 30       	R1 = R6;
ffa05dba:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa05dbc:	ff e3 ee df 	CALL 0xffa01d98 <_strprintf_int>;
ffa05dc0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900003(-7340029) */
ffa05dc4:	0e 30       	R1 = R6;
ffa05dc6:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa05dca:	ff e3 1b db 	CALL 0xffa01400 <_strcpy_>;
ffa05dce:	aa e4 02 00 	R2 = B[P5 + 0x2] (Z);
ffa05dd2:	0e 30       	R1 = R6;
ffa05dd4:	ff e3 e2 df 	CALL 0xffa01d98 <_strprintf_int>;
ffa05dd8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa05ddc:	0e 30       	R1 = R6;
ffa05dde:	02 e1 fc 08 	R2.L = 0x8fc;		/* (2300)	R2=0xff9008fc(-7337732) */
ffa05de2:	ff e3 0f db 	CALL 0xffa01400 <_strcpy_>;
ffa05de6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008fc(-7337732) */
ffa05dea:	0e 30       	R1 = R6;
ffa05dec:	02 e1 cc 08 	R2.L = 0x8cc;		/* (2252)	R2=0xff9008cc(-7337780) */
ffa05df0:	ff e3 08 db 	CALL 0xffa01400 <_strcpy_>;
ffa05df4:	0e 30       	R1 = R6;
ffa05df6:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa05df8:	ff e3 d0 df 	CALL 0xffa01d98 <_strprintf_int>;
ffa05dfc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa05e00:	0e 30       	R1 = R6;
ffa05e02:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa05e06:	ff e3 fd da 	CALL 0xffa01400 <_strcpy_>;
ffa05e0a:	aa e4 03 00 	R2 = B[P5 + 0x3] (Z);
ffa05e0e:	0e 30       	R1 = R6;
ffa05e10:	ff e3 c4 df 	CALL 0xffa01d98 <_strprintf_int>;
ffa05e14:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa05e18:	0e 30       	R1 = R6;
ffa05e1a:	02 e1 fc 08 	R2.L = 0x8fc;		/* (2300)	R2=0xff9008fc(-7337732) */
ffa05e1e:	ff e3 f1 da 	CALL 0xffa01400 <_strcpy_>;
ffa05e22:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008fc(-7337732) */
ffa05e26:	0e 30       	R1 = R6;
ffa05e28:	02 e1 04 09 	R2.L = 0x904;		/* (2308)	R2=0xff900904(-7337724) */
ffa05e2c:	ff e3 ea da 	CALL 0xffa01400 <_strcpy_>;
ffa05e30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900904(-7337724) */
ffa05e34:	0e 30       	R1 = R6;
ffa05e36:	02 e1 9c 08 	R2.L = 0x89c;		/* (2204)	R2=0xff90089c(-7337828) */
ffa05e3a:	ff e3 e3 da 	CALL 0xffa01400 <_strcpy_>;
ffa05e3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90089c(-7337828) */
ffa05e42:	0e 30       	R1 = R6;
ffa05e44:	02 e1 bc 06 	R2.L = 0x6bc;		/* (1724)	R2=0xff9006bc(-7338308) */
ffa05e48:	ff e3 dc da 	CALL 0xffa01400 <_strcpy_>;
ffa05e4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006bc(-7338308) */
ffa05e50:	0e 30       	R1 = R6;
ffa05e52:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa05e56:	ff e3 d5 da 	CALL 0xffa01400 <_strcpy_>;
ffa05e5a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa05e5e:	0e 30       	R1 = R6;
ffa05e60:	02 e1 28 09 	R2.L = 0x928;		/* (2344)	R2=0xff900928(-7337688) */
ffa05e64:	ff e3 ce da 	CALL 0xffa01400 <_strcpy_>;
ffa05e68:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c54 */
ffa05e6c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa05e70:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa05e74:	10 99 00 00 
ffa05e78:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa05e7a:	f5 1c       	IF CC JUMP 0xffa06064 <_htmlDefault+0x3e0> (BP);
ffa05e7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900928(-7337688) */
ffa05e80:	01 30       	R0 = R1;
ffa05e82:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa05e86:	0e 30       	R1 = R6;
ffa05e88:	ff e3 bc da 	CALL 0xffa01400 <_strcpy_>;
ffa05e8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa05e90:	0e 30       	R1 = R6;
ffa05e92:	02 e1 9c 08 	R2.L = 0x89c;		/* (2204)	R2=0xff90089c(-7337828) */
ffa05e96:	ff e3 b5 da 	CALL 0xffa01400 <_strcpy_>;
ffa05e9a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90089c(-7337828) */
ffa05e9e:	0e 30       	R1 = R6;
ffa05ea0:	02 e1 88 06 	R2.L = 0x688;		/* (1672)	R2=0xff900688(-7338360) */
ffa05ea4:	ff e3 ae da 	CALL 0xffa01400 <_strcpy_>;
ffa05ea8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900688(-7338360) */
ffa05eac:	0e 30       	R1 = R6;
ffa05eae:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa05eb2:	ff e3 a7 da 	CALL 0xffa01400 <_strcpy_>;
ffa05eb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa05eba:	0e 30       	R1 = R6;
ffa05ebc:	02 e1 68 09 	R2.L = 0x968;		/* (2408)	R2=0xff900968(-7337624) */
ffa05ec0:	ff e3 a0 da 	CALL 0xffa01400 <_strcpy_>;
ffa05ec4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa05ec8:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_mouseXpos> */
ffa05ecc:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa05ed0:	10 99 00 00 
ffa05ed4:	ff e3 96 d2 	CALL 0xffa00400 <_LogicalToPhysicalChan>;
ffa05ed8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa05edc:	01 e1 98 09 	R1.L = 0x998;		/* (2456)	R1=0xff900998(-7337576) */
ffa05ee0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900968(-7337624) */
ffa05ee4:	f1 b0       	[SP + 0xc] = R1;
ffa05ee6:	30 b1       	[SP + 0x10] = R0;
ffa05ee8:	0e 30       	R1 = R6;
ffa05eea:	02 e1 8c 09 	R2.L = 0x98c;		/* (2444)	R2=0xff90098c(-7337588) */
ffa05eee:	07 30       	R0 = R7;
ffa05ef0:	ff e3 12 fe 	CALL 0xffa05b14 <_htmlCursorSelect>;
ffa05ef4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_g_mouseXpos> */
ffa05ef8:	0a e1 4d 0c 	P2.L = 0xc4d;		/* (3149)	P2=0xff900c4d <_g_mouseXneg> */
ffa05efc:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa05f00:	10 99 00 00 
ffa05f04:	ff e3 7e d2 	CALL 0xffa00400 <_LogicalToPhysicalChan>;
ffa05f08:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900998(-7337576) */
ffa05f0c:	01 e1 b0 09 	R1.L = 0x9b0;		/* (2480)	R1=0xff9009b0(-7337552) */
ffa05f10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90098c(-7337588) */
ffa05f14:	f1 b0       	[SP + 0xc] = R1;
ffa05f16:	30 b1       	[SP + 0x10] = R0;
ffa05f18:	0e 30       	R1 = R6;
ffa05f1a:	02 e1 a4 09 	R2.L = 0x9a4;		/* (2468)	R2=0xff9009a4(-7337564) */
ffa05f1e:	07 30       	R0 = R7;
ffa05f20:	ff e3 fa fd 	CALL 0xffa05b14 <_htmlCursorSelect>;
ffa05f24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4d <_g_mouseXneg> */
ffa05f28:	0a e1 d0 0c 	P2.L = 0xcd0;		/* (3280)	P2=0xff900cd0 <_g_mouseYpos> */
ffa05f2c:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa05f30:	10 99 00 00 
ffa05f34:	ff e3 66 d2 	CALL 0xffa00400 <_LogicalToPhysicalChan>;
ffa05f38:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9009b0(-7337552) */
ffa05f3c:	01 e1 c8 09 	R1.L = 0x9c8;		/* (2504)	R1=0xff9009c8(-7337528) */
ffa05f40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a4(-7337564) */
ffa05f44:	f1 b0       	[SP + 0xc] = R1;
ffa05f46:	30 b1       	[SP + 0x10] = R0;
ffa05f48:	0e 30       	R1 = R6;
ffa05f4a:	02 e1 bc 09 	R2.L = 0x9bc;		/* (2492)	R2=0xff9009bc(-7337540) */
ffa05f4e:	07 30       	R0 = R7;
ffa05f50:	ff e3 e2 fd 	CALL 0xffa05b14 <_htmlCursorSelect>;
ffa05f54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd0 <_g_mouseYpos> */
ffa05f58:	0a e1 d1 0c 	P2.L = 0xcd1;		/* (3281)	P2=0xff900cd1 <_g_mouseYneg> */
ffa05f5c:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa05f60:	10 99 00 00 
ffa05f64:	ff e3 4e d2 	CALL 0xffa00400 <_LogicalToPhysicalChan>;
ffa05f68:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9009c8(-7337528) */
ffa05f6c:	01 e1 dc 09 	R1.L = 0x9dc;		/* (2524)	R1=0xff9009dc(-7337508) */
ffa05f70:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009bc(-7337540) */
ffa05f74:	f1 b0       	[SP + 0xc] = R1;
ffa05f76:	30 b1       	[SP + 0x10] = R0;
ffa05f78:	0e 30       	R1 = R6;
ffa05f7a:	07 30       	R0 = R7;
ffa05f7c:	02 e1 d4 09 	R2.L = 0x9d4;		/* (2516)	R2=0xff9009d4(-7337516) */
ffa05f80:	ff e3 ca fd 	CALL 0xffa05b14 <_htmlCursorSelect>;
ffa05f84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009d4(-7337516) */
ffa05f88:	0e 30       	R1 = R6;
ffa05f8a:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa05f8e:	ff e3 39 da 	CALL 0xffa01400 <_strcpy_>;
ffa05f92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009e8(-7337496) */
ffa05f96:	0e 30       	R1 = R6;
ffa05f98:	02 e1 bc 06 	R2.L = 0x6bc;		/* (1724)	R2=0xff9006bc(-7338308) */
ffa05f9c:	ff e3 32 da 	CALL 0xffa01400 <_strcpy_>;
ffa05fa0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006bc(-7338308) */
ffa05fa4:	0e 30       	R1 = R6;
ffa05fa6:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa05faa:	ff e3 2b da 	CALL 0xffa01400 <_strcpy_>;
ffa05fae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa05fb2:	0e 30       	R1 = R6;
ffa05fb4:	02 e1 24 0a 	R2.L = 0xa24;		/* (2596)	R2=0xff900a24(-7337436) */
ffa05fb8:	ff e3 24 da 	CALL 0xffa01400 <_strcpy_>;
ffa05fbc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a24(-7337436) */
ffa05fc0:	0e 30       	R1 = R6;
ffa05fc2:	02 e1 88 06 	R2.L = 0x688;		/* (1672)	R2=0xff900688(-7338360) */
ffa05fc6:	ff e3 1d da 	CALL 0xffa01400 <_strcpy_>;
ffa05fca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900688(-7338360) */
ffa05fce:	0e 30       	R1 = R6;
ffa05fd0:	02 e1 7c 0a 	R2.L = 0xa7c;		/* (2684)	R2=0xff900a7c(-7337348) */
ffa05fd4:	ff e3 16 da 	CALL 0xffa01400 <_strcpy_>;
ffa05fd8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a7c(-7337348) */
ffa05fdc:	0e 30       	R1 = R6;
ffa05fde:	02 e1 a4 0a 	R2.L = 0xaa4;		/* (2724)	R2=0xff900aa4(-7337308) */
ffa05fe2:	ff e3 0f da 	CALL 0xffa01400 <_strcpy_>;
ffa05fe6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aa4(-7337308) */
ffa05fea:	0e 30       	R1 = R6;
ffa05fec:	02 e1 9c 08 	R2.L = 0x89c;		/* (2204)	R2=0xff90089c(-7337828) */
ffa05ff0:	ff e3 08 da 	CALL 0xffa01400 <_strcpy_>;
ffa05ff4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90089c(-7337828) */
ffa05ff8:	0e 30       	R1 = R6;
ffa05ffa:	02 e1 ec 0a 	R2.L = 0xaec;		/* (2796)	R2=0xff900aec(-7337236) */
ffa05ffe:	ff e3 01 da 	CALL 0xffa01400 <_strcpy_>;
ffa06002:	0e 30       	R1 = R6;
ffa06004:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa06008:	ff e3 c8 de 	CALL 0xffa01d98 <_strprintf_int>;
ffa0600c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa06010:	0e 30       	R1 = R6;
ffa06012:	02 e1 d8 00 	R2.L = 0xd8;		/* (216)	R2=0xff9000d8(-7339816) */
ffa06016:	ff e3 f5 d9 	CALL 0xffa01400 <_strcpy_>;
ffa0601a:	0e 30       	R1 = R6;
ffa0601c:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa0601e:	ff e3 bd de 	CALL 0xffa01d98 <_strprintf_int>;
ffa06022:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa06026:	0e 30       	R1 = R6;
ffa06028:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa0602c:	ff e3 ea d9 	CALL 0xffa01400 <_strcpy_>;
ffa06030:	0e 30       	R1 = R6;
ffa06032:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa06036:	ff e3 b1 de 	CALL 0xffa01d98 <_strprintf_int>;
ffa0603a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa0603e:	0e 30       	R1 = R6;
ffa06040:	02 e1 f8 0a 	R2.L = 0xaf8;		/* (2808)	R2=0xff900af8(-7337224) */
ffa06044:	ff e3 de d9 	CALL 0xffa01400 <_strcpy_>;
ffa06048:	f0 b9       	R0 = [FP -0x4];
ffa0604a:	01 e8 00 00 	UNLINK;
ffa0604e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa06050:	10 00       	RTS;
ffa06052:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900af8(-7337224) */
ffa06056:	01 30       	R0 = R1;
ffa06058:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa0605c:	0e 30       	R1 = R6;
ffa0605e:	ff e3 d1 d9 	CALL 0xffa01400 <_strcpy_>;
ffa06062:	49 2e       	JUMP.S 0xffa05cf4 <_htmlDefault+0x70>;
ffa06064:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa06068:	01 30       	R0 = R1;
ffa0606a:	02 e1 84 08 	R2.L = 0x884;		/* (2180)	R2=0xff900884(-7337852) */
ffa0606e:	0e 30       	R1 = R6;
ffa06070:	ff e3 c8 d9 	CALL 0xffa01400 <_strcpy_>;
ffa06074:	0c 2f       	JUMP.S 0xffa05e8c <_htmlDefault+0x208>;
	...

ffa06078 <_htmlGeneric>:
ffa06078:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0607a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0607e:	10 30       	R2 = R0;
ffa06080:	4f 30       	R1 = FP;
ffa06082:	20 e1 01 04 	R0 = 0x401 (X);		/*		R0=0x401(1025) */
ffa06086:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa06088:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0608a:	40 4f       	R0 <<= 0x8;
ffa0608c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d5c <_NetDataDestIP> */
ffa06090:	f7 bb       	[FP -0x4] = R7;
ffa06092:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_g_httpContentLen> */
ffa06096:	ff e3 b5 d9 	CALL 0xffa01400 <_strcpy_>;
ffa0609a:	f0 b9       	R0 = [FP -0x4];
ffa0609c:	e7 bb       	[FP -0x8] = R7;
ffa0609e:	7f 30       	R7 = FP;
ffa060a0:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa060a2:	28 93       	[P5] = R0;
ffa060a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900884(-7337852) */
ffa060a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa060aa:	0f 30       	R1 = R7;
ffa060ac:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa060b0:	90 4f       	R0 <<= 0x12;
ffa060b2:	ff e3 a7 d9 	CALL 0xffa01400 <_strcpy_>;
ffa060b6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa060ba:	0f 30       	R1 = R7;
ffa060bc:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa060c0:	ff e3 a0 d9 	CALL 0xffa01400 <_strcpy_>;
ffa060c4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa060c8:	0f 30       	R1 = R7;
ffa060ca:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa060ce:	ff e3 99 d9 	CALL 0xffa01400 <_strcpy_>;
ffa060d2:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa060d6:	2a 91 00 00 
ffa060da:	ff e3 5f de 	CALL 0xffa01d98 <_strprintf_int>;
ffa060de:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa060e2:	0f 30       	R1 = R7;
ffa060e4:	02 e1 c4 07 	R2.L = 0x7c4;		/* (1988)	R2=0xff9007c4(-7338044) */
ffa060e8:	ff e3 8c d9 	CALL 0xffa01400 <_strcpy_>;
ffa060ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd1 <_g_mouseYneg> */
ffa060f0:	e0 b9       	R0 = [FP -0x8];
ffa060f2:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa060f6:	10 93       	[P2] = R0;
ffa060f8:	f0 b9       	R0 = [FP -0x4];
ffa060fa:	01 e8 00 00 	UNLINK;
ffa060fe:	bd 05       	(R7:7, P5:5) = [SP++];
ffa06100:	10 00       	RTS;
	...

ffa06104 <_httpResp>:
ffa06104:	e3 05       	[--SP] = (R7:4, P5:3);
ffa06106:	30 30       	R6 = R0;
ffa06108:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa0610a:	01 09       	CC = R1 <= R0;
ffa0610c:	00 e8 20 00 	LINK 0x80;		/* (128) */
ffa06110:	39 30       	R7 = R1;
ffa06112:	57 10       	IF !CC JUMP 0xffa061c0 <_httpResp+0xbc>;
ffa06114:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa06116:	0f 09       	CC = R7 <= R1;
ffa06118:	73 10       	IF !CC JUMP 0xffa061fe <_httpResp+0xfa>;
ffa0611a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa0611e:	00 e1 08 0b 	R0.L = 0xb08;		/* (2824)	R0=0xff900b08(-7337208) */
ffa06122:	0e 30       	R1 = R6;
ffa06124:	17 30       	R2 = R7;
ffa06126:	ff e3 bd d9 	CALL 0xffa014a0 <_substr>;
ffa0612a:	00 0c       	CC = R0 == 0x0;
ffa0612c:	06 10       	IF !CC JUMP 0xffa06138 <_httpResp+0x34>;
ffa0612e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06130:	01 e8 00 00 	UNLINK;
ffa06134:	a3 05       	(R7:4, P5:3) = [SP++];
ffa06136:	10 00       	RTS;
ffa06138:	7f 30       	R7 = FP;
ffa0613a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0613c:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa0613e:	20 e1 01 04 	R0 = 0x401 (X);		/*		R0=0x401(1025) */
ffa06142:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c4(-7338044) */
ffa06146:	e6 bb       	[FP -0x8] = R6;
ffa06148:	40 4f       	R0 <<= 0x8;
ffa0614a:	0f 30       	R1 = R7;
ffa0614c:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa06150:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e50 <_g_httpContentLen> */
ffa06154:	ff e3 56 d9 	CALL 0xffa01400 <_strcpy_>;
ffa06158:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_g_httpContentLen> */
ffa0615c:	e0 b9       	R0 = [FP -0x8];
ffa0615e:	28 93       	[P5] = R0;
ffa06160:	e6 bb       	[FP -0x8] = R6;
ffa06162:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa06164:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa06168:	0f 30       	R1 = R7;
ffa0616a:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa0616e:	90 4f       	R0 <<= 0x12;
ffa06170:	ff e3 48 d9 	CALL 0xffa01400 <_strcpy_>;
ffa06174:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa06178:	0f 30       	R1 = R7;
ffa0617a:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa0617e:	ff e3 41 d9 	CALL 0xffa01400 <_strcpy_>;
ffa06182:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa06186:	0f 30       	R1 = R7;
ffa06188:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa0618c:	ff e3 3a d9 	CALL 0xffa01400 <_strcpy_>;
ffa06190:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa06194:	2a 91 00 00 
ffa06198:	ff e3 00 de 	CALL 0xffa01d98 <_strprintf_int>;
ffa0619c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa061a0:	0f 30       	R1 = R7;
ffa061a2:	02 e1 c4 07 	R2.L = 0x7c4;		/* (1988)	R2=0xff9007c4(-7338044) */
ffa061a6:	ff e3 2d d9 	CALL 0xffa01400 <_strcpy_>;
ffa061aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa061ae:	e0 b9       	R0 = [FP -0x8];
ffa061b0:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa061b4:	10 93       	[P2] = R0;
ffa061b6:	01 e8 00 00 	UNLINK;
ffa061ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa061bc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa061be:	10 00       	RTS;
ffa061c0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa061c4:	06 30       	R0 = R6;
ffa061c6:	01 e1 10 0b 	R1.L = 0xb10;		/* (2832)	R1=0xff900b10(-7337200) */
ffa061ca:	ff e3 3d d9 	CALL 0xffa01444 <_strcmp>;
ffa061ce:	00 0c       	CC = R0 == 0x0;
ffa061d0:	a2 1f       	IF CC JUMP 0xffa06114 <_httpResp+0x10> (BP);
ffa061d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa061d6:	00 e1 08 0b 	R0.L = 0xb08;		/* (2824)	R0=0xff900b08(-7337208) */
ffa061da:	0e 30       	R1 = R6;
ffa061dc:	17 30       	R2 = R7;
ffa061de:	ff e3 61 d9 	CALL 0xffa014a0 <_substr>;
ffa061e2:	00 0c       	CC = R0 == 0x0;
ffa061e4:	a5 1f       	IF CC JUMP 0xffa0612e <_httpResp+0x2a> (BP);
ffa061e6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e50 <_g_httpContentLen> */
ffa061ea:	ff e3 4d fd 	CALL 0xffa05c84 <_htmlDefault>;
ffa061ee:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_g_httpContentLen> */
ffa061f2:	7f 30       	R7 = FP;
ffa061f4:	28 93       	[P5] = R0;
ffa061f6:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa061f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa061fa:	e0 bb       	[FP -0x8] = R0;
ffa061fc:	b3 2f       	JUMP.S 0xffa06162 <_httpResp+0x5e>;
ffa061fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa06202:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa06206:	0e 30       	R1 = R6;
ffa06208:	17 30       	R2 = R7;
ffa0620a:	ff e3 4b d9 	CALL 0xffa014a0 <_substr>;
ffa0620e:	00 0c       	CC = R0 == 0x0;
ffa06210:	40 1c       	IF CC JUMP 0xffa06290 <_httpResp+0x18c> (BP);
ffa06212:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa06216:	00 e1 28 0b 	R0.L = 0xb28;		/* (2856)	R0=0xff900b28(-7337176) */
ffa0621a:	0e 30       	R1 = R6;
ffa0621c:	17 30       	R2 = R7;
ffa0621e:	ff e3 41 d9 	CALL 0xffa014a0 <_substr>;
ffa06222:	00 0c       	CC = R0 == 0x0;
ffa06224:	85 1f       	IF CC JUMP 0xffa0612e <_httpResp+0x2a> (BP);
ffa06226:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa06228:	06 50       	R0 = R6 + R0;
ffa0622a:	ff e3 c7 dc 	CALL 0xffa01bb8 <_atoi>;
ffa0622e:	08 30       	R1 = R0;
ffa06230:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa06234:	00 67       	R0 += -0x20;		/* (-32) */
ffa06236:	10 0a       	CC = R0 <= R2 (IU);
ffa06238:	02 1c       	IF CC JUMP 0xffa0623c <_httpResp+0x138> (BP);
ffa0623a:	09 22       	JUMP.S 0xffa0664c <_httpResp+0x548>;
ffa0623c:	82 c6 19 84 	R2 = R1 << 0x3;
ffa06240:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e4c */
ffa06244:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa06248:	02 0d       	CC = R2 <= 0x0;
ffa0624a:	13 91       	R3 = [P2];
ffa0624c:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa06250:	16 18       	IF CC JUMP 0xffa0627c <_httpResp+0x178>;
ffa06252:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa06256:	28 4f       	R0 <<= 0x5;
ffa06258:	03 54       	R0 = R3 & R0;
ffa0625a:	49 e1 04 00 	P1.H = 0x4;		/* (  4)	P1=0x40e3c */
ffa0625e:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa06260:	38 52       	R0 = R0 - R7;
ffa06262:	09 e1 00 01 	P1.L = 0x100;		/* (256)	P1=0x40100 */
ffa06266:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa06268:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa0626c:	18 54       	R0 = R0 & R3;
ffa0626e:	10 32       	P2 = R0;
ffa06270:	09 64       	R1 += 0x1;		/* (  1) */
ffa06272:	0a 08       	CC = R2 == R1;
ffa06274:	10 90       	R0 = [P2++];
ffa06276:	08 92       	[P1++] = R0;
ffa06278:	42 30       	R0 = P2;
ffa0627a:	f9 17       	IF !CC JUMP 0xffa0626c <_httpResp+0x168> (BP);
ffa0627c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e50 <_g_httpContentLen> */
ffa06280:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_g_httpContentLen> */
ffa06284:	2f 93       	[P5] = R7;
ffa06286:	7f 30       	R7 = FP;
ffa06288:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0628a:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa0628c:	e0 bb       	[FP -0x8] = R0;
ffa0628e:	6a 2f       	JUMP.S 0xffa06162 <_httpResp+0x5e>;
ffa06290:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa06294:	00 e1 44 0c 	R0.L = 0xc44;		/* (3140)	R0=0xff900c44(-7336892) */
ffa06298:	0e 30       	R1 = R6;
ffa0629a:	17 30       	R2 = R7;
ffa0629c:	ff e3 02 d9 	CALL 0xffa014a0 <_substr>;
ffa062a0:	00 0c       	CC = R0 == 0x0;
ffa062a2:	3c 1f       	IF CC JUMP 0xffa0611a <_httpResp+0x16> (BP);
ffa062a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900c44(-7336892) */
ffa062a8:	00 e1 5c 0b 	R0.L = 0xb5c;		/* (2908)	R0=0xff900b5c(-7337124) */
ffa062ac:	0e 30       	R1 = R6;
ffa062ae:	17 30       	R2 = R7;
ffa062b0:	ff e3 f8 d8 	CALL 0xffa014a0 <_substr>;
ffa062b4:	00 0c       	CC = R0 == 0x0;
ffa062b6:	02 1c       	IF CC JUMP 0xffa062ba <_httpResp+0x1b6> (BP);
ffa062b8:	ab 22       	JUMP.S 0xffa0680e <_httpResp+0x70a>;
ffa062ba:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa062bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b5c(-7337124) */
ffa062c0:	00 e1 80 0b 	R0.L = 0xb80;		/* (2944)	R0=0xff900b80(-7337088) */
ffa062c4:	0e 30       	R1 = R6;
ffa062c6:	17 30       	R2 = R7;
ffa062c8:	ff e3 ec d8 	CALL 0xffa014a0 <_substr>;
ffa062cc:	00 0c       	CC = R0 == 0x0;
ffa062ce:	02 1c       	IF CC JUMP 0xffa062d2 <_httpResp+0x1ce> (BP);
ffa062d0:	7b 22       	JUMP.S 0xffa067c6 <_httpResp+0x6c2>;
ffa062d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b80(-7337088) */
ffa062d6:	00 e1 8c 0b 	R0.L = 0xb8c;		/* (2956)	R0=0xff900b8c(-7337076) */
ffa062da:	0e 30       	R1 = R6;
ffa062dc:	17 30       	R2 = R7;
ffa062de:	ff e3 e1 d8 	CALL 0xffa014a0 <_substr>;
ffa062e2:	00 0c       	CC = R0 == 0x0;
ffa062e4:	02 1c       	IF CC JUMP 0xffa062e8 <_httpResp+0x1e4> (BP);
ffa062e6:	63 22       	JUMP.S 0xffa067ac <_httpResp+0x6a8>;
ffa062e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b8c(-7337076) */
ffa062ec:	00 e1 98 0b 	R0.L = 0xb98;		/* (2968)	R0=0xff900b98(-7337064) */
ffa062f0:	0e 30       	R1 = R6;
ffa062f2:	17 30       	R2 = R7;
ffa062f4:	ff e3 d6 d8 	CALL 0xffa014a0 <_substr>;
ffa062f8:	00 0c       	CC = R0 == 0x0;
ffa062fa:	02 1c       	IF CC JUMP 0xffa062fe <_httpResp+0x1fa> (BP);
ffa062fc:	4b 22       	JUMP.S 0xffa06792 <_httpResp+0x68e>;
ffa062fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b98(-7337064) */
ffa06302:	00 e1 a4 0b 	R0.L = 0xba4;		/* (2980)	R0=0xff900ba4(-7337052) */
ffa06306:	0e 30       	R1 = R6;
ffa06308:	17 30       	R2 = R7;
ffa0630a:	ff e3 cb d8 	CALL 0xffa014a0 <_substr>;
ffa0630e:	00 0c       	CC = R0 == 0x0;
ffa06310:	02 1c       	IF CC JUMP 0xffa06314 <_httpResp+0x210> (BP);
ffa06312:	33 22       	JUMP.S 0xffa06778 <_httpResp+0x674>;
ffa06314:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ba4(-7337052) */
ffa06318:	00 e1 b0 0b 	R0.L = 0xbb0;		/* (2992)	R0=0xff900bb0(-7337040) */
ffa0631c:	0e 30       	R1 = R6;
ffa0631e:	17 30       	R2 = R7;
ffa06320:	ff e3 c0 d8 	CALL 0xffa014a0 <_substr>;
ffa06324:	00 0c       	CC = R0 == 0x0;
ffa06326:	02 1c       	IF CC JUMP 0xffa0632a <_httpResp+0x226> (BP);
ffa06328:	1b 22       	JUMP.S 0xffa0675e <_httpResp+0x65a>;
ffa0632a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900bb0(-7337040) */
ffa0632e:	00 e1 bc 0b 	R0.L = 0xbbc;		/* (3004)	R0=0xff900bbc(-7337028) */
ffa06332:	0e 30       	R1 = R6;
ffa06334:	17 30       	R2 = R7;
ffa06336:	ff e3 b5 d8 	CALL 0xffa014a0 <_substr>;
ffa0633a:	00 0c       	CC = R0 == 0x0;
ffa0633c:	02 1c       	IF CC JUMP 0xffa06340 <_httpResp+0x23c> (BP);
ffa0633e:	00 22       	JUMP.S 0xffa0673e <_httpResp+0x63a>;
ffa06340:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900bbc(-7337028) */
ffa06344:	00 e1 c4 0b 	R0.L = 0xbc4;		/* (3012)	R0=0xff900bc4(-7337020) */
ffa06348:	0e 30       	R1 = R6;
ffa0634a:	17 30       	R2 = R7;
ffa0634c:	ff e3 aa d8 	CALL 0xffa014a0 <_substr>;
ffa06350:	00 0c       	CC = R0 == 0x0;
ffa06352:	e3 11       	IF !CC JUMP 0xffa06718 <_httpResp+0x614>;
ffa06354:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900bc4(-7337020) */
ffa06358:	00 e1 cc 0b 	R0.L = 0xbcc;		/* (3020)	R0=0xff900bcc(-7337012) */
ffa0635c:	0e 30       	R1 = R6;
ffa0635e:	17 30       	R2 = R7;
ffa06360:	ff e3 a0 d8 	CALL 0xffa014a0 <_substr>;
ffa06364:	00 0c       	CC = R0 == 0x0;
ffa06366:	c6 11       	IF !CC JUMP 0xffa066f2 <_httpResp+0x5ee>;
ffa06368:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900bcc(-7337012) */
ffa0636c:	00 e1 d4 0b 	R0.L = 0xbd4;		/* (3028)	R0=0xff900bd4(-7337004) */
ffa06370:	0e 30       	R1 = R6;
ffa06372:	17 30       	R2 = R7;
ffa06374:	ff e3 96 d8 	CALL 0xffa014a0 <_substr>;
ffa06378:	00 0c       	CC = R0 == 0x0;
ffa0637a:	ab 11       	IF !CC JUMP 0xffa066d0 <_httpResp+0x5cc>;
ffa0637c:	28 43       	R0 = R5.B (X);
ffa0637e:	00 0c       	CC = R0 == 0x0;
ffa06380:	33 17       	IF !CC JUMP 0xffa061e6 <_httpResp+0xe2> (BP);
ffa06382:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900bd4(-7337004) */
ffa06386:	00 e1 dc 0b 	R0.L = 0xbdc;		/* (3036)	R0=0xff900bdc(-7336996) */
ffa0638a:	0e 30       	R1 = R6;
ffa0638c:	17 30       	R2 = R7;
ffa0638e:	ff e3 89 d8 	CALL 0xffa014a0 <_substr>;
ffa06392:	00 0c       	CC = R0 == 0x0;
ffa06394:	cd 1a       	IF CC JUMP 0xffa0612e <_httpResp+0x2a>;
ffa06396:	34 e1 00 00 	M0 = 0x0 (X);		/*		M0=0x0(  0) */
ffa0639a:	94 32       	P2 = M0;
ffa0639c:	3a e1 00 00 	B2 = 0x0 (X);		/*		B2=0x0(  0) */
ffa063a0:	36 e1 00 00 	M2 = 0x0 (X);		/*		M2=0x0(  0) */
ffa063a4:	37 e1 00 00 	M3 = 0x0 (X);		/*		M3=0x0(  0) */
ffa063a8:	00 cc 00 c0 	R0 = R0 -|- R0 || [FP -0x10] = P2 || NOP;
ffa063ac:	ca bb 00 00 
ffa063b0:	da 30       	R3 = B2;
ffa063b2:	97 30       	R2 = M3;
ffa063b4:	8e 30       	R1 = M2;
ffa063b6:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800804 */
ffa063ba:	91 bb       	[FP -0x1c] = R1;
ffa063bc:	e3 ba       	[FP -0x48] = R3;
ffa063be:	f0 ba       	[FP -0x44] = R0;
ffa063c0:	00 bb       	[FP -0x40] = R0;
ffa063c2:	10 bb       	[FP -0x3c] = R0;
ffa063c4:	20 bb       	[FP -0x38] = R0;
ffa063c6:	30 bb       	[FP -0x34] = R0;
ffa063c8:	40 bb       	[FP -0x30] = R0;
ffa063ca:	50 bb       	[FP -0x2c] = R0;
ffa063cc:	60 bb       	[FP -0x28] = R0;
ffa063ce:	70 bb       	[FP -0x24] = R0;
ffa063d0:	80 bb       	[FP -0x20] = R0;
ffa063d2:	a2 bb       	[FP -0x18] = R2;
ffa063d4:	b3 bb       	[FP -0x14] = R3;
ffa063d6:	d0 bb       	[FP -0xc] = R0;
ffa063d8:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa063dc:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa063e0:	29 4f       	R1 <<= 0x5;
ffa063e2:	10 91       	R0 = [P2];
ffa063e4:	08 54       	R0 = R0 & R1;
ffa063e6:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa063e8:	81 4f       	R1 <<= 0x10;
ffa063ea:	04 cc 01 00 	R0 = R0 + R1 (NS) || [FP -0x4c] = R2 || NOP;
ffa063ee:	d2 ba 00 00 
ffa063f2:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa063f4:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa063f8:	35 e1 00 00 	M1 = 0x0 (X);		/*		M1=0x0(  0) */
ffa063fc:	3b e1 00 00 	B3 = 0x0 (X);		/*		B3=0x0(  0) */
ffa06400:	48 54       	R1 = R0 & R1;
ffa06402:	c3 ba       	[FP -0x50] = R3;
ffa06404:	b3 ba       	[FP -0x54] = R3;
ffa06406:	a2 ba       	[FP -0x58] = R2;
ffa06408:	93 ba       	[FP -0x5c] = R3;
ffa0640a:	83 ba       	[FP -0x60] = R3;
ffa0640c:	72 ba       	[FP -0x64] = R2;
ffa0640e:	63 ba       	[FP -0x68] = R3;
ffa06410:	53 ba       	[FP -0x6c] = R3;
ffa06412:	42 ba       	[FP -0x70] = R2;
ffa06414:	28 e1 00 08 	P0 = 0x800 (X);		/*		P0=0x800(2048) */
ffa06418:	b2 e0 a5 00 	LSETUP(0xffa0641c <_httpResp+0x318>, 0xffa06562 <_httpResp+0x45e>) LC1 = P0;
ffa0641c:	11 32       	P2 = R1;
ffa0641e:	d2 30       	R2 = B2;
ffa06420:	11 64       	R1 += 0x2;		/* (  2) */
ffa06422:	d3 b8       	R3 = [FP -0x4c];
ffa06424:	10 94       	R0 = W[P2++] (Z);
ffa06426:	82 50       	R2 = R2 + R0;
ffa06428:	e2 ba       	[FP -0x48] = R2;
ffa0642a:	02 36       	B0 = R2;
ffa0642c:	12 36       	B2 = R2;
ffa0642e:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa06430:	42 e1 03 00 	R2.H = 0x3;		/* (  3)	R2=0x3ffff(262143) */
ffa06434:	11 54       	R0 = R1 & R2;
ffa06436:	10 32       	P2 = R0;
ffa06438:	10 64       	R0 += 0x2;		/* (  2) */
ffa0643a:	10 54       	R0 = R0 & R2;
ffa0643c:	11 94       	R1 = W[P2++] (Z);
ffa0643e:	10 32       	P2 = R0;
ffa06440:	10 64       	R0 += 0x2;		/* (  2) */
ffa06442:	10 54       	R0 = R0 & R2;
ffa06444:	cb 50       	R3 = R3 + R1;
ffa06446:	d3 ba       	[FP -0x4c] = R3;
ffa06448:	11 94       	R1 = W[P2++] (Z);
ffa0644a:	10 32       	P2 = R0;
ffa0644c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0644e:	f3 ba       	[FP -0x44] = R3;
ffa06450:	10 54       	R0 = R0 & R2;
ffa06452:	1b 34       	I3 = R3;
ffa06454:	c3 b8       	R3 = [FP -0x50];
ffa06456:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa0645a:	11 94 00 00 
ffa0645e:	10 32       	P2 = R0;
ffa06460:	10 64       	R0 += 0x2;		/* (  2) */
ffa06462:	c3 ba       	[FP -0x50] = R3;
ffa06464:	03 bb       	[FP -0x40] = R3;
ffa06466:	10 54       	R0 = R0 & R2;
ffa06468:	13 34       	I2 = R3;
ffa0646a:	b3 b8       	R3 = [FP -0x54];
ffa0646c:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa06470:	11 94 00 00 
ffa06474:	10 32       	P2 = R0;
ffa06476:	10 64       	R0 += 0x2;		/* (  2) */
ffa06478:	b3 ba       	[FP -0x54] = R3;
ffa0647a:	13 bb       	[FP -0x3c] = R3;
ffa0647c:	10 54       	R0 = R0 & R2;
ffa0647e:	0b 34       	I1 = R3;
ffa06480:	a3 b8       	R3 = [FP -0x58];
ffa06482:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa06486:	11 94 00 00 
ffa0648a:	10 32       	P2 = R0;
ffa0648c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0648e:	a3 ba       	[FP -0x58] = R3;
ffa06490:	23 bb       	[FP -0x38] = R3;
ffa06492:	10 54       	R0 = R0 & R2;
ffa06494:	03 34       	I0 = R3;
ffa06496:	93 b8       	R3 = [FP -0x5c];
ffa06498:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa0649c:	11 94 00 00 
ffa064a0:	10 32       	P2 = R0;
ffa064a2:	10 64       	R0 += 0x2;		/* (  2) */
ffa064a4:	93 ba       	[FP -0x5c] = R3;
ffa064a6:	33 bb       	[FP -0x34] = R3;
ffa064a8:	10 54       	R0 = R0 & R2;
ffa064aa:	1b 32       	P3 = R3;
ffa064ac:	83 b8       	R3 = [FP -0x60];
ffa064ae:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa064b2:	11 94 00 00 
ffa064b6:	10 32       	P2 = R0;
ffa064b8:	10 64       	R0 += 0x2;		/* (  2) */
ffa064ba:	83 ba       	[FP -0x60] = R3;
ffa064bc:	43 bb       	[FP -0x30] = R3;
ffa064be:	10 54       	R0 = R0 & R2;
ffa064c0:	23 32       	P4 = R3;
ffa064c2:	73 b8       	R3 = [FP -0x64];
ffa064c4:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa064c8:	11 94 00 00 
ffa064cc:	10 32       	P2 = R0;
ffa064ce:	73 ba       	[FP -0x64] = R3;
ffa064d0:	53 bb       	[FP -0x2c] = R3;
ffa064d2:	2b 32       	P5 = R3;
ffa064d4:	10 64       	R0 += 0x2;		/* (  2) */
ffa064d6:	63 b8       	R3 = [FP -0x68];
ffa064d8:	cb 50       	R3 = R3 + R1;
ffa064da:	10 54       	R0 = R0 & R2;
ffa064dc:	63 ba       	[FP -0x68] = R3;
ffa064de:	63 bb       	[FP -0x28] = R3;
ffa064e0:	11 94       	R1 = W[P2++] (Z);
ffa064e2:	10 32       	P2 = R0;
ffa064e4:	10 64       	R0 += 0x2;		/* (  2) */
ffa064e6:	10 54       	R0 = R0 & R2;
ffa064e8:	03 32       	P0 = R3;
ffa064ea:	53 b8       	R3 = [FP -0x6c];
ffa064ec:	04 cc 19 06 	R3 = R3 + R1 (NS) || R1 = W[P2++] (Z) || NOP;
ffa064f0:	11 94 00 00 
ffa064f4:	10 32       	P2 = R0;
ffa064f6:	0b 32       	P1 = R3;
ffa064f8:	53 ba       	[FP -0x6c] = R3;
ffa064fa:	73 bb       	[FP -0x24] = R3;
ffa064fc:	10 64       	R0 += 0x2;		/* (  2) */
ffa064fe:	43 b8       	R3 = [FP -0x70];
ffa06500:	4b 50       	R1 = R3 + R1;
ffa06502:	10 54       	R0 = R0 & R2;
ffa06504:	31 ba       	[FP -0x74] = R1;
ffa06506:	41 ba       	[FP -0x70] = R1;
ffa06508:	81 bb       	[FP -0x20] = R1;
ffa0650a:	11 94       	R1 = W[P2++] (Z);
ffa0650c:	10 32       	P2 = R0;
ffa0650e:	10 64       	R0 += 0x2;		/* (  2) */
ffa06510:	9e 30       	R3 = M2;
ffa06512:	10 54       	R0 = R0 & R2;
ffa06514:	0b 51       	R4 = R3 + R1;
ffa06516:	11 94       	R1 = W[P2++] (Z);
ffa06518:	10 32       	P2 = R0;
ffa0651a:	10 64       	R0 += 0x2;		/* (  2) */
ffa0651c:	9f 30       	R3 = M3;
ffa0651e:	10 54       	R0 = R0 & R2;
ffa06520:	04 cc 19 0a 	R5 = R3 + R1 (NS) || [FP -0x1c] = R4 || NOP;
ffa06524:	94 bb 00 00 
ffa06528:	11 94       	R1 = W[P2++] (Z);
ffa0652a:	10 32       	P2 = R0;
ffa0652c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0652e:	9d 30       	R3 = M1;
ffa06530:	10 54       	R0 = R0 & R2;
ffa06532:	04 cc 19 0c 	R6 = R3 + R1 (NS) || [FP -0x18] = R5 || NOP;
ffa06536:	a5 bb 00 00 
ffa0653a:	11 94       	R1 = W[P2++] (Z);
ffa0653c:	10 32       	P2 = R0;
ffa0653e:	9c 30       	R3 = M0;
ffa06540:	04 cc 19 0e 	R7 = R3 + R1 (NS) || [FP -0x14] = R6 || NOP;
ffa06544:	b6 bb 00 00 
ffa06548:	cb 30       	R1 = B3;
ffa0654a:	10 64       	R0 += 0x2;		/* (  2) */
ffa0654c:	13 94       	R3 = W[P2++] (Z);
ffa0654e:	04 cc 0b 06 	R3 = R1 + R3 (NS) || [FP -0x10] = R7 || NOP;
ffa06552:	c7 bb 00 00 
ffa06556:	34 34       	M2 = R4;
ffa06558:	3d 34       	M3 = R5;
ffa0655a:	2e 34       	M1 = R6;
ffa0655c:	27 34       	M0 = R7;
ffa0655e:	1b 36       	B3 = R3;
ffa06560:	d3 bb       	[FP -0xc] = R3;
ffa06562:	50 54       	R1 = R0 & R2;
ffa06564:	c0 30       	R0 = B0;
ffa06566:	8b 30       	R1 = I3;
ffa06568:	58 4d       	R0 >>>= 0xb;
ffa0656a:	59 4d       	R1 >>>= 0xb;
ffa0656c:	92 30       	R2 = I2;
ffa0656e:	e0 ba       	[FP -0x48] = R0;
ffa06570:	f1 ba       	[FP -0x44] = R1;
ffa06572:	81 30       	R0 = I1;
ffa06574:	88 30       	R1 = I0;
ffa06576:	5a 4d       	R2 >>>= 0xb;
ffa06578:	58 4d       	R0 >>>= 0xb;
ffa0657a:	59 4d       	R1 >>>= 0xb;
ffa0657c:	02 bb       	[FP -0x40] = R2;
ffa0657e:	10 bb       	[FP -0x3c] = R0;
ffa06580:	21 bb       	[FP -0x38] = R1;
ffa06582:	53 30       	R2 = P3;
ffa06584:	44 30       	R0 = P4;
ffa06586:	4d 30       	R1 = P5;
ffa06588:	5a 4d       	R2 >>>= 0xb;
ffa0658a:	58 4d       	R0 >>>= 0xb;
ffa0658c:	59 4d       	R1 >>>= 0xb;
ffa0658e:	32 bb       	[FP -0x34] = R2;
ffa06590:	40 bb       	[FP -0x30] = R0;
ffa06592:	50 30       	R2 = P0;
ffa06594:	41 30       	R0 = P1;
ffa06596:	51 bb       	[FP -0x2c] = R1;
ffa06598:	31 b8       	R1 = [FP -0x74];
ffa0659a:	5a 4d       	R2 >>>= 0xb;
ffa0659c:	59 4d       	R1 >>>= 0xb;
ffa0659e:	5b 4d       	R3 >>>= 0xb;
ffa065a0:	58 4d       	R0 >>>= 0xb;
ffa065a2:	5d 4d       	R5 >>>= 0xb;
ffa065a4:	5e 4d       	R6 >>>= 0xb;
ffa065a6:	5f 4d       	R7 >>>= 0xb;
ffa065a8:	5c 4d       	R4 >>>= 0xb;
ffa065aa:	62 bb       	[FP -0x28] = R2;
ffa065ac:	81 bb       	[FP -0x20] = R1;
ffa065ae:	a5 bb       	[FP -0x18] = R5;
ffa065b0:	b6 bb       	[FP -0x14] = R6;
ffa065b2:	c7 bb       	[FP -0x10] = R7;
ffa065b4:	d3 bb       	[FP -0xc] = R3;
ffa065b6:	70 bb       	[FP -0x24] = R0;
ffa065b8:	94 bb       	[FP -0x1c] = R4;
ffa065ba:	ff e3 65 fb 	CALL 0xffa05c84 <_htmlDefault>;
ffa065be:	77 30       	R6 = FP;
ffa065c0:	21 e1 01 04 	R1 = 0x401 (X);		/*		R1=0x401(1025) */
ffa065c4:	68 67       	R0 += -0x13;		/* (-19) */
ffa065c6:	41 4f       	R1 <<= 0x8;
ffa065c8:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa065ca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffff(-7274497) */
ffa065ce:	f0 bb       	[FP -0x4] = R0;
ffa065d0:	02 e1 ec 0b 	R2.L = 0xbec;		/* (3052)	R2=0xff900bec(-7336980) */
ffa065d4:	08 50       	R0 = R0 + R1;
ffa065d6:	0e 30       	R1 = R6;
ffa065d8:	ff e3 14 d7 	CALL 0xffa01400 <_strcpy_>;
ffa065dc:	38 30       	R7 = R0;
ffa065de:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa065e0:	05 30       	R0 = R5;
ffa065e2:	ff e3 01 cf 	CALL 0xffa003e4 <_PhysicalToLogicalChan>;
ffa065e6:	28 32       	P5 = R0;
ffa065e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bec(-7336980) */
ffa065ec:	07 30       	R0 = R7;
ffa065ee:	0e 30       	R1 = R6;
ffa065f0:	02 e1 f8 0b 	R2.L = 0xbf8;		/* (3064)	R2=0xff900bf8(-7336968) */
ffa065f4:	ff e3 06 d7 	CALL 0xffa01400 <_strcpy_>;
ffa065f8:	15 30       	R2 = R5;
ffa065fa:	0e 30       	R1 = R6;
ffa065fc:	ff e3 ce db 	CALL 0xffa01d98 <_strprintf_int>;
ffa06600:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bf8(-7336968) */
ffa06604:	0e 30       	R1 = R6;
ffa06606:	02 e1 0c 0c 	R2.L = 0xc0c;		/* (3084)	R2=0xff900c0c(-7336948) */
ffa0660a:	6f 5f       	P5 = FP + (P5 << 0x2);
ffa0660c:	ff e3 fa d6 	CALL 0xffa01400 <_strcpy_>;
ffa06610:	0e 30       	R1 = R6;
ffa06612:	2a e4 ee ff 	R2 = [P5 + -0x48];
ffa06616:	ff e3 c1 db 	CALL 0xffa01d98 <_strprintf_int>;
ffa0661a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c0c(-7336948) */
ffa0661e:	02 e1 1c 0c 	R2.L = 0xc1c;		/* (3100)	R2=0xff900c1c(-7336932) */
ffa06622:	0e 30       	R1 = R6;
ffa06624:	ff e3 ee d6 	CALL 0xffa01400 <_strcpy_>;
ffa06628:	0d 64       	R5 += 0x1;		/* (  1) */
ffa0662a:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa0662c:	15 08       	CC = R5 == R2;
ffa0662e:	38 30       	R7 = R0;
ffa06630:	d8 17       	IF !CC JUMP 0xffa065e0 <_httpResp+0x4dc> (BP);
ffa06632:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa06636:	0e 30       	R1 = R6;
ffa06638:	02 e1 28 0c 	R2.L = 0xc28;		/* (3112)	R2=0xff900c28(-7336920) */
ffa0663c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e50 <_g_httpContentLen> */
ffa06640:	ff e3 e0 d6 	CALL 0xffa01400 <_strcpy_>;
ffa06644:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_g_httpContentLen> */
ffa06648:	f0 b9       	R0 = [FP -0x4];
ffa0664a:	d4 2d       	JUMP.S 0xffa061f2 <_httpResp+0xee>;
ffa0664c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0664e:	20 e1 01 04 	R0 = 0x401 (X);		/*		R0=0x401(1025) */
ffa06652:	4f 30       	R1 = FP;
ffa06654:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c28(-7336920) */
ffa06658:	e7 bb       	[FP -0x8] = R7;
ffa0665a:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa0665c:	02 e1 30 0b 	R2.L = 0xb30;		/* (2864)	R2=0xff900b30(-7337168) */
ffa06660:	40 4f       	R0 <<= 0x8;
ffa06662:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e50 <_g_httpContentLen> */
ffa06666:	ff e3 cd d6 	CALL 0xffa01400 <_strcpy_>;
ffa0666a:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_g_httpContentLen> */
ffa0666e:	e0 b9       	R0 = [FP -0x8];
ffa06670:	f7 bb       	[FP -0x4] = R7;
ffa06672:	7f 30       	R7 = FP;
ffa06674:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa06676:	28 93       	[P5] = R0;
ffa06678:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b30(-7337168) */
ffa0667c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0667e:	0f 30       	R1 = R7;
ffa06680:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa06684:	90 4f       	R0 <<= 0x12;
ffa06686:	ff e3 bd d6 	CALL 0xffa01400 <_strcpy_>;
ffa0668a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa0668e:	0f 30       	R1 = R7;
ffa06690:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa06694:	ff e3 b6 d6 	CALL 0xffa01400 <_strcpy_>;
ffa06698:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa0669c:	0f 30       	R1 = R7;
ffa0669e:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa066a2:	ff e3 af d6 	CALL 0xffa01400 <_strcpy_>;
ffa066a6:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa066aa:	2a 91 00 00 
ffa066ae:	ff e3 75 db 	CALL 0xffa01d98 <_strprintf_int>;
ffa066b2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa066b6:	0f 30       	R1 = R7;
ffa066b8:	02 e1 c4 07 	R2.L = 0x7c4;		/* (1988)	R2=0xff9007c4(-7338044) */
ffa066bc:	ff e3 a2 d6 	CALL 0xffa01400 <_strcpy_>;
ffa066c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa066c4:	f0 b9       	R0 = [FP -0x4];
ffa066c6:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa066ca:	10 93       	[P2] = R0;
ffa066cc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa066ce:	31 2d       	JUMP.S 0xffa06130 <_httpResp+0x2c>;
ffa066d0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa066d2:	06 50       	R0 = R6 + R0;
ffa066d4:	ff e3 72 da 	CALL 0xffa01bb8 <_atoi>;
ffa066d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_g_httpHeaderLen> */
ffa066dc:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_NetDataDestIP> */
ffa066e0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa066e2:	11 91       	R1 = [P2];
ffa066e4:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa066e8:	51 54       	R1 = R1 & R2;
ffa066ea:	c0 4f       	R0 <<= 0x18;
ffa066ec:	41 50       	R1 = R1 + R0;
ffa066ee:	11 93       	[P2] = R1;
ffa066f0:	7b 2d       	JUMP.S 0xffa061e6 <_httpResp+0xe2>;
ffa066f2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa066f4:	06 50       	R0 = R6 + R0;
ffa066f6:	ff e3 61 da 	CALL 0xffa01bb8 <_atoi>;
ffa066fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_NetDataDestIP> */
ffa066fe:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_NetDataDestIP> */
ffa06702:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa06704:	11 91       	R1 = [P2];
ffa06706:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0670a:	40 43       	R0 = R0.B (Z);
ffa0670c:	51 54       	R1 = R1 & R2;
ffa0670e:	80 4f       	R0 <<= 0x10;
ffa06710:	41 50       	R1 = R1 + R0;
ffa06712:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa06714:	11 93       	[P2] = R1;
ffa06716:	29 2e       	JUMP.S 0xffa06368 <_httpResp+0x264>;
ffa06718:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0671a:	06 50       	R0 = R6 + R0;
ffa0671c:	ff e3 4e da 	CALL 0xffa01bb8 <_atoi>;
ffa06720:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_NetDataDestIP> */
ffa06724:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_NetDataDestIP> */
ffa06728:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0672a:	11 91       	R1 = [P2];
ffa0672c:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa06730:	40 43       	R0 = R0.B (Z);
ffa06732:	51 54       	R1 = R1 & R2;
ffa06734:	40 4f       	R0 <<= 0x8;
ffa06736:	41 50       	R1 = R1 + R0;
ffa06738:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa0673a:	11 93       	[P2] = R1;
ffa0673c:	0c 2e       	JUMP.S 0xffa06354 <_httpResp+0x250>;
ffa0673e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa06740:	06 50       	R0 = R6 + R0;
ffa06742:	ff e3 3b da 	CALL 0xffa01bb8 <_atoi>;
ffa06746:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_NetDataDestIP> */
ffa0674a:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_NetDataDestIP> */
ffa0674e:	11 91       	R1 = [P2];
ffa06750:	41 4d       	R1 >>>= 0x8;
ffa06752:	41 4f       	R1 <<= 0x8;
ffa06754:	40 43       	R0 = R0.B (Z);
ffa06756:	08 50       	R0 = R0 + R1;
ffa06758:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa0675a:	10 93       	[P2] = R0;
ffa0675c:	f2 2d       	JUMP.S 0xffa06340 <_httpResp+0x23c>;
ffa0675e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa06760:	06 50       	R0 = R6 + R0;
ffa06762:	ff e3 2b da 	CALL 0xffa01bb8 <_atoi>;
ffa06766:	ff e3 3f ce 	CALL 0xffa003e4 <_PhysicalToLogicalChan>;
ffa0676a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_NetDataDestIP> */
ffa0676e:	0a e1 d1 0c 	P2.L = 0xcd1;		/* (3281)	P2=0xff900cd1 <_g_mouseYneg> */
ffa06772:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa06774:	10 9b       	B[P2] = R0;
ffa06776:	da 2d       	JUMP.S 0xffa0632a <_httpResp+0x226>;
ffa06778:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0677a:	06 50       	R0 = R6 + R0;
ffa0677c:	ff e3 1e da 	CALL 0xffa01bb8 <_atoi>;
ffa06780:	ff e3 32 ce 	CALL 0xffa003e4 <_PhysicalToLogicalChan>;
ffa06784:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd1 <_g_mouseYneg> */
ffa06788:	0a e1 4d 0c 	P2.L = 0xc4d;		/* (3149)	P2=0xff900c4d <_g_mouseXneg> */
ffa0678c:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa0678e:	10 9b       	B[P2] = R0;
ffa06790:	c2 2d       	JUMP.S 0xffa06314 <_httpResp+0x210>;
ffa06792:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa06794:	06 50       	R0 = R6 + R0;
ffa06796:	ff e3 11 da 	CALL 0xffa01bb8 <_atoi>;
ffa0679a:	ff e3 25 ce 	CALL 0xffa003e4 <_PhysicalToLogicalChan>;
ffa0679e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4d <_g_mouseXneg> */
ffa067a2:	0a e1 d0 0c 	P2.L = 0xcd0;		/* (3280)	P2=0xff900cd0 <_g_mouseYpos> */
ffa067a6:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa067a8:	10 9b       	B[P2] = R0;
ffa067aa:	aa 2d       	JUMP.S 0xffa062fe <_httpResp+0x1fa>;
ffa067ac:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa067ae:	06 50       	R0 = R6 + R0;
ffa067b0:	ff e3 04 da 	CALL 0xffa01bb8 <_atoi>;
ffa067b4:	ff e3 18 ce 	CALL 0xffa003e4 <_PhysicalToLogicalChan>;
ffa067b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cd0 <_g_mouseYpos> */
ffa067bc:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_mouseXpos> */
ffa067c0:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa067c2:	10 9b       	B[P2] = R0;
ffa067c4:	92 2d       	JUMP.S 0xffa062e8 <_httpResp+0x1e4>;
ffa067c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa067ca:	00 e1 6c 0b 	R0.L = 0xb6c;		/* (2924)	R0=0xff900b6c(-7337108) */
ffa067ce:	0e 30       	R1 = R6;
ffa067d0:	17 30       	R2 = R7;
ffa067d2:	ff e3 67 d6 	CALL 0xffa014a0 <_substr>;
ffa067d6:	00 0c       	CC = R0 == 0x0;
ffa067d8:	08 1c       	IF CC JUMP 0xffa067e8 <_httpResp+0x6e4> (BP);
ffa067da:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c4c */
ffa067de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa067e0:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa067e4:	10 9b       	B[P2] = R0;
ffa067e6:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa067e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa067ec:	00 e1 74 0b 	R0.L = 0xb74;		/* (2932)	R0=0xff900b74(-7337100) */
ffa067f0:	0e 30       	R1 = R6;
ffa067f2:	17 30       	R2 = R7;
ffa067f4:	ff e3 56 d6 	CALL 0xffa014a0 <_substr>;
ffa067f8:	00 0c       	CC = R0 == 0x0;
ffa067fa:	02 10       	IF !CC JUMP 0xffa067fe <_httpResp+0x6fa>;
ffa067fc:	6b 2d       	JUMP.S 0xffa062d2 <_httpResp+0x1ce>;
ffa067fe:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa06802:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa06804:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa06808:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa0680a:	10 9b       	B[P2] = R0;
ffa0680c:	63 2d       	JUMP.S 0xffa062d2 <_httpResp+0x1ce>;
ffa0680e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa06812:	00 e1 6c 0b 	R0.L = 0xb6c;		/* (2924)	R0=0xff900b6c(-7337108) */
ffa06816:	0e 30       	R1 = R6;
ffa06818:	17 30       	R2 = R7;
ffa0681a:	ff e3 43 d6 	CALL 0xffa014a0 <_substr>;
ffa0681e:	00 0c       	CC = R0 == 0x0;
ffa06820:	15 14       	IF !CC JUMP 0xffa0684a <_httpResp+0x746> (BP);
ffa06822:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa06824:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b6c(-7337108) */
ffa06828:	00 e1 74 0b 	R0.L = 0xb74;		/* (2932)	R0=0xff900b74(-7337100) */
ffa0682c:	0e 30       	R1 = R6;
ffa0682e:	17 30       	R2 = R7;
ffa06830:	ff e3 38 d6 	CALL 0xffa014a0 <_substr>;
ffa06834:	00 0c       	CC = R0 == 0x0;
ffa06836:	02 10       	IF !CC JUMP 0xffa0683a <_httpResp+0x736>;
ffa06838:	42 2d       	JUMP.S 0xffa062bc <_httpResp+0x1b8>;
ffa0683a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa0683e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06840:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_g_streamEnabled> */
ffa06844:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa06846:	10 9b       	B[P2] = R0;
ffa06848:	3a 2d       	JUMP.S 0xffa062bc <_httpResp+0x1b8>;
ffa0684a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_g_streamEnabled> */
ffa0684e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa06850:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_g_streamEnabled> */
ffa06854:	10 9b       	B[P2] = R0;
ffa06856:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c54 */
ffa0685a:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa0685e:	10 91       	R0 = [P2];
ffa06860:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa06862:	22 6c       	P2 += 0x4;		/* (  4) */
ffa06864:	10 93       	[P2] = R0;
ffa06866:	df 2f       	JUMP.S 0xffa06824 <_httpResp+0x720>;

ffa06868 <_httpCollate>:
ffa06868:	e5 05       	[--SP] = (R7:4, P5:5);
ffa0686a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e50 <_g_httpContentLen> */
ffa0686e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa06872:	0d e1 54 0e 	P5.L = 0xe54;		/* (3668)	P5=0xff900e54 <_g_httpRxed> */
ffa06876:	2e 91       	R6 = [P5];
ffa06878:	06 0c       	CC = R6 == 0x0;
ffa0687a:	28 30       	R5 = R0;
ffa0687c:	21 30       	R4 = R1;
ffa0687e:	16 1c       	IF CC JUMP 0xffa068aa <_httpCollate+0x42> (BP);
ffa06880:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa06882:	87 4f       	R7 <<= 0x10;
ffa06884:	7e 50       	R1 = R6 + R7;
ffa06886:	14 30       	R2 = R4;
ffa06888:	ff e3 8c d5 	CALL 0xffa013a0 <_memcpy_>;
ffa0688c:	29 91       	R1 = [P5];
ffa0688e:	4c 50       	R1 = R4 + R1;
ffa06890:	29 93       	[P5] = R1;
ffa06892:	07 30       	R0 = R7;
ffa06894:	ff e3 38 fc 	CALL 0xffa06104 <_httpResp>;
ffa06898:	00 0c       	CC = R0 == 0x0;
ffa0689a:	04 18       	IF CC JUMP 0xffa068a2 <_httpCollate+0x3a>;
ffa0689c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0689e:	28 93       	[P5] = R0;
ffa068a0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa068a2:	01 e8 00 00 	UNLINK;
ffa068a6:	a5 05       	(R7:4, P5:5) = [SP++];
ffa068a8:	10 00       	RTS;
ffa068aa:	ff e3 2d fc 	CALL 0xffa06104 <_httpResp>;
ffa068ae:	00 0c       	CC = R0 == 0x0;
ffa068b0:	07 18       	IF CC JUMP 0xffa068be <_httpCollate+0x56>;
ffa068b2:	2e 93       	[P5] = R6;
ffa068b4:	01 e8 00 00 	UNLINK;
ffa068b8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa068ba:	a5 05       	(R7:4, P5:5) = [SP++];
ffa068bc:	10 00       	RTS;
ffa068be:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa068c0:	05 30       	R0 = R5;
ffa068c2:	14 30       	R2 = R4;
ffa068c4:	81 4f       	R1 <<= 0x10;
ffa068c6:	ff e3 6d d5 	CALL 0xffa013a0 <_memcpy_>;
ffa068ca:	2c 93       	[P5] = R4;
ffa068cc:	01 e8 00 00 	UNLINK;
ffa068d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa068d2:	a5 05       	(R7:4, P5:5) = [SP++];
ffa068d4:	10 00       	RTS;
	...

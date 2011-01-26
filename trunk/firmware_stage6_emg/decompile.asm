
stage.dxe:     file format elf32-bfin

Disassembly of section .text:

ffa08000 <start>:
ffa08000:	81 61       	R1 = 0x30 (X);		/*		R1=0x30( 48) */
ffa08002:	11 3e       	SYSCFG = R1;
ffa08004:	4e e1 b0 ff 	SP.H = 0xffb0;		/* (-80)	SP=0xffb00000 */
ffa08008:	0e e1 00 04 	SP.L = 0x400;		/* (1024)	SP=0xffb00400 */
ffa0800c:	7e 32       	FP = SP;

ffa0800e <setupPLL>:
ffa0800e:	08 e1 00 00 	P0.L = 0x0;		/* (  0)	P0=0x0 */
ffa08012:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa08016:	01 95       	R1 = W[P0] (Z);
ffa08018:	11 30       	R2 = R1;
ffa0801a:	80 e1 00 00 	R0 = 0x0 (Z);		/*		R0=0x0(  0) */
ffa0801e:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffff(65535) */
ffa08022:	41 54       	R1 = R1 & R0;
ffa08024:	00 e1 00 1e 	R0.L = 0x1e00;		/* (7680)	R0=0x1e00(7680) */
ffa08028:	41 56       	R1 = R1 | R0;
ffa0802a:	01 e1 00 14 	R1.L = 0x1400;		/* (5120)	R1=0x1400(5120) */
ffa0802e:	09 e1 24 01 	P1.L = 0x124;		/* (292)	P1=0x124 */
ffa08032:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00124(-4194012) */
ffa08036:	08 91       	R0 = [P1];
ffa08038:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0803a:	08 93       	[P1] = R0;
ffa0803c:	01 97       	W[P0] = R1;
ffa0803e:	24 00       	SSYNC;
ffa08040:	30 00       	CLI R0;
ffa08042:	20 00       	IDLE;
ffa08044:	40 00       	STI R0;
ffa08046:	08 e1 04 00 	P0.L = 0x4;		/* (  4)	P0=0xffc00004(-4194300) */
ffa0804a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00004(-4194300) */
ffa0804e:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa08052:	00 97       	W[P0] = R0;
ffa08054:	08 e1 08 20 	P0.L = 0x2008;		/* (8200)	P0=0xffc02008(-4186104) */
ffa08058:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02008(-2088952) */
ffa0805c:	00 e1 94 81 	R0.L = 0x8194;		/* (-32364)	R0=0x8194(33172) */
ffa08060:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08194 <_NHANDLER>(-6258284) */
ffa08064:	00 92       	[P0++] = R0;
ffa08066:	00 e1 9a 81 	R0.L = 0x819a;		/* (-32358)	R0=0xffa0819a <EXC_HANDLER>(-6258278) */
ffa0806a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0819a <EXC_HANDLER>(-6258278) */
ffa0806e:	00 92       	[P0++] = R0;
ffa08070:	00 92       	[P0++] = R0;
ffa08072:	00 e1 92 81 	R0.L = 0x8192;		/* (-32366)	R0=0xffa08192 <_HWHANDLER>(-6258286) */
ffa08076:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08192 <_HWHANDLER>(-6258286) */
ffa0807a:	00 92       	[P0++] = R0;
ffa0807c:	00 e1 0e 82 	R0.L = 0x820e;		/* (-32242)	R0=0xffa0820e <_THANDLER>(-6258162) */
ffa08080:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0820e <_THANDLER>(-6258162) */
ffa08084:	00 92       	[P0++] = R0;
ffa08086:	00 e1 2a 82 	R0.L = 0x822a;		/* (-32214)	R0=0xffa0822a <_RTCHANDLER>(-6258134) */
ffa0808a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0822a <_RTCHANDLER>(-6258134) */
ffa0808e:	00 92       	[P0++] = R0;
ffa08090:	00 e1 30 82 	R0.L = 0x8230;		/* (-32208)	R0=0xffa08230 <_I8HANDLER>(-6258128) */
ffa08094:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08230 <_I8HANDLER>(-6258128) */
ffa08098:	00 92       	[P0++] = R0;
ffa0809a:	00 e1 36 82 	R0.L = 0x8236;		/* (-32202)	R0=0xffa08236 <_I9HANDLER>(-6258122) */
ffa0809e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08236 <_I9HANDLER>(-6258122) */
ffa080a2:	00 92       	[P0++] = R0;
ffa080a4:	00 e1 6c 81 	R0.L = 0x816c;		/* (-32404)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080a8:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080ac:	00 92       	[P0++] = R0;
ffa080ae:	00 e1 6c 81 	R0.L = 0x816c;		/* (-32404)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080b2:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080b6:	00 92       	[P0++] = R0;
ffa080b8:	00 e1 6e 81 	R0.L = 0x816e;		/* (-32402)	R0=0xffa0816e <_I12HANDLER>(-6258322) */
ffa080bc:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816e <_I12HANDLER>(-6258322) */
ffa080c0:	00 92       	[P0++] = R0;
ffa080c2:	00 e1 70 81 	R0.L = 0x8170;		/* (-32400)	R0=0xffa08170 <_I13HANDLER>(-6258320) */
ffa080c6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08170 <_I13HANDLER>(-6258320) */
ffa080ca:	00 92       	[P0++] = R0;
ffa080cc:	00 e1 76 81 	R0.L = 0x8176;		/* (-32394)	R0=0xffa08176 <_I14HANDLER>(-6258314) */
ffa080d0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08176 <_I14HANDLER>(-6258314) */
ffa080d4:	00 92       	[P0++] = R0;
ffa080d6:	00 e1 7c 81 	R0.L = 0x817c;		/* (-32388)	R0=0xffa0817c <_I15HANDLER>(-6258308) */
ffa080da:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0817c <_I15HANDLER>(-6258308) */
ffa080de:	00 92       	[P0++] = R0;
ffa080e0:	08 e1 3c 20 	P0.L = 0x203c;		/* (8252)	P0=0xffe0203c(-2088900) */
ffa080e4:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe0203c(-2088900) */
ffa080e8:	00 e1 52 81 	R0.L = 0x8152;		/* (-32430)	R0=0xffa08152 <call_main>(-6258350) */
ffa080ec:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08152 <call_main>(-6258350) */
ffa080f0:	00 93       	[P0] = R0;
ffa080f2:	08 e1 0c 01 	P0.L = 0x10c;		/* (268)	P0=0xffe0010c(-2096884) */
ffa080f6:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0010c(-4194036) */
ffa080fa:	00 e1 00 2c 	R0.L = 0x2c00;		/* (11264)	R0=0xffa02c00(-6280192) */
ffa080fe:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x2c00(11264) */
ffa08102:	00 93       	[P0] = R0;
ffa08104:	08 e1 10 01 	P0.L = 0x110;		/* (272)	P0=0xffc00110(-4194032) */
ffa08108:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00110(-4194032) */
ffa0810c:	00 e1 5f ff 	R0.L = 0xff5f;		/* (-161)	R0=0xff5f(65375) */
ffa08110:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffff5f(-161) */
ffa08114:	00 93       	[P0] = R0;
ffa08116:	08 e1 14 01 	P0.L = 0x114;		/* (276)	P0=0xffc00114(-4194028) */
ffa0811a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00114(-4194028) */
ffa0811e:	00 e1 ff 34 	R0.L = 0x34ff;		/* (13567)	R0=0xffff34ff(-51969) */
ffa08122:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff34ff(-51969) */
ffa08126:	00 93       	[P0] = R0;
ffa08128:	08 e1 18 01 	P0.L = 0x118;		/* (280)	P0=0xffc00118(-4194024) */
ffa0812c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00118(-4194024) */
ffa08130:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08134:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08138:	00 93       	[P0] = R0;
ffa0813a:	23 00       	CSYNC;
ffa0813c:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa08140:	40 00       	STI R0;
ffa08142:	9f 00       	RAISE 0xf;
ffa08144:	08 e1 50 81 	P0.L = 0x8150;		/* (-32432)	P0=0xffc08150(-4161200) */
ffa08148:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa08150 <wait> */
ffa0814c:	58 3e       	RETI = P0;
ffa0814e:	11 00       	RTI;

ffa08150 <wait>:
ffa08150:	00 20       	JUMP.S 0xffa08150 <wait>;

ffa08152 <call_main>:
ffa08152:	7b 01       	[--SP] = RETI;
ffa08154:	08 e1 54 98 	P0.L = 0x9854;		/* (-26540)	P0=0xffa09854 <_main> */
ffa08158:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09854 <_main> */
ffa0815c:	00 e1 68 81 	R0.L = 0x8168;		/* (-32408)	R0=0x8168(33128) */
ffa08160:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08168 <end>(-6258328) */
ffa08164:	38 38       	RETS = R0;
ffa08166:	50 00       	JUMP (P0);

ffa08168 <end>:
ffa08168:	20 00       	IDLE;
ffa0816a:	ff 2f       	JUMP.S 0xffa08168 <end>;

ffa0816c <_I11HANDLER>:
ffa0816c:	11 00       	RTI;

ffa0816e <_I12HANDLER>:
ffa0816e:	11 00       	RTI;

ffa08170 <_I13HANDLER>:
ffa08170:	00 e1 0d 00 	R0.L = 0xd;		/* ( 13)	R0=0xffa0000d(-6291443) */
ffa08174:	0a 20       	JUMP.S 0xffa08188 <display_fail>;

ffa08176 <_I14HANDLER>:
ffa08176:	00 e1 0e 00 	R0.L = 0xe;		/* ( 14)	R0=0xffa0000e(-6291442) */
ffa0817a:	07 20       	JUMP.S 0xffa08188 <display_fail>;

ffa0817c <_I15HANDLER>:
ffa0817c:	00 e1 0f 00 	R0.L = 0xf;		/* ( 15)	R0=0xffa0000f(-6291441) */
ffa08180:	04 20       	JUMP.S 0xffa08188 <display_fail>;

ffa08182 <idle_loop>:
ffa08182:	20 00       	IDLE;
ffa08184:	24 00       	SSYNC;
ffa08186:	fe 2f       	JUMP.S 0xffa08182 <idle_loop>;

ffa08188 <display_fail>:
ffa08188:	c1 31       	R0 = SEQSTAT;
ffa0818a:	cc 31       	R1 = RETX;
ffa0818c:	00 e3 ca 02 	CALL 0xffa08720 <_exception_report>;
ffa08190:	12 00       	RTX;

ffa08192 <_HWHANDLER>:
ffa08192:	11 00       	RTI;

ffa08194 <_NHANDLER>:
ffa08194:	00 e3 38 05 	CALL 0xffa08c04 <_nmi_report>;
ffa08198:	12 00       	RTX;

ffa0819a <EXC_HANDLER>:
ffa0819a:	4d 01       	[--SP] = P5;
ffa0819c:	0d e1 bc 61 	P5.L = 0x61bc;		/* (25020)	P5=0x61bc */
ffa081a0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff9061bc <_g_excregs> */
ffa081a4:	28 92       	[P5++] = R0;
ffa081a6:	29 92       	[P5++] = R1;
ffa081a8:	2a 92       	[P5++] = R2;
ffa081aa:	2b 92       	[P5++] = R3;
ffa081ac:	2c 92       	[P5++] = R4;
ffa081ae:	2d 92       	[P5++] = R5;
ffa081b0:	2e 92       	[P5++] = R6;
ffa081b2:	2f 92       	[P5++] = R7;
ffa081b4:	68 92       	[P5++] = P0;
ffa081b6:	69 92       	[P5++] = P1;
ffa081b8:	6a 92       	[P5++] = P2;
ffa081ba:	6b 92       	[P5++] = P3;
ffa081bc:	6c 92       	[P5++] = P4;
ffa081be:	65 32       	P4 = P5;
ffa081c0:	75 90       	P5 = [SP++];
ffa081c2:	65 92       	[P4++] = P5;
ffa081c4:	80 30       	R0 = I0;
ffa081c6:	20 92       	[P4++] = R0;
ffa081c8:	c0 30       	R0 = B0;
ffa081ca:	20 92       	[P4++] = R0;
ffa081cc:	c4 30       	R0 = L0;
ffa081ce:	20 92       	[P4++] = R0;
ffa081d0:	81 30       	R0 = I1;
ffa081d2:	20 92       	[P4++] = R0;
ffa081d4:	c1 30       	R0 = B1;
ffa081d6:	20 92       	[P4++] = R0;
ffa081d8:	c5 30       	R0 = L1;
ffa081da:	20 92       	[P4++] = R0;
ffa081dc:	82 30       	R0 = I2;
ffa081de:	20 92       	[P4++] = R0;
ffa081e0:	c2 30       	R0 = B2;
ffa081e2:	20 92       	[P4++] = R0;
ffa081e4:	c6 30       	R0 = L2;
ffa081e6:	20 92       	[P4++] = R0;
ffa081e8:	83 30       	R0 = I3;
ffa081ea:	20 92       	[P4++] = R0;
ffa081ec:	c3 30       	R0 = B3;
ffa081ee:	20 92       	[P4++] = R0;
ffa081f0:	c7 30       	R0 = L3;
ffa081f2:	20 92       	[P4++] = R0;
ffa081f4:	84 30       	R0 = M0;
ffa081f6:	20 92       	[P4++] = R0;
ffa081f8:	85 30       	R0 = M1;
ffa081fa:	20 92       	[P4++] = R0;
ffa081fc:	86 30       	R0 = M2;
ffa081fe:	20 92       	[P4++] = R0;
ffa08200:	87 30       	R0 = M3;
ffa08202:	20 92       	[P4++] = R0;
ffa08204:	c1 31       	R0 = SEQSTAT;
ffa08206:	cc 31       	R1 = RETX;
ffa08208:	00 e3 8c 02 	CALL 0xffa08720 <_exception_report>;
ffa0820c:	12 00       	RTX;

ffa0820e <_THANDLER>:
ffa0820e:	4a 01       	[--SP] = P2;
ffa08210:	40 01       	[--SP] = R0;
ffa08212:	41 01       	[--SP] = R1;
ffa08214:	66 01       	[--SP] = ASTAT;
ffa08216:	10 91       	R0 = [P2];
ffa08218:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa0821c:	08 50       	R0 = R0 + R1;
ffa0821e:	10 93       	[P2] = R0;
ffa08220:	26 01       	ASTAT = [SP++];
ffa08222:	31 90       	R1 = [SP++];
ffa08224:	30 90       	R0 = [SP++];
ffa08226:	72 90       	P2 = [SP++];
ffa08228:	11 00       	RTI;

ffa0822a <_RTCHANDLER>:
ffa0822a:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa0822e:	ad 2f       	JUMP.S 0xffa08188 <display_fail>;

ffa08230 <_I8HANDLER>:
ffa08230:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa08234:	aa 2f       	JUMP.S 0xffa08188 <display_fail>;

ffa08236 <_I9HANDLER>:
ffa08236:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa0823a:	a7 2f       	JUMP.S 0xffa08188 <display_fail>;

ffa0823c <_atexit>:
ffa0823c:	10 00       	RTS;
	...

ffa08240 <_get_asm>:
ffa08240:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08244:	8f b4       	W[P1 + 0x4] = R7;
ffa08246:	f1 b9       	R1 = [FP -0x4];
ffa08248:	09 64       	R1 += 0x1;		/* (  1) */
ffa0824a:	21 4c       	BITCLR (R1, 0x4);		/* bit  4 */
ffa0824c:	f1 bb       	[FP -0x4] = R1;

ffa0824e <wait_samples>:
ffa0824e:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08250:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08252:	fe 1f       	IF CC JUMP 0xffa0824e <wait_samples> (BP);
ffa08254:	0f b5       	W[P1 + 0x8] = R7;
ffa08256:	00 95       	R0 = W[P0] (Z);
ffa08258:	01 95       	R1 = W[P0] (Z);
ffa0825a:	80 4f       	R0 <<= 0x10;
ffa0825c:	88 50       	R2 = R0 + R1;
ffa0825e:	00 00       	NOP;
ffa08260:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08264:	05 9c 09 9c 
ffa08268:	00 c0 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L;
ffa0826c:	01 c8 15 88 	A1 += R2.H * R5.L, A0 += R2.L * R5.L || R6 = [I0++] || NOP;
ffa08270:	06 9c 00 00 
ffa08274:	25 c0 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND);
ffa08278:	00 c0 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L;
ffa0827c:	25 c0 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND);
ffa08280:	12 9e       	[I2++] = R2;
ffa08282:	00 00       	NOP;
ffa08284:	00 00       	NOP;
ffa08286:	00 00       	NOP;
ffa08288:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa0828c:	05 9c 09 9c 
ffa08290:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || R2 = [I1++];
ffa08294:	06 9c 0a 9c 
ffa08298:	01 c8 0e c8 	A1 += R1.H * R6.H, A0 += R1.L * R6.L || R7 = [I0++] || R3 = [I1++];
ffa0829c:	07 9c 0b 9c 
ffa082a0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa082a4:	05 9c 0c 9c 
ffa082a8:	01 c8 1f c8 	A1 += R3.H * R7.H, A0 += R3.L * R7.L || [I2++] = R0 || NOP;
ffa082ac:	10 9e 00 00 
ffa082b0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa082b4:	11 9e 00 00 
ffa082b8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa082bc:	05 9c 10 9e 
ffa082c0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R3;
ffa082c4:	06 9c 13 9e 
ffa082c8:	01 c8 1e c8 	A1 += R3.H * R6.H, A0 += R3.L * R6.L || R7 = [I0++] || R1 = [I1++];
ffa082cc:	07 9c 09 9c 
ffa082d0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R2 = [I1++] || NOP;
ffa082d4:	0a 9c 00 00 
ffa082d8:	01 c8 0f c8 	A1 += R1.H * R7.H, A0 += R1.L * R7.L || R5 = [I0++] || NOP;
ffa082dc:	05 9c 00 00 
ffa082e0:	25 c0 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND);
ffa082e4:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa082e8:	05 9c 10 9e 
ffa082ec:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R1;
ffa082f0:	06 9c 11 9e 
ffa082f4:	01 c8 0e c8 	A1 += R1.H * R6.H, A0 += R1.L * R6.L || R7 = [I0++] || R3 = [I1++];
ffa082f8:	07 9c 0b 9c 
ffa082fc:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R4 = [I1++] || NOP;
ffa08300:	0c 9c 00 00 
ffa08304:	01 c8 1f c8 	A1 += R3.H * R7.H, A0 += R3.L * R7.L || R5 = [I0++] || NOP;
ffa08308:	05 9c 00 00 
ffa0830c:	25 c0 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND);
ffa08310:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08314:	05 9c 10 9e 
ffa08318:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R3;
ffa0831c:	06 9c 13 9e 
ffa08320:	01 c8 1e c8 	A1 += R3.H * R6.H, A0 += R3.L * R6.L || R7 = [I0++] || R1 = [I1++];
ffa08324:	07 9c 09 9c 
ffa08328:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R2 = [I1++] || NOP;
ffa0832c:	0a 9c 00 00 
ffa08330:	01 c8 0f c8 	A1 += R1.H * R7.H, A0 += R1.L * R7.L || R5 = [I0++] || NOP;
ffa08334:	05 9c 00 00 
ffa08338:	25 c0 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND);
ffa0833c:	10 9e       	[I2++] = R0;
ffa0833e:	11 9e       	[I2++] = R1;
ffa08340:	07 e1 18 79 	R7.L = 0x7918;		/* (31000)	R7=0x7918(31000) */
ffa08344:	47 e1 00 7d 	R7.H = 0x7d00;		/* (32000)	R7=0x7d007918(2097183000) */
ffa08348:	00 c0 07 80 	A1 = R0.H * R7.L, A0 = R0.L * R7.L;
ffa0834c:	25 c0 87 eb 	R6.H = (A1 += R0.H * R7.H), R6.L = (A0 += R0.L * R7.H) (S2RND);
ffa08350:	06 30       	R0 = R6;
ffa08352:	f1 b9       	R1 = [FP -0x4];

ffa08354 <downsample>:
ffa08354:	a7 b9       	R7 = [FP -0x18];
ffa08356:	08 c4 00 00 	A0 = 0;
ffa0835a:	81 c6 f8 09 	R4 = R0 >>> 0x1 (V);
ffa0835e:	04 c6 3c 0c 	R6 = PACK (R4.L, R7.L);
ffa08362:	04 c6 3c 8a 	R5 = PACK (R4.H, R7.L);
ffa08366:	09 c6 2e 8e 	R7 = VIT_MAX (R6, R5) (ASL);
ffa0836a:	0b c0 80 39 	R6 = A0;
ffa0836e:	82 c6 09 8a 	R5 = R1 << 0x1;
ffa08372:	d2 b9       	R2 = [FP -0xc];
ffa08374:	ae 40       	R6 <<= R5;
ffa08376:	b2 56       	R2 = R2 | R6;
ffa08378:	e3 b9       	R3 = [FP -0x8];
ffa0837a:	c4 b9       	R4 = [FP -0x10];
ffa0837c:	b5 b9       	R5 = [FP -0x14];
ffa0837e:	df 60       	R7 = 0x1b (X);		/*		R7=0x1b( 27) */
ffa08380:	19 08       	CC = R1 == R3;
ffa08382:	0f 14       	IF !CC JUMP 0xffa083a0 <end_txchan_lo> (BP);
ffa08384:	80 c6 c0 07 	R3.L = R0.L >>> 0x8;
ffa08388:	0c 64       	R4 += 0x1;		/* (  1) */
ffa0838a:	23 9a       	B[P4++] = R3;
ffa0838c:	3c 08       	CC = R4 == R7;
ffa0838e:	1a 14       	IF !CC JUMP 0xffa083c2 <end_txchan_hi> (BP);
ffa08390:	82 c6 19 8c 	R6 = R1 << 0x3;
ffa08394:	ae 51       	R6 = R6 + R5;
ffa08396:	26 9a       	B[P4++] = R6;
ffa08398:	22 92       	[P4++] = R2;
ffa0839a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0839c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0839e:	0d 64       	R5 += 0x1;		/* (  1) */

ffa083a0 <end_txchan_lo>:
ffa083a0:	21 4a       	BITSET (R1, 0x4);		/* bit  4 */
ffa083a2:	19 08       	CC = R1 == R3;
ffa083a4:	0f 14       	IF !CC JUMP 0xffa083c2 <end_txchan_hi> (BP);
ffa083a6:	80 c6 c0 17 	R3.L = R0.H >>> 0x8;
ffa083aa:	0c 64       	R4 += 0x1;		/* (  1) */
ffa083ac:	23 9a       	B[P4++] = R3;
ffa083ae:	3c 08       	CC = R4 == R7;
ffa083b0:	09 14       	IF !CC JUMP 0xffa083c2 <end_txchan_hi> (BP);
ffa083b2:	82 c6 19 8c 	R6 = R1 << 0x3;
ffa083b6:	ae 51       	R6 = R6 + R5;
ffa083b8:	26 9a       	B[P4++] = R6;
ffa083ba:	22 92       	[P4++] = R2;
ffa083bc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa083be:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa083c0:	0d 64       	R5 += 0x1;		/* (  1) */

ffa083c2 <end_txchan_hi>:
ffa083c2:	7c 30       	R7 = P4;
ffa083c4:	4f 4c       	BITCLR (R7, 0x9);		/* bit  9 */
ffa083c6:	27 32       	P4 = R7;
ffa083c8:	d2 bb       	[FP -0xc] = R2;
ffa083ca:	c4 bb       	[FP -0x10] = R4;
ffa083cc:	b5 bb       	[FP -0x14] = R5;
ffa083ce:	10 00       	RTS;

ffa083d0 <_clearirq_asm>:
ffa083d0:	67 01       	[--SP] = RETS;
ffa083d2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa083d4:	8f b4       	W[P1 + 0x4] = R7;
ffa083d6:	ff e3 35 ff 	CALL 0xffa08240 <_get_asm>;
ffa083da:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa083dc:	1e 97       	W[P3] = R6;
ffa083de:	ff e3 31 ff 	CALL 0xffa08240 <_get_asm>;
ffa083e2:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa083e6:	1e 97       	W[P3] = R6;
ffa083e8:	ff e3 2c ff 	CALL 0xffa08240 <_get_asm>;
ffa083ec:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa083ee:	0f b5       	W[P1 + 0x8] = R7;
ffa083f0:	ff e3 28 ff 	CALL 0xffa08240 <_get_asm>;
ffa083f4:	27 01       	RETS = [SP++];
ffa083f6:	10 00       	RTS;

ffa083f8 <_waitirq_asm>:
ffa083f8:	67 01       	[--SP] = RETS;
ffa083fa:	27 e1 fa 00 	R7 = 0xfa (X);		/*		R7=0xfa(250) */

ffa083fe <waitirq_loop>:
ffa083fe:	0e 95       	R6 = W[P1] (Z);
ffa08400:	1e 49       	CC = BITTST (R6, 0x3);		/* bit  3 */
ffa08402:	0a 10       	IF !CC JUMP 0xffa08416 <waitirq_end>;
ffa08404:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08406:	3e 08       	CC = R6 == R7;
ffa08408:	07 18       	IF CC JUMP 0xffa08416 <waitirq_end>;
ffa0840a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0840c:	47 01       	[--SP] = R7;
ffa0840e:	ff e3 19 ff 	CALL 0xffa08240 <_get_asm>;
ffa08412:	37 90       	R7 = [SP++];
ffa08414:	f5 2f       	JUMP.S 0xffa083fe <waitirq_loop>;

ffa08416 <waitirq_end>:
ffa08416:	ff e3 15 ff 	CALL 0xffa08240 <_get_asm>;
ffa0841a:	27 01       	RETS = [SP++];
ffa0841c:	10 00       	RTS;

ffa0841e <_radio_bidi_asm>:
ffa0841e:	08 e1 24 01 	P0.L = 0x124;		/* (292)	P0=0xffa00124 */
ffa08422:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00124(-4194012) */
ffa08426:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08428:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0842a:	00 93       	[P0] = R0;
ffa0842c:	08 e1 00 00 	P0.L = 0x0;		/* (  0)	P0=0xffc00000(-4194304) */
ffa08430:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa08434:	00 e1 00 0a 	R0.L = 0xa00;		/* (2560)	R0=0xa00(2560) */
ffa08438:	00 97       	W[P0] = R0;
ffa0843a:	24 00       	SSYNC;
ffa0843c:	30 00       	CLI R0;
ffa0843e:	20 00       	IDLE;
ffa08440:	40 00       	STI R0;
ffa08442:	08 e1 14 05 	P0.L = 0x514;		/* (1300)	P0=0xffc00514(-4193004) */
ffa08446:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00514(-4193004) */
ffa0844a:	80 e1 02 00 	R0 = 0x2 (Z);		/*		R0=0x2(  2) */
ffa0844e:	00 97       	W[P0] = R0;
ffa08450:	08 e1 18 09 	P0.L = 0x918;		/* (2328)	P0=0xffc00918(-4191976) */
ffa08454:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00918(-4191976) */
ffa08458:	09 e1 00 07 	P1.L = 0x700;		/* (1792)	P1=0xffc00700(-4192512) */
ffa0845c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa08460:	0a e1 00 40 	P2.L = 0x4000;		/* (16384)	P2=0x4000 */
ffa08464:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff804000 */
ffa08468:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0x50c */
ffa0846c:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0050c(-4193012) */
ffa08470:	0c e1 00 40 	P4.L = 0x4000;		/* (16384)	P4=0x4000 */
ffa08474:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff804000 */
ffa08478:	0f e1 00 45 	FP.L = 0x4500;		/* (17664)	FP=0x4500 */
ffa0847c:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff904500 */
ffa08480:	80 e1 0f 00 	R0 = 0xf (Z);		/*		R0=0xf( 15) */
ffa08484:	f0 bb       	[FP -0x4] = R0;
ffa08486:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa08488:	e0 bb       	[FP -0x8] = R0;
ffa0848a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0848c:	d0 bb       	[FP -0xc] = R0;
ffa0848e:	c0 bb       	[FP -0x10] = R0;
ffa08490:	b0 bb       	[FP -0x14] = R0;
ffa08492:	00 e1 00 f0 	R0.L = 0xf000;		/* (-4096)	R0=0xf000(61440) */
ffa08496:	40 e1 80 3e 	R0.H = 0x3e80;		/* (16000)	R0=0x3e80f000(1048637440) */
ffa0849a:	a0 bb       	[FP -0x18] = R0;
ffa0849c:	20 e1 83 01 	R0 = 0x183 (X);		/*		R0=0x183(387) */
ffa084a0:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa084a4:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa084a6:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa084aa:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa084ae:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa084b2:	3c e1 80 04 	L0 = 0x480 (X);		/*		L0=0x480(1152) */
ffa084b6:	34 e1 00 00 	M0 = 0x0 (X);		/*		M0=0x0(  0) */
ffa084ba:	80 36       	B0 = I0;
ffa084bc:	11 e1 00 50 	I1.L = 0x5000;		/* (20480)	I1=0x5000(20480) */
ffa084c0:	51 e1 90 ff 	I1.H = 0xff90;		/* (-112)	I1=0xff905000(-7319552) */
ffa084c4:	3d e1 c0 02 	L1 = 0x2c0 (X);		/*		L1=0x2c0(704) */
ffa084c8:	35 e1 00 00 	M1 = 0x0 (X);		/*		M1=0x0(  0) */
ffa084cc:	89 36       	B1 = I1;
ffa084ce:	91 34       	I2 = I1;
ffa084d0:	f5 36       	L2 = L1;
ffa084d2:	36 e1 00 00 	M2 = 0x0 (X);		/*		M2=0x0(  0) */
ffa084d6:	d1 36       	B2 = B1;
ffa084d8:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa084da:	a2 e0 4c 50 	LSETUP(0xffa084de <lt_top>, 0xffa08572 <lt_bot>) LC0 = P5;

ffa084de <lt_top>:
ffa084de:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa084e2:	40 e1 00 c0 	R0.H = 0xc000;		/* (-16384)	R0=0xc0007d00(-1073709824) */
ffa084e6:	00 9e       	[I0++] = R0;
ffa084e8:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xc0004000(-1073725440) */
ffa084ec:	40 e1 20 03 	R0.H = 0x320;		/* (800)	R0=0x3204000(52445184) */
ffa084f0:	00 9e       	[I0++] = R0;
ffa084f2:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa084f6:	20 9e       	W[I0++] = R0.L;
ffa084f8:	20 9e       	W[I0++] = R0.L;
ffa084fa:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa084fe:	20 9e       	W[I0++] = R0.L;
ffa08500:	20 9e       	W[I0++] = R0.L;
ffa08502:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08506:	20 9e       	W[I0++] = R0.L;
ffa08508:	20 9e       	W[I0++] = R0.L;
ffa0850a:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa0850e:	20 9e       	W[I0++] = R0.L;
ffa08510:	20 9e       	W[I0++] = R0.L;
ffa08512:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08516:	20 9e       	W[I0++] = R0.L;
ffa08518:	20 9e       	W[I0++] = R0.L;
ffa0851a:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa0851e:	20 9e       	W[I0++] = R0.L;
ffa08520:	20 9e       	W[I0++] = R0.L;
ffa08522:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08526:	20 9e       	W[I0++] = R0.L;
ffa08528:	20 9e       	W[I0++] = R0.L;
ffa0852a:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa0852e:	20 9e       	W[I0++] = R0.L;
ffa08530:	20 9e       	W[I0++] = R0.L;
ffa08532:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08536:	20 9e       	W[I0++] = R0.L;
ffa08538:	20 9e       	W[I0++] = R0.L;
ffa0853a:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa0853e:	20 9e       	W[I0++] = R0.L;
ffa08540:	20 9e       	W[I0++] = R0.L;
ffa08542:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08546:	20 9e       	W[I0++] = R0.L;
ffa08548:	20 9e       	W[I0++] = R0.L;
ffa0854a:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa0854e:	20 9e       	W[I0++] = R0.L;
ffa08550:	20 9e       	W[I0++] = R0.L;
ffa08552:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08556:	20 9e       	W[I0++] = R0.L;
ffa08558:	20 9e       	W[I0++] = R0.L;
ffa0855a:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa0855e:	20 9e       	W[I0++] = R0.L;
ffa08560:	20 9e       	W[I0++] = R0.L;
ffa08562:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa08566:	20 9e       	W[I0++] = R0.L;
ffa08568:	20 9e       	W[I0++] = R0.L;
ffa0856a:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa0856e:	20 9e       	W[I0++] = R0.L;
ffa08570:	20 9e       	W[I0++] = R0.L;

ffa08572 <lt_bot>:
	...

ffa08574 <radio_loop>:
ffa08574:	ff e3 66 fe 	CALL 0xffa08240 <_get_asm>;
ffa08578:	b5 b9       	R5 = [FP -0x14];
ffa0857a:	1d 49       	CC = BITTST (R5, 0x3);		/* bit  3 */
ffa0857c:	fc 13       	IF !CC JUMP 0xffa08574 <radio_loop>;
ffa0857e:	ff e3 61 fe 	CALL 0xffa08240 <_get_asm>;
ffa08582:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08584:	b5 bb       	[FP -0x14] = R5;
ffa08586:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa08588:	ff e3 24 ff 	CALL 0xffa083d0 <_clearirq_asm>;
ffa0858c:	a2 e0 22 50 	LSETUP(0xffa08590 <wp_top>, 0xffa085d0 <wp_bot>) LC0 = P5;

ffa08590 <wp_top>:
ffa08590:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08592:	8f b4       	W[P1 + 0x4] = R7;
ffa08594:	ff e3 56 fe 	CALL 0xffa08240 <_get_asm>;
ffa08598:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa0859c:	1e 97       	W[P3] = R6;
ffa0859e:	ff e3 51 fe 	CALL 0xffa08240 <_get_asm>;
ffa085a2:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa085a4:	b2 e0 06 50 	LSETUP(0xffa085a8 <pb_top>, 0xffa085b0 <pb_bot>) LC1 = P5;

ffa085a8 <pb_top>:
ffa085a8:	16 98       	R6 = B[P2++] (Z);
ffa085aa:	1e 97       	W[P3] = R6;
ffa085ac:	ff e3 4a fe 	CALL 0xffa08240 <_get_asm>;

ffa085b0 <pb_bot>:
ffa085b0:	00 00       	NOP;
ffa085b2:	7a 30       	R7 = P2;
ffa085b4:	4f 4c       	BITCLR (R7, 0x9);		/* bit  9 */
ffa085b6:	17 32       	P2 = R7;
ffa085b8:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa085ba:	0f b5       	W[P1 + 0x8] = R7;
ffa085bc:	ff e3 42 fe 	CALL 0xffa08240 <_get_asm>;
ffa085c0:	47 60       	R7 = 0x8 (X);		/*		R7=0x8(  8) */
ffa085c2:	b0 31       	R6 = LC0;
ffa085c4:	37 08       	CC = R7 == R6;
ffa085c6:	05 18       	IF CC JUMP 0xffa085d0 <wp_bot>;
ffa085c8:	ff e3 18 ff 	CALL 0xffa083f8 <_waitirq_asm>;
ffa085cc:	ff e3 02 ff 	CALL 0xffa083d0 <_clearirq_asm>;

ffa085d0 <wp_bot>:
ffa085d0:	00 00       	NOP;
ffa085d2:	ff e3 13 ff 	CALL 0xffa083f8 <_waitirq_asm>;
ffa085d6:	ff e3 fd fe 	CALL 0xffa083d0 <_clearirq_asm>;
ffa085da:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa085dc:	8f b4       	W[P1 + 0x4] = R7;
ffa085de:	ff e3 31 fe 	CALL 0xffa08240 <_get_asm>;
ffa085e2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085e4:	8f b4       	W[P1 + 0x4] = R7;
ffa085e6:	ff e3 2d fe 	CALL 0xffa08240 <_get_asm>;
ffa085ea:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085ec:	1e 97       	W[P3] = R6;
ffa085ee:	ff e3 29 fe 	CALL 0xffa08240 <_get_asm>;
ffa085f2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa085f4:	1e 97       	W[P3] = R6;
ffa085f6:	ff e3 25 fe 	CALL 0xffa08240 <_get_asm>;
ffa085fa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085fc:	0f b5       	W[P1 + 0x8] = R7;
ffa085fe:	ff e3 21 fe 	CALL 0xffa08240 <_get_asm>;
ffa08602:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08604:	8f b4       	W[P1 + 0x4] = R7;
ffa08606:	ff e3 1d fe 	CALL 0xffa08240 <_get_asm>;
ffa0860a:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa0860c:	1e 97       	W[P3] = R6;
ffa0860e:	ff e3 19 fe 	CALL 0xffa08240 <_get_asm>;
ffa08612:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa08614:	1e 97       	W[P3] = R6;
ffa08616:	ff e3 15 fe 	CALL 0xffa08240 <_get_asm>;
ffa0861a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0861c:	0f b5       	W[P1 + 0x8] = R7;
ffa0861e:	ff e3 11 fe 	CALL 0xffa08240 <_get_asm>;
ffa08622:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08624:	0f b5       	W[P1 + 0x8] = R7;
ffa08626:	ff e3 0d fe 	CALL 0xffa08240 <_get_asm>;
ffa0862a:	ff e3 e7 fe 	CALL 0xffa083f8 <_waitirq_asm>;
ffa0862e:	0f 95       	R7 = W[P1] (Z);
ffa08630:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa08632:	52 18       	IF CC JUMP 0xffa086d6 <no_rxpacket>;
ffa08634:	ff e3 ce fe 	CALL 0xffa083d0 <_clearirq_asm>;
ffa08638:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0863a:	8f b4       	W[P1 + 0x4] = R7;
ffa0863c:	ff e3 02 fe 	CALL 0xffa08240 <_get_asm>;
ffa08640:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08642:	8f b4       	W[P1 + 0x4] = R7;
ffa08644:	ff e3 fe fd 	CALL 0xffa08240 <_get_asm>;
ffa08648:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa0864c:	1e 97       	W[P3] = R6;
ffa0864e:	ff e3 f9 fd 	CALL 0xffa08240 <_get_asm>;
ffa08652:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08654:	a2 e0 3c 50 	LSETUP(0xffa08658 <rp_top>, 0xffa086cc <rp_bot>) LC0 = P5;

ffa08658 <rp_top>:
ffa08658:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0865a:	97 bb       	[FP -0x1c] = R7;
ffa0865c:	87 bb       	[FP -0x20] = R7;
ffa0865e:	ff e3 f1 fd 	CALL 0xffa08240 <_get_asm>;
ffa08662:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08664:	b2 e0 0e 50 	LSETUP(0xffa08668 <a32_top>, 0xffa08680 <a32_bot>) LC1 = P5;

ffa08668 <a32_top>:
ffa08668:	1f 97       	W[P3] = R7;
ffa0866a:	ff e3 eb fd 	CALL 0xffa08240 <_get_asm>;
ffa0866e:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08670:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08674:	f7 55       	R7 = R7 & R6;
ffa08676:	96 b9       	R6 = [FP -0x1c];
ffa08678:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa0867c:	be 51       	R6 = R6 + R7;
ffa0867e:	96 bb       	[FP -0x1c] = R6;

ffa08680 <a32_bot>:
ffa08680:	00 00       	NOP;
ffa08682:	ff e3 df fd 	CALL 0xffa08240 <_get_asm>;
ffa08686:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08688:	b2 e0 0e 50 	LSETUP(0xffa0868c <v32_top>, 0xffa086a4 <v32_bot>) LC1 = P5;

ffa0868c <v32_top>:
ffa0868c:	1f 97       	W[P3] = R7;
ffa0868e:	ff e3 d9 fd 	CALL 0xffa08240 <_get_asm>;
ffa08692:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08694:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08698:	f7 55       	R7 = R7 & R6;
ffa0869a:	86 b9       	R6 = [FP -0x20];
ffa0869c:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa086a0:	be 51       	R6 = R6 + R7;
ffa086a2:	86 bb       	[FP -0x20] = R6;

ffa086a4 <v32_bot>:
ffa086a4:	00 00       	NOP;
ffa086a6:	ff e3 cd fd 	CALL 0xffa08240 <_get_asm>;
ffa086aa:	97 b9       	R7 = [FP -0x1c];
ffa086ac:	46 e1 ff ff 	R6.H = 0xffff;		/* ( -1)	R6=0xffff00ff(-65281) */
ffa086b0:	06 e1 03 40 	R6.L = 0x4003;		/* (16387)	R6=0xffff4003(-49149) */
ffa086b4:	77 55       	R5 = R7 & R6;
ffa086b6:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff904003(-7323645) */
ffa086ba:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff904000(-7323648) */
ffa086be:	35 08       	CC = R5 == R6;
ffa086c0:	04 10       	IF !CC JUMP 0xffa086c8 <invalid>;
ffa086c2:	2f 32       	P5 = R7;
ffa086c4:	86 b9       	R6 = [FP -0x20];
ffa086c6:	2e 93       	[P5] = R6;

ffa086c8 <invalid>:
ffa086c8:	ff e3 bc fd 	CALL 0xffa08240 <_get_asm>;

ffa086cc <rp_bot>:
ffa086cc:	00 00       	NOP;
ffa086ce:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa086d0:	0f b5       	W[P1 + 0x8] = R7;
ffa086d2:	ff e3 b7 fd 	CALL 0xffa08240 <_get_asm>;

ffa086d6 <no_rxpacket>:
ffa086d6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa086d8:	8f b4       	W[P1 + 0x4] = R7;
ffa086da:	ff e3 b3 fd 	CALL 0xffa08240 <_get_asm>;
ffa086de:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa086e0:	8f b4       	W[P1 + 0x4] = R7;
ffa086e2:	ff e3 af fd 	CALL 0xffa08240 <_get_asm>;
ffa086e6:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa086e8:	1e 97       	W[P3] = R6;
ffa086ea:	ff e3 ab fd 	CALL 0xffa08240 <_get_asm>;
ffa086ee:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa086f0:	1e 97       	W[P3] = R6;
ffa086f2:	ff e3 a7 fd 	CALL 0xffa08240 <_get_asm>;
ffa086f6:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa086f8:	0f b5       	W[P1 + 0x8] = R7;
ffa086fa:	ff e3 a3 fd 	CALL 0xffa08240 <_get_asm>;
ffa086fe:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08700:	8f b4       	W[P1 + 0x4] = R7;
ffa08702:	ff e3 9f fd 	CALL 0xffa08240 <_get_asm>;
ffa08706:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa08708:	1e 97       	W[P3] = R6;
ffa0870a:	ff e3 9b fd 	CALL 0xffa08240 <_get_asm>;
ffa0870e:	96 60       	R6 = 0x12 (X);		/*		R6=0x12( 18) */
ffa08710:	1e 97       	W[P3] = R6;
ffa08712:	ff e3 97 fd 	CALL 0xffa08240 <_get_asm>;
ffa08716:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08718:	0f b5       	W[P1 + 0x8] = R7;
ffa0871a:	ff e3 93 fd 	CALL 0xffa08240 <_get_asm>;
ffa0871e:	2b 2f       	JUMP.S 0xffa08574 <radio_loop>;

ffa08720 <_exception_report>:
ffa08720:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa08724:	b8 b0       	[FP + 0x8] = R0;
ffa08726:	f9 b0       	[FP + 0xc] = R1;
ffa08728:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc04000(-4177920) */
ffa0872c:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa08730:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08732:	10 97       	W[P2] = R0;
ffa08734:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa08738:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0xff906000 <_l1_data_a>(-7315456) */
ffa0873c:	00 e3 bc 09 	CALL 0xffa09ab4 <_printf_str>;
ffa08740:	b8 a0       	R0 = [FP + 0x8];
ffa08742:	70 4e       	R0 >>= 0xe;
ffa08744:	08 30       	R1 = R0;
ffa08746:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08748:	41 54       	R1 = R1 & R0;
ffa0874a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001f(-7340001) */
ffa0874e:	00 e1 0c 60 	R0.L = 0x600c;		/* (24588)	R0=0xff90600c(-7315444) */
ffa08752:	00 e3 91 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08756:	b9 a0       	R1 = [FP + 0x8];
ffa08758:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa0875a:	41 54       	R1 = R1 & R0;
ffa0875c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003f(-7339969) */
ffa08760:	00 e1 14 60 	R0.L = 0x6014;		/* (24596)	R0=0xff906014(-7315436) */
ffa08764:	00 e3 88 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08768:	f9 a0       	R1 = [FP + 0xc];
ffa0876a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906014(-7315436) */
ffa0876e:	00 e1 20 60 	R0.L = 0x6020;		/* (24608)	R0=0xff906020(-7315424) */
ffa08772:	00 e3 81 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08776:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906020(-7315424) */
ffa0877a:	00 e1 bc 61 	R0.L = 0x61bc;		/* (25020)	R0=0xff9061bc <_g_excregs>(-7315012) */
ffa0877e:	f0 bb       	[FP -0x4] = R0;
ffa08780:	fa b9       	P2 = [FP -0x4];
ffa08782:	10 91       	R0 = [P2];
ffa08784:	08 30       	R1 = R0;
ffa08786:	f0 b9       	R0 = [FP -0x4];
ffa08788:	20 64       	R0 += 0x4;		/* (  4) */
ffa0878a:	f0 bb       	[FP -0x4] = R0;
ffa0878c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9061bc <_g_excregs>(-7315012) */
ffa08790:	00 e1 28 60 	R0.L = 0x6028;		/* (24616)	R0=0xff906028(-7315416) */
ffa08794:	00 e3 70 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08798:	fa b9       	P2 = [FP -0x4];
ffa0879a:	10 91       	R0 = [P2];
ffa0879c:	08 30       	R1 = R0;
ffa0879e:	f0 b9       	R0 = [FP -0x4];
ffa087a0:	20 64       	R0 += 0x4;		/* (  4) */
ffa087a2:	f0 bb       	[FP -0x4] = R0;
ffa087a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906028(-7315416) */
ffa087a8:	00 e1 2c 60 	R0.L = 0x602c;		/* (24620)	R0=0xff90602c(-7315412) */
ffa087ac:	00 e3 64 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa087b0:	fa b9       	P2 = [FP -0x4];
ffa087b2:	10 91       	R0 = [P2];
ffa087b4:	08 30       	R1 = R0;
ffa087b6:	f0 b9       	R0 = [FP -0x4];
ffa087b8:	20 64       	R0 += 0x4;		/* (  4) */
ffa087ba:	f0 bb       	[FP -0x4] = R0;
ffa087bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90602c(-7315412) */
ffa087c0:	00 e1 30 60 	R0.L = 0x6030;		/* (24624)	R0=0xff906030(-7315408) */
ffa087c4:	00 e3 58 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa087c8:	fa b9       	P2 = [FP -0x4];
ffa087ca:	10 91       	R0 = [P2];
ffa087cc:	08 30       	R1 = R0;
ffa087ce:	f0 b9       	R0 = [FP -0x4];
ffa087d0:	20 64       	R0 += 0x4;		/* (  4) */
ffa087d2:	f0 bb       	[FP -0x4] = R0;
ffa087d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906030(-7315408) */
ffa087d8:	00 e1 34 60 	R0.L = 0x6034;		/* (24628)	R0=0xff906034(-7315404) */
ffa087dc:	00 e3 4c 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa087e0:	fa b9       	P2 = [FP -0x4];
ffa087e2:	10 91       	R0 = [P2];
ffa087e4:	08 30       	R1 = R0;
ffa087e6:	f0 b9       	R0 = [FP -0x4];
ffa087e8:	20 64       	R0 += 0x4;		/* (  4) */
ffa087ea:	f0 bb       	[FP -0x4] = R0;
ffa087ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906034(-7315404) */
ffa087f0:	00 e1 38 60 	R0.L = 0x6038;		/* (24632)	R0=0xff906038(-7315400) */
ffa087f4:	00 e3 40 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa087f8:	fa b9       	P2 = [FP -0x4];
ffa087fa:	10 91       	R0 = [P2];
ffa087fc:	08 30       	R1 = R0;
ffa087fe:	f0 b9       	R0 = [FP -0x4];
ffa08800:	20 64       	R0 += 0x4;		/* (  4) */
ffa08802:	f0 bb       	[FP -0x4] = R0;
ffa08804:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906038(-7315400) */
ffa08808:	00 e1 3c 60 	R0.L = 0x603c;		/* (24636)	R0=0xff90603c(-7315396) */
ffa0880c:	00 e3 34 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08810:	fa b9       	P2 = [FP -0x4];
ffa08812:	10 91       	R0 = [P2];
ffa08814:	08 30       	R1 = R0;
ffa08816:	f0 b9       	R0 = [FP -0x4];
ffa08818:	20 64       	R0 += 0x4;		/* (  4) */
ffa0881a:	f0 bb       	[FP -0x4] = R0;
ffa0881c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90603c(-7315396) */
ffa08820:	00 e1 40 60 	R0.L = 0x6040;		/* (24640)	R0=0xff906040(-7315392) */
ffa08824:	00 e3 28 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08828:	fa b9       	P2 = [FP -0x4];
ffa0882a:	10 91       	R0 = [P2];
ffa0882c:	08 30       	R1 = R0;
ffa0882e:	f0 b9       	R0 = [FP -0x4];
ffa08830:	20 64       	R0 += 0x4;		/* (  4) */
ffa08832:	f0 bb       	[FP -0x4] = R0;
ffa08834:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906040(-7315392) */
ffa08838:	00 e1 44 60 	R0.L = 0x6044;		/* (24644)	R0=0xff906044(-7315388) */
ffa0883c:	00 e3 1c 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08840:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906044(-7315388) */
ffa08844:	00 e1 48 60 	R0.L = 0x6048;		/* (24648)	R0=0xff906048(-7315384) */
ffa08848:	00 e3 d2 08 	CALL 0xffa099ec <_uart_str>;
ffa0884c:	fa b9       	P2 = [FP -0x4];
ffa0884e:	10 91       	R0 = [P2];
ffa08850:	08 30       	R1 = R0;
ffa08852:	f0 b9       	R0 = [FP -0x4];
ffa08854:	20 64       	R0 += 0x4;		/* (  4) */
ffa08856:	f0 bb       	[FP -0x4] = R0;
ffa08858:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906048(-7315384) */
ffa0885c:	00 e1 4c 60 	R0.L = 0x604c;		/* (24652)	R0=0xff90604c(-7315380) */
ffa08860:	00 e3 0a 0a 	CALL 0xffa09c74 <_printf_hex>;
ffa08864:	fa b9       	P2 = [FP -0x4];
ffa08866:	10 91       	R0 = [P2];
ffa08868:	08 30       	R1 = R0;
ffa0886a:	f0 b9       	R0 = [FP -0x4];
ffa0886c:	20 64       	R0 += 0x4;		/* (  4) */
ffa0886e:	f0 bb       	[FP -0x4] = R0;
ffa08870:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90604c(-7315380) */
ffa08874:	00 e1 50 60 	R0.L = 0x6050;		/* (24656)	R0=0xff906050(-7315376) */
ffa08878:	00 e3 fe 09 	CALL 0xffa09c74 <_printf_hex>;
ffa0887c:	fa b9       	P2 = [FP -0x4];
ffa0887e:	10 91       	R0 = [P2];
ffa08880:	08 30       	R1 = R0;
ffa08882:	f0 b9       	R0 = [FP -0x4];
ffa08884:	20 64       	R0 += 0x4;		/* (  4) */
ffa08886:	f0 bb       	[FP -0x4] = R0;
ffa08888:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906050(-7315376) */
ffa0888c:	00 e1 54 60 	R0.L = 0x6054;		/* (24660)	R0=0xff906054(-7315372) */
ffa08890:	00 e3 f2 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08894:	fa b9       	P2 = [FP -0x4];
ffa08896:	10 91       	R0 = [P2];
ffa08898:	08 30       	R1 = R0;
ffa0889a:	f0 b9       	R0 = [FP -0x4];
ffa0889c:	20 64       	R0 += 0x4;		/* (  4) */
ffa0889e:	f0 bb       	[FP -0x4] = R0;
ffa088a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906054(-7315372) */
ffa088a4:	00 e1 58 60 	R0.L = 0x6058;		/* (24664)	R0=0xff906058(-7315368) */
ffa088a8:	00 e3 e6 09 	CALL 0xffa09c74 <_printf_hex>;
ffa088ac:	fa b9       	P2 = [FP -0x4];
ffa088ae:	10 91       	R0 = [P2];
ffa088b0:	08 30       	R1 = R0;
ffa088b2:	f0 b9       	R0 = [FP -0x4];
ffa088b4:	20 64       	R0 += 0x4;		/* (  4) */
ffa088b6:	f0 bb       	[FP -0x4] = R0;
ffa088b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906058(-7315368) */
ffa088bc:	00 e1 5c 60 	R0.L = 0x605c;		/* (24668)	R0=0xff90605c(-7315364) */
ffa088c0:	00 e3 da 09 	CALL 0xffa09c74 <_printf_hex>;
ffa088c4:	fa b9       	P2 = [FP -0x4];
ffa088c6:	10 91       	R0 = [P2];
ffa088c8:	08 30       	R1 = R0;
ffa088ca:	f0 b9       	R0 = [FP -0x4];
ffa088cc:	20 64       	R0 += 0x4;		/* (  4) */
ffa088ce:	f0 bb       	[FP -0x4] = R0;
ffa088d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90605c(-7315364) */
ffa088d4:	00 e1 60 60 	R0.L = 0x6060;		/* (24672)	R0=0xff906060(-7315360) */
ffa088d8:	00 e3 ce 09 	CALL 0xffa09c74 <_printf_hex>;
ffa088dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906060(-7315360) */
ffa088e0:	00 e1 48 60 	R0.L = 0x6048;		/* (24648)	R0=0xff906048(-7315384) */
ffa088e4:	00 e3 84 08 	CALL 0xffa099ec <_uart_str>;
ffa088e8:	fa b9       	P2 = [FP -0x4];
ffa088ea:	10 91       	R0 = [P2];
ffa088ec:	08 30       	R1 = R0;
ffa088ee:	f0 b9       	R0 = [FP -0x4];
ffa088f0:	20 64       	R0 += 0x4;		/* (  4) */
ffa088f2:	f0 bb       	[FP -0x4] = R0;
ffa088f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906048(-7315384) */
ffa088f8:	00 e1 64 60 	R0.L = 0x6064;		/* (24676)	R0=0xff906064(-7315356) */
ffa088fc:	00 e3 bc 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08900:	fa b9       	P2 = [FP -0x4];
ffa08902:	10 91       	R0 = [P2];
ffa08904:	08 30       	R1 = R0;
ffa08906:	f0 b9       	R0 = [FP -0x4];
ffa08908:	20 64       	R0 += 0x4;		/* (  4) */
ffa0890a:	f0 bb       	[FP -0x4] = R0;
ffa0890c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906064(-7315356) */
ffa08910:	00 e1 68 60 	R0.L = 0x6068;		/* (24680)	R0=0xff906068(-7315352) */
ffa08914:	00 e3 b0 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08918:	fa b9       	P2 = [FP -0x4];
ffa0891a:	10 91       	R0 = [P2];
ffa0891c:	08 30       	R1 = R0;
ffa0891e:	f0 b9       	R0 = [FP -0x4];
ffa08920:	20 64       	R0 += 0x4;		/* (  4) */
ffa08922:	f0 bb       	[FP -0x4] = R0;
ffa08924:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906068(-7315352) */
ffa08928:	00 e1 6c 60 	R0.L = 0x606c;		/* (24684)	R0=0xff90606c(-7315348) */
ffa0892c:	00 e3 a4 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08930:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90606c(-7315348) */
ffa08934:	00 e1 48 60 	R0.L = 0x6048;		/* (24648)	R0=0xff906048(-7315384) */
ffa08938:	00 e3 5a 08 	CALL 0xffa099ec <_uart_str>;
ffa0893c:	fa b9       	P2 = [FP -0x4];
ffa0893e:	10 91       	R0 = [P2];
ffa08940:	08 30       	R1 = R0;
ffa08942:	f0 b9       	R0 = [FP -0x4];
ffa08944:	20 64       	R0 += 0x4;		/* (  4) */
ffa08946:	f0 bb       	[FP -0x4] = R0;
ffa08948:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906048(-7315384) */
ffa0894c:	00 e1 70 60 	R0.L = 0x6070;		/* (24688)	R0=0xff906070(-7315344) */
ffa08950:	00 e3 92 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08954:	fa b9       	P2 = [FP -0x4];
ffa08956:	10 91       	R0 = [P2];
ffa08958:	08 30       	R1 = R0;
ffa0895a:	f0 b9       	R0 = [FP -0x4];
ffa0895c:	20 64       	R0 += 0x4;		/* (  4) */
ffa0895e:	f0 bb       	[FP -0x4] = R0;
ffa08960:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906070(-7315344) */
ffa08964:	00 e1 74 60 	R0.L = 0x6074;		/* (24692)	R0=0xff906074(-7315340) */
ffa08968:	00 e3 86 09 	CALL 0xffa09c74 <_printf_hex>;
ffa0896c:	fa b9       	P2 = [FP -0x4];
ffa0896e:	10 91       	R0 = [P2];
ffa08970:	08 30       	R1 = R0;
ffa08972:	f0 b9       	R0 = [FP -0x4];
ffa08974:	20 64       	R0 += 0x4;		/* (  4) */
ffa08976:	f0 bb       	[FP -0x4] = R0;
ffa08978:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906074(-7315340) */
ffa0897c:	00 e1 78 60 	R0.L = 0x6078;		/* (24696)	R0=0xff906078(-7315336) */
ffa08980:	00 e3 7a 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08984:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906078(-7315336) */
ffa08988:	00 e1 48 60 	R0.L = 0x6048;		/* (24648)	R0=0xff906048(-7315384) */
ffa0898c:	00 e3 30 08 	CALL 0xffa099ec <_uart_str>;
ffa08990:	fa b9       	P2 = [FP -0x4];
ffa08992:	10 91       	R0 = [P2];
ffa08994:	08 30       	R1 = R0;
ffa08996:	f0 b9       	R0 = [FP -0x4];
ffa08998:	20 64       	R0 += 0x4;		/* (  4) */
ffa0899a:	f0 bb       	[FP -0x4] = R0;
ffa0899c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906048(-7315384) */
ffa089a0:	00 e1 7c 60 	R0.L = 0x607c;		/* (24700)	R0=0xff90607c(-7315332) */
ffa089a4:	00 e3 68 09 	CALL 0xffa09c74 <_printf_hex>;
ffa089a8:	fa b9       	P2 = [FP -0x4];
ffa089aa:	10 91       	R0 = [P2];
ffa089ac:	08 30       	R1 = R0;
ffa089ae:	f0 b9       	R0 = [FP -0x4];
ffa089b0:	20 64       	R0 += 0x4;		/* (  4) */
ffa089b2:	f0 bb       	[FP -0x4] = R0;
ffa089b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90607c(-7315332) */
ffa089b8:	00 e1 80 60 	R0.L = 0x6080;		/* (24704)	R0=0xff906080(-7315328) */
ffa089bc:	00 e3 5c 09 	CALL 0xffa09c74 <_printf_hex>;
ffa089c0:	fa b9       	P2 = [FP -0x4];
ffa089c2:	10 91       	R0 = [P2];
ffa089c4:	08 30       	R1 = R0;
ffa089c6:	f0 b9       	R0 = [FP -0x4];
ffa089c8:	20 64       	R0 += 0x4;		/* (  4) */
ffa089ca:	f0 bb       	[FP -0x4] = R0;
ffa089cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906080(-7315328) */
ffa089d0:	00 e1 84 60 	R0.L = 0x6084;		/* (24708)	R0=0xff906084(-7315324) */
ffa089d4:	00 e3 50 09 	CALL 0xffa09c74 <_printf_hex>;
ffa089d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906084(-7315324) */
ffa089dc:	00 e1 48 60 	R0.L = 0x6048;		/* (24648)	R0=0xff906048(-7315384) */
ffa089e0:	00 e3 06 08 	CALL 0xffa099ec <_uart_str>;
ffa089e4:	fa b9       	P2 = [FP -0x4];
ffa089e6:	10 91       	R0 = [P2];
ffa089e8:	08 30       	R1 = R0;
ffa089ea:	f0 b9       	R0 = [FP -0x4];
ffa089ec:	20 64       	R0 += 0x4;		/* (  4) */
ffa089ee:	f0 bb       	[FP -0x4] = R0;
ffa089f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906048(-7315384) */
ffa089f4:	00 e1 88 60 	R0.L = 0x6088;		/* (24712)	R0=0xff906088(-7315320) */
ffa089f8:	00 e3 3e 09 	CALL 0xffa09c74 <_printf_hex>;
ffa089fc:	fa b9       	P2 = [FP -0x4];
ffa089fe:	10 91       	R0 = [P2];
ffa08a00:	08 30       	R1 = R0;
ffa08a02:	f0 b9       	R0 = [FP -0x4];
ffa08a04:	20 64       	R0 += 0x4;		/* (  4) */
ffa08a06:	f0 bb       	[FP -0x4] = R0;
ffa08a08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906088(-7315320) */
ffa08a0c:	00 e1 8c 60 	R0.L = 0x608c;		/* (24716)	R0=0xff90608c(-7315316) */
ffa08a10:	00 e3 32 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08a14:	fa b9       	P2 = [FP -0x4];
ffa08a16:	10 91       	R0 = [P2];
ffa08a18:	08 30       	R1 = R0;
ffa08a1a:	f0 b9       	R0 = [FP -0x4];
ffa08a1c:	20 64       	R0 += 0x4;		/* (  4) */
ffa08a1e:	f0 bb       	[FP -0x4] = R0;
ffa08a20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90608c(-7315316) */
ffa08a24:	00 e1 90 60 	R0.L = 0x6090;		/* (24720)	R0=0xff906090(-7315312) */
ffa08a28:	00 e3 26 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08a2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906090(-7315312) */
ffa08a30:	00 e1 48 60 	R0.L = 0x6048;		/* (24648)	R0=0xff906048(-7315384) */
ffa08a34:	00 e3 dc 07 	CALL 0xffa099ec <_uart_str>;
ffa08a38:	fa b9       	P2 = [FP -0x4];
ffa08a3a:	10 91       	R0 = [P2];
ffa08a3c:	08 30       	R1 = R0;
ffa08a3e:	f0 b9       	R0 = [FP -0x4];
ffa08a40:	20 64       	R0 += 0x4;		/* (  4) */
ffa08a42:	f0 bb       	[FP -0x4] = R0;
ffa08a44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906048(-7315384) */
ffa08a48:	00 e1 94 60 	R0.L = 0x6094;		/* (24724)	R0=0xff906094(-7315308) */
ffa08a4c:	00 e3 14 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08a50:	fa b9       	P2 = [FP -0x4];
ffa08a52:	10 91       	R0 = [P2];
ffa08a54:	08 30       	R1 = R0;
ffa08a56:	f0 b9       	R0 = [FP -0x4];
ffa08a58:	20 64       	R0 += 0x4;		/* (  4) */
ffa08a5a:	f0 bb       	[FP -0x4] = R0;
ffa08a5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906094(-7315308) */
ffa08a60:	00 e1 98 60 	R0.L = 0x6098;		/* (24728)	R0=0xff906098(-7315304) */
ffa08a64:	00 e3 08 09 	CALL 0xffa09c74 <_printf_hex>;
ffa08a68:	fa b9       	P2 = [FP -0x4];
ffa08a6a:	10 91       	R0 = [P2];
ffa08a6c:	08 30       	R1 = R0;
ffa08a6e:	f0 b9       	R0 = [FP -0x4];
ffa08a70:	20 64       	R0 += 0x4;		/* (  4) */
ffa08a72:	f0 bb       	[FP -0x4] = R0;
ffa08a74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906098(-7315304) */
ffa08a78:	00 e1 9c 60 	R0.L = 0x609c;		/* (24732)	R0=0xff90609c(-7315300) */
ffa08a7c:	00 e3 fc 08 	CALL 0xffa09c74 <_printf_hex>;
ffa08a80:	fa b9       	P2 = [FP -0x4];
ffa08a82:	10 91       	R0 = [P2];
ffa08a84:	08 30       	R1 = R0;
ffa08a86:	f0 b9       	R0 = [FP -0x4];
ffa08a88:	20 64       	R0 += 0x4;		/* (  4) */
ffa08a8a:	f0 bb       	[FP -0x4] = R0;
ffa08a8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90609c(-7315300) */
ffa08a90:	00 e1 a0 60 	R0.L = 0x60a0;		/* (24736)	R0=0xff9060a0(-7315296) */
ffa08a94:	00 e3 f0 08 	CALL 0xffa09c74 <_printf_hex>;
ffa08a98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa08a9c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa08aa0:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08aa4:	10 97       	W[P2] = R0;
ffa08aa6:	24 00       	SSYNC;
ffa08aa8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa08aac:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa08ab0:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08ab4:	10 97       	W[P2] = R0;
ffa08ab6:	24 00       	SSYNC;
ffa08ab8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa08aba:	c0 bb       	[FP -0x10] = R0;
ffa08abc:	b8 a0       	R0 = [FP + 0x8];
ffa08abe:	d0 bb       	[FP -0xc] = R0;
ffa08ac0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08ac2:	e0 bb       	[FP -0x8] = R0;
ffa08ac4:	27 20       	JUMP.S 0xffa08b12 <_exception_report+0x3f2>;
ffa08ac6:	c0 b9       	R0 = [FP -0x10];
ffa08ac8:	d1 b9       	R1 = [FP -0xc];
ffa08aca:	08 54       	R0 = R0 & R1;
ffa08acc:	00 0c       	CC = R0 == 0x0;
ffa08ace:	08 18       	IF CC JUMP 0xffa08ade <_exception_report+0x3be>;
ffa08ad0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa08ad4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08ad8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08ada:	10 97       	W[P2] = R0;
ffa08adc:	07 20       	JUMP.S 0xffa08aea <_exception_report+0x3ca>;
ffa08ade:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08ae2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08ae6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08ae8:	10 97       	W[P2] = R0;
ffa08aea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08aee:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa08af2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa08af4:	10 97       	W[P2] = R0;
ffa08af6:	24 00       	SSYNC;
ffa08af8:	c0 b9       	R0 = [FP -0x10];
ffa08afa:	08 4e       	R0 >>= 0x1;
ffa08afc:	c0 bb       	[FP -0x10] = R0;
ffa08afe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa08b02:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa08b06:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa08b08:	10 97       	W[P2] = R0;
ffa08b0a:	24 00       	SSYNC;
ffa08b0c:	e0 b9       	R0 = [FP -0x8];
ffa08b0e:	08 64       	R0 += 0x1;		/* (  1) */
ffa08b10:	e0 bb       	[FP -0x8] = R0;
ffa08b12:	e0 b9       	R0 = [FP -0x8];
ffa08b14:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa08b16:	08 09       	CC = R0 <= R1;
ffa08b18:	d7 1b       	IF CC JUMP 0xffa08ac6 <_exception_report+0x3a6>;
ffa08b1a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa08b1e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08b22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08b24:	10 97       	W[P2] = R0;
ffa08b26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08b28:	e0 bb       	[FP -0x8] = R0;
ffa08b2a:	06 20       	JUMP.S 0xffa08b36 <_exception_report+0x416>;
ffa08b2c:	00 00       	NOP;
ffa08b2e:	00 00       	NOP;
ffa08b30:	e0 b9       	R0 = [FP -0x8];
ffa08b32:	08 64       	R0 += 0x1;		/* (  1) */
ffa08b34:	e0 bb       	[FP -0x8] = R0;
ffa08b36:	e0 b9       	R0 = [FP -0x8];
ffa08b38:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa08b3a:	08 09       	CC = R0 <= R1;
ffa08b3c:	f8 1b       	IF CC JUMP 0xffa08b2c <_exception_report+0x40c>;
ffa08b3e:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa08b42:	c0 bb       	[FP -0x10] = R0;
ffa08b44:	f8 a0       	R0 = [FP + 0xc];
ffa08b46:	d0 bb       	[FP -0xc] = R0;
ffa08b48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08b4a:	e0 bb       	[FP -0x8] = R0;
ffa08b4c:	44 20       	JUMP.S 0xffa08bd4 <_exception_report+0x4b4>;
ffa08b4e:	c0 b9       	R0 = [FP -0x10];
ffa08b50:	d1 b9       	R1 = [FP -0xc];
ffa08b52:	08 54       	R0 = R0 & R1;
ffa08b54:	00 0c       	CC = R0 == 0x0;
ffa08b56:	08 18       	IF CC JUMP 0xffa08b66 <_exception_report+0x446>;
ffa08b58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08b5c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08b60:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08b62:	10 97       	W[P2] = R0;
ffa08b64:	07 20       	JUMP.S 0xffa08b72 <_exception_report+0x452>;
ffa08b66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08b6a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08b6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08b70:	10 97       	W[P2] = R0;
ffa08b72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08b76:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa08b7a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa08b7c:	10 97       	W[P2] = R0;
ffa08b7e:	24 00       	SSYNC;
ffa08b80:	c0 b9       	R0 = [FP -0x10];
ffa08b82:	08 4e       	R0 >>= 0x1;
ffa08b84:	c0 bb       	[FP -0x10] = R0;
ffa08b86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa08b8a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa08b8e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa08b90:	10 97       	W[P2] = R0;
ffa08b92:	24 00       	SSYNC;
ffa08b94:	e1 b9       	R1 = [FP -0x8];
ffa08b96:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa08b98:	01 54       	R0 = R1 & R0;
ffa08b9a:	18 0c       	CC = R0 == 0x3;
ffa08b9c:	19 10       	IF !CC JUMP 0xffa08bce <_exception_report+0x4ae>;
	...
ffa08bce:	e0 b9       	R0 = [FP -0x8];
ffa08bd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa08bd2:	e0 bb       	[FP -0x8] = R0;
ffa08bd4:	e0 b9       	R0 = [FP -0x8];
ffa08bd6:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa08bd8:	08 09       	CC = R0 <= R1;
ffa08bda:	ba 1b       	IF CC JUMP 0xffa08b4e <_exception_report+0x42e>;
ffa08bdc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa08be0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08be4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08be6:	10 97       	W[P2] = R0;
ffa08be8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08bea:	e0 bb       	[FP -0x8] = R0;
ffa08bec:	06 20       	JUMP.S 0xffa08bf8 <_exception_report+0x4d8>;
ffa08bee:	00 00       	NOP;
ffa08bf0:	00 00       	NOP;
ffa08bf2:	e0 b9       	R0 = [FP -0x8];
ffa08bf4:	08 64       	R0 += 0x1;		/* (  1) */
ffa08bf6:	e0 bb       	[FP -0x8] = R0;
ffa08bf8:	e0 b9       	R0 = [FP -0x8];
ffa08bfa:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa08bfe:	08 09       	CC = R0 <= R1;
ffa08c00:	f7 1b       	IF CC JUMP 0xffa08bee <_exception_report+0x4ce>;
ffa08c02:	4b 2f       	JUMP.S 0xffa08a98 <_exception_report+0x378>;

ffa08c04 <_nmi_report>:
ffa08c04:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa08c08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa08c0c:	00 e1 a4 60 	R0.L = 0x60a4;		/* (24740)	R0=0xff9060a4(-7315292) */
ffa08c10:	00 e3 52 07 	CALL 0xffa09ab4 <_printf_str>;
ffa08c14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9060a4(-7315292) */
ffa08c18:	00 e1 bc 60 	R0.L = 0x60bc;		/* (24764)	R0=0xff9060bc(-7315268) */
ffa08c1c:	00 e3 4c 07 	CALL 0xffa09ab4 <_printf_str>;
ffa08c20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c22:	f0 bb       	[FP -0x4] = R0;
ffa08c24:	06 20       	JUMP.S 0xffa08c30 <_nmi_report+0x2c>;
ffa08c26:	00 00       	NOP;
ffa08c28:	00 00       	NOP;
ffa08c2a:	f0 b9       	R0 = [FP -0x4];
ffa08c2c:	08 64       	R0 += 0x1;		/* (  1) */
ffa08c2e:	f0 bb       	[FP -0x4] = R0;
ffa08c30:	f0 b9       	R0 = [FP -0x4];
ffa08c32:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa08c36:	08 09       	CC = R0 <= R1;
ffa08c38:	f7 1b       	IF CC JUMP 0xffa08c26 <_nmi_report+0x22>;
ffa08c3a:	01 e8 00 00 	UNLINK;
ffa08c3e:	10 00       	RTS;

ffa08c40 <_sample>:
ffa08c40:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa08c44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c46:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa08c4a:	08 20       	JUMP.S 0xffa08c5a <_sample+0x1a>;
ffa08c4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08c50:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa08c54:	50 95       	R0 = W[P2] (X);
ffa08c56:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa08c5a:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa08c5e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa08c60:	00 02       	R0 = CC;
ffa08c62:	00 0c       	CC = R0 == 0x0;
ffa08c64:	f4 1b       	IF CC JUMP 0xffa08c4c <_sample+0xc>;
ffa08c66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa08c6a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08c6e:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08c72:	10 97       	W[P2] = R0;
ffa08c74:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08c78:	0a e1 18 09 	P2.L = 0x918;		/* (2328)	P2=0xffc00918(-4191976) */
ffa08c7c:	50 95       	R0 = W[P2] (X);
ffa08c7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900918 */
ffa08c82:	0a e1 4e 61 	P2.L = 0x614e;		/* (24910)	P2=0xff90614e <_samp1> */
ffa08c86:	10 97       	W[P2] = R0;
ffa08c88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0614e(-4169394) */
ffa08c8c:	0a e1 18 09 	P2.L = 0x918;		/* (2328)	P2=0xffc00918(-4191976) */
ffa08c90:	50 95       	R0 = W[P2] (X);
ffa08c92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900918 */
ffa08c96:	0a e1 52 61 	P2.L = 0x6152;		/* (24914)	P2=0xff906152 <_samp2> */
ffa08c9a:	10 97       	W[P2] = R0;
ffa08c9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906152 <_samp2> */
ffa08ca0:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08ca4:	50 99       	R0 = B[P2] (X);
ffa08ca6:	41 43       	R1 = R0.B (Z);
ffa08ca8:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08caa:	01 54       	R0 = R1 & R0;
ffa08cac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90012b(-7339733) */
ffa08cb0:	01 e1 58 61 	R1.L = 0x6158;		/* (24920)	R1=0xff906158 <_kk>(-7315112) */
ffa08cb4:	08 4f       	R0 <<= 0x1;
ffa08cb6:	08 50       	R0 = R0 + R1;
ffa08cb8:	10 32       	P2 = R0;
ffa08cba:	50 95       	R0 = W[P2] (X);
ffa08cbc:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa08cc0:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa08cc4:	01 30       	R0 = R1;
ffa08cc6:	18 4f       	R0 <<= 0x3;
ffa08cc8:	08 52       	R0 = R0 - R1;
ffa08cca:	08 30       	R1 = R0;
ffa08ccc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08cd0:	0a e1 4e 61 	P2.L = 0x614e;		/* (24910)	P2=0xff90614e <_samp1> */
ffa08cd4:	50 95       	R0 = W[P2] (X);
ffa08cd6:	01 50       	R0 = R1 + R0;
ffa08cd8:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa08cdc:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa08ce0:	18 4e       	R0 >>= 0x3;
ffa08ce2:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa08ce6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614e <_samp1> */
ffa08cea:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08cee:	50 99       	R0 = B[P2] (X);
ffa08cf0:	41 43       	R1 = R0.B (Z);
ffa08cf2:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08cf4:	01 54       	R0 = R1 & R0;
ffa08cf6:	7a e5 fc ff 	R2 = W[FP + -0x8] (X);
ffa08cfa:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff906158 <_kk>(-7315112) */
ffa08cfe:	01 e1 58 61 	R1.L = 0x6158;		/* (24920)	R1=0xff906158 <_kk>(-7315112) */
ffa08d02:	08 4f       	R0 <<= 0x1;
ffa08d04:	08 50       	R0 = R0 + R1;
ffa08d06:	10 32       	P2 = R0;
ffa08d08:	12 97       	W[P2] = R2;
ffa08d0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08d0e:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08d12:	50 99       	R0 = B[P2] (X);
ffa08d14:	41 43       	R1 = R0.B (Z);
ffa08d16:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08d18:	01 54       	R0 = R1 & R0;
ffa08d1a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff906158 <_kk>(-7315112) */
ffa08d1e:	01 e1 9a 61 	R1.L = 0x619a;		/* (24986)	R1=0xff90619a <_jj>(-7315046) */
ffa08d22:	08 4f       	R0 <<= 0x1;
ffa08d24:	08 50       	R0 = R0 + R1;
ffa08d26:	10 32       	P2 = R0;
ffa08d28:	50 95       	R0 = W[P2] (X);
ffa08d2a:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa08d2e:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa08d32:	01 30       	R0 = R1;
ffa08d34:	18 4f       	R0 <<= 0x3;
ffa08d36:	08 52       	R0 = R0 - R1;
ffa08d38:	08 30       	R1 = R0;
ffa08d3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08d3e:	0a e1 52 61 	P2.L = 0x6152;		/* (24914)	P2=0xff906152 <_samp2> */
ffa08d42:	50 95       	R0 = W[P2] (X);
ffa08d44:	01 50       	R0 = R1 + R0;
ffa08d46:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa08d4a:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa08d4e:	18 4e       	R0 >>= 0x3;
ffa08d50:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa08d54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906152 <_samp2> */
ffa08d58:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08d5c:	50 99       	R0 = B[P2] (X);
ffa08d5e:	41 43       	R1 = R0.B (Z);
ffa08d60:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08d62:	01 54       	R0 = R1 & R0;
ffa08d64:	7a e5 fc ff 	R2 = W[FP + -0x8] (X);
ffa08d68:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90619a <_jj>(-7315046) */
ffa08d6c:	01 e1 9a 61 	R1.L = 0x619a;		/* (24986)	R1=0xff90619a <_jj>(-7315046) */
ffa08d70:	08 4f       	R0 <<= 0x1;
ffa08d72:	08 50       	R0 = R0 + R1;
ffa08d74:	10 32       	P2 = R0;
ffa08d76:	12 97       	W[P2] = R2;
ffa08d78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08d7c:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08d80:	50 99       	R0 = B[P2] (X);
ffa08d82:	41 43       	R1 = R0.B (Z);
ffa08d84:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08d86:	01 54       	R0 = R1 & R0;
ffa08d88:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90619a <_jj>(-7315046) */
ffa08d8c:	01 e1 78 61 	R1.L = 0x6178;		/* (24952)	R1=0xff906178 <_thresh_1>(-7315080) */
ffa08d90:	08 4f       	R0 <<= 0x1;
ffa08d92:	08 50       	R0 = R0 + R1;
ffa08d94:	10 32       	P2 = R0;
ffa08d96:	51 95       	R1 = W[P2] (X);
ffa08d98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08d9c:	0a e1 4e 61 	P2.L = 0x614e;		/* (24910)	P2=0xff90614e <_samp1> */
ffa08da0:	50 95       	R0 = W[P2] (X);
ffa08da2:	89 42       	R1 = R1.L (X);
ffa08da4:	80 42       	R0 = R0.L (X);
ffa08da6:	81 08       	CC = R1 < R0;
ffa08da8:	18 10       	IF !CC JUMP 0xffa08dd8 <_sample+0x198>;
ffa08daa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614e <_samp1> */
ffa08dae:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08db2:	50 99       	R0 = B[P2] (X);
ffa08db4:	41 43       	R1 = R0.B (Z);
ffa08db6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08db8:	88 40       	R0 <<= R1;
ffa08dba:	08 30       	R1 = R0;
ffa08dbc:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08dbe:	01 54       	R0 = R1 & R0;
ffa08dc0:	08 30       	R1 = R0;
ffa08dc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08dc6:	0a e1 56 62 	P2.L = 0x6256;		/* (25174)	P2=0xff906256 <_exceeded_1> */
ffa08dca:	50 95       	R0 = W[P2] (X);
ffa08dcc:	01 56       	R0 = R1 | R0;
ffa08dce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906256 <_exceeded_1> */
ffa08dd2:	0a e1 56 62 	P2.L = 0x6256;		/* (25174)	P2=0xff906256 <_exceeded_1> */
ffa08dd6:	10 97       	W[P2] = R0;
ffa08dd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906256 <_exceeded_1> */
ffa08ddc:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08de0:	50 99       	R0 = B[P2] (X);
ffa08de2:	41 43       	R1 = R0.B (Z);
ffa08de4:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08de6:	01 54       	R0 = R1 & R0;
ffa08de8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff906178 <_thresh_1>(-7315080) */
ffa08dec:	01 e1 34 62 	R1.L = 0x6234;		/* (25140)	R1=0xff906234 <_thresh_2>(-7314892) */
ffa08df0:	08 4f       	R0 <<= 0x1;
ffa08df2:	08 50       	R0 = R0 + R1;
ffa08df4:	10 32       	P2 = R0;
ffa08df6:	51 95       	R1 = W[P2] (X);
ffa08df8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08dfc:	0a e1 52 61 	P2.L = 0x6152;		/* (24914)	P2=0xff906152 <_samp2> */
ffa08e00:	50 95       	R0 = W[P2] (X);
ffa08e02:	89 42       	R1 = R1.L (X);
ffa08e04:	80 42       	R0 = R0.L (X);
ffa08e06:	81 08       	CC = R1 < R0;
ffa08e08:	18 10       	IF !CC JUMP 0xffa08e38 <_sample+0x1f8>;
ffa08e0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906152 <_samp2> */
ffa08e0e:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08e12:	50 99       	R0 = B[P2] (X);
ffa08e14:	41 43       	R1 = R0.B (Z);
ffa08e16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08e18:	88 40       	R0 <<= R1;
ffa08e1a:	08 30       	R1 = R0;
ffa08e1c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa08e1e:	01 54       	R0 = R1 & R0;
ffa08e20:	08 30       	R1 = R0;
ffa08e22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08e26:	0a e1 50 61 	P2.L = 0x6150;		/* (24912)	P2=0xff906150 <_exceeded_2> */
ffa08e2a:	50 95       	R0 = W[P2] (X);
ffa08e2c:	01 56       	R0 = R1 | R0;
ffa08e2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906150 <_exceeded_2> */
ffa08e32:	0a e1 50 61 	P2.L = 0x6150;		/* (24912)	P2=0xff906150 <_exceeded_2> */
ffa08e36:	10 97       	W[P2] = R0;
ffa08e38:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc06150(-4169392) */
ffa08e3c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08e40:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08e44:	10 97       	W[P2] = R0;
ffa08e46:	01 e8 00 00 	UNLINK;
ffa08e4a:	10 00       	RTS;

ffa08e4c <_get>:
ffa08e4c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa08e50:	85 21       	JUMP.S 0xffa0915a <_get+0x30e>;
ffa08e52:	ff e3 f7 fe 	CALL 0xffa08c40 <_sample>;
ffa08e56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa08e5a:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08e5e:	51 99       	R1 = B[P2] (X);
ffa08e60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08e64:	0a e1 98 61 	P2.L = 0x6198;		/* (24984)	P2=0xff906198 <_tx_chan> */
ffa08e68:	50 99       	R0 = B[P2] (X);
ffa08e6a:	49 43       	R1 = R1.B (Z);
ffa08e6c:	40 43       	R0 = R0.B (Z);
ffa08e6e:	01 08       	CC = R1 == R0;
ffa08e70:	a0 10       	IF !CC JUMP 0xffa08fb0 <_get+0x164>;
ffa08e72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906198 <_tx_chan> */
ffa08e76:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08e7a:	51 91       	P1 = [P2];
ffa08e7c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08e80:	0a e1 4e 61 	P2.L = 0x614e;		/* (24910)	P2=0xff90614e <_samp1> */
ffa08e84:	50 95       	R0 = W[P2] (X);
ffa08e86:	80 42       	R0 = R0.L (X);
ffa08e88:	20 4d       	R0 >>>= 0x4;
ffa08e8a:	08 9b       	B[P1] = R0;
ffa08e8c:	41 30       	R0 = P1;
ffa08e8e:	08 64       	R0 += 0x1;		/* (  1) */
ffa08e90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614e <_samp1> */
ffa08e94:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08e98:	10 93       	[P2] = R0;
ffa08e9a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08e9e:	0a e1 56 61 	P2.L = 0x6156;		/* (24918)	P2=0xff906156 <_ramp> */
ffa08ea2:	50 95       	R0 = W[P2] (X);
ffa08ea4:	08 64       	R0 += 0x1;		/* (  1) */
ffa08ea6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906156 <_ramp> */
ffa08eaa:	0a e1 56 61 	P2.L = 0x6156;		/* (24918)	P2=0xff906156 <_ramp> */
ffa08eae:	10 97       	W[P2] = R0;
ffa08eb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906156 <_ramp> */
ffa08eb4:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa08eb8:	50 99       	R0 = B[P2] (X);
ffa08eba:	08 64       	R0 += 0x1;		/* (  1) */
ffa08ebc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa08ec0:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa08ec4:	10 9b       	B[P2] = R0;
ffa08ec6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa08eca:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa08ece:	50 99       	R0 = B[P2] (X);
ffa08ed0:	40 43       	R0 = R0.B (Z);
ffa08ed2:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
ffa08ed4:	08 08       	CC = R0 == R1;
ffa08ed6:	6d 10       	IF !CC JUMP 0xffa08fb0 <_get+0x164>;
ffa08ed8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa08edc:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08ee0:	51 91       	P1 = [P2];
ffa08ee2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08ee6:	0a e1 98 61 	P2.L = 0x6198;		/* (24984)	P2=0xff906198 <_tx_chan> */
ffa08eea:	50 99       	R0 = B[P2] (X);
ffa08eec:	18 4f       	R0 <<= 0x3;
ffa08eee:	08 30       	R1 = R0;
ffa08ef0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906198 <_tx_chan> */
ffa08ef4:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa08ef8:	50 99       	R0 = B[P2] (X);
ffa08efa:	01 50       	R0 = R1 + R0;
ffa08efc:	08 9b       	B[P1] = R0;
ffa08efe:	41 30       	R0 = P1;
ffa08f00:	08 64       	R0 += 0x1;		/* (  1) */
ffa08f02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa08f06:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08f0a:	10 93       	[P2] = R0;
ffa08f0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08f10:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08f14:	10 91       	R0 = [P2];
ffa08f16:	f0 bb       	[FP -0x4] = R0;
ffa08f18:	fa b9       	P2 = [FP -0x4];
ffa08f1a:	20 e1 b9 fd 	R0 = -0x247 (X);		/*		R0=0xfffffdb9(-583) */
ffa08f1e:	10 97       	W[P2] = R0;
ffa08f20:	f0 b9       	R0 = [FP -0x4];
ffa08f22:	10 64       	R0 += 0x2;		/* (  2) */
ffa08f24:	f0 bb       	[FP -0x4] = R0;
ffa08f26:	fa b9       	P2 = [FP -0x4];
ffa08f28:	20 e1 31 75 	R0 = 0x7531 (X);		/*		R0=0x7531(30001) */
ffa08f2c:	10 97       	W[P2] = R0;
ffa08f2e:	f0 b9       	R0 = [FP -0x4];
ffa08f30:	10 64       	R0 += 0x2;		/* (  2) */
ffa08f32:	f0 bb       	[FP -0x4] = R0;
ffa08f34:	f0 b9       	R0 = [FP -0x4];
ffa08f36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08f3a:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08f3e:	10 93       	[P2] = R0;
ffa08f40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08f44:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa08f48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f4a:	10 9b       	B[P2] = R0;
ffa08f4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa08f50:	0a e1 56 62 	P2.L = 0x6256;		/* (25174)	P2=0xff906256 <_exceeded_1> */
ffa08f54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f56:	10 97       	W[P2] = R0;
ffa08f58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906256 <_exceeded_1> */
ffa08f5c:	0a e1 50 61 	P2.L = 0x6150;		/* (24912)	P2=0xff906150 <_exceeded_2> */
ffa08f60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f62:	10 97       	W[P2] = R0;
ffa08f64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906150 <_exceeded_2> */
ffa08f68:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa08f6c:	50 99       	R0 = B[P2] (X);
ffa08f6e:	08 64       	R0 += 0x1;		/* (  1) */
ffa08f70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa08f74:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa08f78:	10 9b       	B[P2] = R0;
ffa08f7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa08f7e:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08f82:	10 91       	R0 = [P2];
ffa08f84:	e0 bb       	[FP -0x8] = R0;
ffa08f86:	e0 b9       	R0 = [FP -0x8];
ffa08f88:	40 4d       	R0 >>>= 0x8;
ffa08f8a:	40 4f       	R0 <<= 0x8;
ffa08f8c:	e0 bb       	[FP -0x8] = R0;
ffa08f8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08f92:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa08f96:	50 99       	R0 = B[P2] (X);
ffa08f98:	00 43       	R0 = R0.B (X);
ffa08f9a:	28 4f       	R0 <<= 0x5;
ffa08f9c:	08 30       	R1 = R0;
ffa08f9e:	e0 b9       	R0 = [FP -0x8];
ffa08fa0:	08 50       	R0 = R0 + R1;
ffa08fa2:	e0 bb       	[FP -0x8] = R0;
ffa08fa4:	e0 b9       	R0 = [FP -0x8];
ffa08fa6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa08faa:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08fae:	10 93       	[P2] = R0;
ffa08fb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08fb4:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa08fb8:	50 99       	R0 = B[P2] (X);
ffa08fba:	40 43       	R0 = R0.B (Z);
ffa08fbc:	08 30       	R1 = R0;
ffa08fbe:	81 64       	R1 += 0x10;		/* ( 16) */
ffa08fc0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa08fc4:	0a e1 98 61 	P2.L = 0x6198;		/* (24984)	P2=0xff906198 <_tx_chan> */
ffa08fc8:	50 99       	R0 = B[P2] (X);
ffa08fca:	40 43       	R0 = R0.B (Z);
ffa08fcc:	01 08       	CC = R1 == R0;
ffa08fce:	a0 10       	IF !CC JUMP 0xffa0910e <_get+0x2c2>;
ffa08fd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906198 <_tx_chan> */
ffa08fd4:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08fd8:	51 91       	P1 = [P2];
ffa08fda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08fde:	0a e1 52 61 	P2.L = 0x6152;		/* (24914)	P2=0xff906152 <_samp2> */
ffa08fe2:	50 95       	R0 = W[P2] (X);
ffa08fe4:	80 42       	R0 = R0.L (X);
ffa08fe6:	20 4d       	R0 >>>= 0x4;
ffa08fe8:	08 9b       	B[P1] = R0;
ffa08fea:	41 30       	R0 = P1;
ffa08fec:	08 64       	R0 += 0x1;		/* (  1) */
ffa08fee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906152 <_samp2> */
ffa08ff2:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa08ff6:	10 93       	[P2] = R0;
ffa08ff8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa08ffc:	0a e1 56 61 	P2.L = 0x6156;		/* (24918)	P2=0xff906156 <_ramp> */
ffa09000:	50 95       	R0 = W[P2] (X);
ffa09002:	08 64       	R0 += 0x1;		/* (  1) */
ffa09004:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906156 <_ramp> */
ffa09008:	0a e1 56 61 	P2.L = 0x6156;		/* (24918)	P2=0xff906156 <_ramp> */
ffa0900c:	10 97       	W[P2] = R0;
ffa0900e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906156 <_ramp> */
ffa09012:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa09016:	50 99       	R0 = B[P2] (X);
ffa09018:	08 64       	R0 += 0x1;		/* (  1) */
ffa0901a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa0901e:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa09022:	10 9b       	B[P2] = R0;
ffa09024:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa09028:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa0902c:	50 99       	R0 = B[P2] (X);
ffa0902e:	40 43       	R0 = R0.B (Z);
ffa09030:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
ffa09032:	08 08       	CC = R0 == R1;
ffa09034:	6d 10       	IF !CC JUMP 0xffa0910e <_get+0x2c2>;
ffa09036:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa0903a:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0903e:	51 91       	P1 = [P2];
ffa09040:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09044:	0a e1 98 61 	P2.L = 0x6198;		/* (24984)	P2=0xff906198 <_tx_chan> */
ffa09048:	50 99       	R0 = B[P2] (X);
ffa0904a:	18 4f       	R0 <<= 0x3;
ffa0904c:	08 30       	R1 = R0;
ffa0904e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906198 <_tx_chan> */
ffa09052:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa09056:	50 99       	R0 = B[P2] (X);
ffa09058:	01 50       	R0 = R1 + R0;
ffa0905a:	08 9b       	B[P1] = R0;
ffa0905c:	41 30       	R0 = P1;
ffa0905e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09060:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa09064:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09068:	10 93       	[P2] = R0;
ffa0906a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa0906e:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09072:	10 91       	R0 = [P2];
ffa09074:	f0 bb       	[FP -0x4] = R0;
ffa09076:	fa b9       	P2 = [FP -0x4];
ffa09078:	20 e1 b9 fd 	R0 = -0x247 (X);		/*		R0=0xfffffdb9(-583) */
ffa0907c:	10 97       	W[P2] = R0;
ffa0907e:	f0 b9       	R0 = [FP -0x4];
ffa09080:	10 64       	R0 += 0x2;		/* (  2) */
ffa09082:	f0 bb       	[FP -0x4] = R0;
ffa09084:	fa b9       	P2 = [FP -0x4];
ffa09086:	20 e1 31 75 	R0 = 0x7531 (X);		/*		R0=0x7531(30001) */
ffa0908a:	10 97       	W[P2] = R0;
ffa0908c:	f0 b9       	R0 = [FP -0x4];
ffa0908e:	10 64       	R0 += 0x2;		/* (  2) */
ffa09090:	f0 bb       	[FP -0x4] = R0;
ffa09092:	f0 b9       	R0 = [FP -0x4];
ffa09094:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09098:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0909c:	10 93       	[P2] = R0;
ffa0909e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa090a2:	0a e1 48 61 	P2.L = 0x6148;		/* (24904)	P2=0xff906148 <__bss_start> */
ffa090a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090a8:	10 9b       	B[P2] = R0;
ffa090aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906148 <__bss_start> */
ffa090ae:	0a e1 56 62 	P2.L = 0x6256;		/* (25174)	P2=0xff906256 <_exceeded_1> */
ffa090b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090b4:	10 97       	W[P2] = R0;
ffa090b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906256 <_exceeded_1> */
ffa090ba:	0a e1 50 61 	P2.L = 0x6150;		/* (24912)	P2=0xff906150 <_exceeded_2> */
ffa090be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090c0:	10 97       	W[P2] = R0;
ffa090c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906150 <_exceeded_2> */
ffa090c6:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa090ca:	50 99       	R0 = B[P2] (X);
ffa090cc:	08 64       	R0 += 0x1;		/* (  1) */
ffa090ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa090d2:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa090d6:	10 9b       	B[P2] = R0;
ffa090d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa090dc:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa090e0:	10 91       	R0 = [P2];
ffa090e2:	e0 bb       	[FP -0x8] = R0;
ffa090e4:	e0 b9       	R0 = [FP -0x8];
ffa090e6:	40 4d       	R0 >>>= 0x8;
ffa090e8:	40 4f       	R0 <<= 0x8;
ffa090ea:	e0 bb       	[FP -0x8] = R0;
ffa090ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa090f0:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa090f4:	50 99       	R0 = B[P2] (X);
ffa090f6:	00 43       	R0 = R0.B (X);
ffa090f8:	28 4f       	R0 <<= 0x5;
ffa090fa:	08 30       	R1 = R0;
ffa090fc:	e0 b9       	R0 = [FP -0x8];
ffa090fe:	08 50       	R0 = R0 + R1;
ffa09100:	e0 bb       	[FP -0x8] = R0;
ffa09102:	e0 b9       	R0 = [FP -0x8];
ffa09104:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa09108:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0910c:	10 93       	[P2] = R0;
ffa0910e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09112:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09116:	10 91       	R0 = [P2];
ffa09118:	e0 bb       	[FP -0x8] = R0;
ffa0911a:	e0 b9       	R0 = [FP -0x8];
ffa0911c:	48 4c       	BITCLR (R0, 0x9);		/* bit  9 */
ffa0911e:	e0 bb       	[FP -0x8] = R0;
ffa09120:	e0 b9       	R0 = [FP -0x8];
ffa09122:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09126:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0912a:	10 93       	[P2] = R0;
ffa0912c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09130:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa09134:	50 99       	R0 = B[P2] (X);
ffa09136:	08 64       	R0 += 0x1;		/* (  1) */
ffa09138:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa0913c:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa09140:	10 9b       	B[P2] = R0;
ffa09142:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa09146:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa0914a:	51 99       	R1 = B[P2] (X);
ffa0914c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0914e:	01 54       	R0 = R1 & R0;
ffa09150:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa09154:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa09158:	10 9b       	B[P2] = R0;
ffa0915a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa0915e:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa09162:	50 99       	R0 = B[P2] (X);
ffa09164:	40 43       	R0 = R0.B (Z);
ffa09166:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa09168:	08 0a       	CC = R0 <= R1 (IU);
ffa0916a:	74 1a       	IF CC JUMP 0xffa08e52 <_get+0x6>;
ffa0916c:	ff e3 6a fd 	CALL 0xffa08c40 <_sample>;
ffa09170:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa09174:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa09178:	50 99       	R0 = B[P2] (X);
ffa0917a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0917c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa09180:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa09184:	10 9b       	B[P2] = R0;
ffa09186:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa0918a:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa0918e:	51 99       	R1 = B[P2] (X);
ffa09190:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa09192:	01 54       	R0 = R1 & R0;
ffa09194:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa09198:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa0919c:	10 9b       	B[P2] = R0;
ffa0919e:	01 e8 00 00 	UNLINK;
ffa091a2:	10 00       	RTS;

ffa091a4 <_radio_clearfifos>:
ffa091a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa091a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0614c(-4169396) */
ffa091ac:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa091b0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa091b2:	10 97       	W[P2] = R0;
ffa091b4:	ff e3 4c fe 	CALL 0xffa08e4c <_get>;
ffa091b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa091bc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa091c0:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa091c4:	10 97       	W[P2] = R0;
ffa091c6:	ff e3 43 fe 	CALL 0xffa08e4c <_get>;
ffa091ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa091ce:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa091d2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa091d4:	10 97       	W[P2] = R0;
ffa091d6:	ff e3 3b fe 	CALL 0xffa08e4c <_get>;
ffa091da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa091de:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa091e2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa091e4:	10 97       	W[P2] = R0;
ffa091e6:	ff e3 33 fe 	CALL 0xffa08e4c <_get>;
ffa091ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa091ee:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa091f2:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa091f6:	10 97       	W[P2] = R0;
ffa091f8:	ff e3 2a fe 	CALL 0xffa08e4c <_get>;
ffa091fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09200:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09204:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09206:	10 97       	W[P2] = R0;
ffa09208:	ff e3 22 fe 	CALL 0xffa08e4c <_get>;
ffa0920c:	01 e8 00 00 	UNLINK;
ffa09210:	10 00       	RTS;
	...

ffa09214 <_radio_clearirq>:
ffa09214:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09218:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0921c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09220:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09222:	10 97       	W[P2] = R0;
ffa09224:	ff e3 14 fe 	CALL 0xffa08e4c <_get>;
ffa09228:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0922c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09230:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa09232:	10 97       	W[P2] = R0;
ffa09234:	ff e3 0c fe 	CALL 0xffa08e4c <_get>;
ffa09238:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0923c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09240:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09244:	10 97       	W[P2] = R0;
ffa09246:	ff e3 03 fe 	CALL 0xffa08e4c <_get>;
ffa0924a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0924e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09252:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09254:	10 97       	W[P2] = R0;
ffa09256:	ff e3 fb fd 	CALL 0xffa08e4c <_get>;
ffa0925a:	01 e8 00 00 	UNLINK;
ffa0925e:	10 00       	RTS;

ffa09260 <_radio_waitirq>:
ffa09260:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09264:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09268:	f0 bb       	[FP -0x4] = R0;
ffa0926a:	06 20       	JUMP.S 0xffa09276 <_radio_waitirq+0x16>;
ffa0926c:	ff e3 f0 fd 	CALL 0xffa08e4c <_get>;
ffa09270:	f0 b9       	R0 = [FP -0x4];
ffa09272:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa09274:	f0 bb       	[FP -0x4] = R0;
ffa09276:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0927a:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0927e:	50 95       	R0 = W[P2] (X);
ffa09280:	c1 42       	R1 = R0.L (Z);
ffa09282:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09284:	01 54       	R0 = R1 & R0;
ffa09286:	00 0c       	CC = R0 == 0x0;
ffa09288:	04 18       	IF CC JUMP 0xffa09290 <_radio_waitirq+0x30>;
ffa0928a:	f0 b9       	R0 = [FP -0x4];
ffa0928c:	00 0d       	CC = R0 <= 0x0;
ffa0928e:	ef 13       	IF !CC JUMP 0xffa0926c <_radio_waitirq+0xc>;
ffa09290:	01 e8 00 00 	UNLINK;
ffa09294:	10 00       	RTS;
	...

ffa09298 <_radio_tst_bidi>:
ffa09298:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa0929c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900700 */
ffa092a0:	0a e1 4c 61 	P2.L = 0x614c;		/* (24908)	P2=0xff90614c <_chan> */
ffa092a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092a6:	10 9b       	B[P2] = R0;
ffa092a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90614c <_chan> */
ffa092ac:	0a e1 98 61 	P2.L = 0x6198;		/* (24984)	P2=0xff906198 <_tx_chan> */
ffa092b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092b2:	10 9b       	B[P2] = R0;
ffa092b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906198 <_tx_chan> */
ffa092b8:	0a e1 56 61 	P2.L = 0x6156;		/* (24918)	P2=0xff906156 <_ramp> */
ffa092bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092be:	10 97       	W[P2] = R0;
ffa092c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906156 <_ramp> */
ffa092c4:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa092c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092ca:	10 9b       	B[P2] = R0;
ffa092cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa092d0:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa092d4:	20 e1 01 fe 	R0 = -0x1ff (X);		/*		R0=0xfffffe01(-511) */
ffa092d8:	70 4f       	R0 <<= 0xe;
ffa092da:	10 93       	[P2] = R0;
ffa092dc:	ff e3 64 ff 	CALL 0xffa091a4 <_radio_clearfifos>;
ffa092e0:	ff e3 9a ff 	CALL 0xffa09214 <_radio_clearirq>;
ffa092e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092e6:	a0 bb       	[FP -0x18] = R0;
ffa092e8:	70 20       	JUMP.S 0xffa093c8 <_radio_tst_bidi+0x130>;
ffa092ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092ec:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa092f0:	1c 20       	JUMP.S 0xffa09328 <_radio_tst_bidi+0x90>;
ffa092f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa092f6:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa092fa:	52 91       	P2 = [P2];
ffa092fc:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa09300:	08 30       	R1 = R0;
ffa09302:	a0 b9       	R0 = [FP -0x18];
ffa09304:	28 4f       	R0 <<= 0x5;
ffa09306:	01 50       	R0 = R1 + R0;
ffa09308:	08 30       	R1 = R0;
ffa0930a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0930c:	01 54       	R0 = R1 & R0;
ffa0930e:	10 9b       	B[P2] = R0;
ffa09310:	42 30       	R0 = P2;
ffa09312:	08 64       	R0 += 0x1;		/* (  1) */
ffa09314:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09318:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0931c:	10 93       	[P2] = R0;
ffa0931e:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa09322:	08 64       	R0 += 0x1;		/* (  1) */
ffa09324:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09328:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa0932c:	d1 60       	R1 = 0x1a (X);		/*		R1=0x1a( 26) */
ffa0932e:	08 0a       	CC = R0 <= R1 (IU);
ffa09330:	e1 1b       	IF CC JUMP 0xffa092f2 <_radio_tst_bidi+0x5a>;
ffa09332:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09336:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0933a:	52 91       	P2 = [P2];
ffa0933c:	a0 b9       	R0 = [FP -0x18];
ffa0933e:	10 9b       	B[P2] = R0;
ffa09340:	42 30       	R0 = P2;
ffa09342:	08 64       	R0 += 0x1;		/* (  1) */
ffa09344:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09348:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0934c:	10 93       	[P2] = R0;
ffa0934e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09352:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09356:	52 91       	P2 = [P2];
ffa09358:	20 e1 a5 ff 	R0 = -0x5b (X);		/*		R0=0xffffffa5(-91) */
ffa0935c:	10 9b       	B[P2] = R0;
ffa0935e:	42 30       	R0 = P2;
ffa09360:	08 64       	R0 += 0x1;		/* (  1) */
ffa09362:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09366:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa0936a:	10 93       	[P2] = R0;
ffa0936c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09370:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09374:	52 91       	P2 = [P2];
ffa09376:	20 e1 b4 ff 	R0 = -0x4c (X);		/*		R0=0xffffffb4(-76) */
ffa0937a:	10 9b       	B[P2] = R0;
ffa0937c:	42 30       	R0 = P2;
ffa0937e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09380:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa09384:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09388:	10 93       	[P2] = R0;
ffa0938a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa0938e:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa09392:	52 91       	P2 = [P2];
ffa09394:	18 62       	R0 = -0x3d (X);		/*		R0=0xffffffc3(-61) */
ffa09396:	10 9b       	B[P2] = R0;
ffa09398:	42 30       	R0 = P2;
ffa0939a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0939c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa093a0:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa093a4:	10 93       	[P2] = R0;
ffa093a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa093aa:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa093ae:	52 91       	P2 = [P2];
ffa093b0:	90 62       	R0 = -0x2e (X);		/*		R0=0xffffffd2(-46) */
ffa093b2:	10 9b       	B[P2] = R0;
ffa093b4:	42 30       	R0 = P2;
ffa093b6:	08 64       	R0 += 0x1;		/* (  1) */
ffa093b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa093bc:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa093c0:	10 93       	[P2] = R0;
ffa093c2:	a0 b9       	R0 = [FP -0x18];
ffa093c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa093c6:	a0 bb       	[FP -0x18] = R0;
ffa093c8:	a0 b9       	R0 = [FP -0x18];
ffa093ca:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa093cc:	08 09       	CC = R0 <= R1;
ffa093ce:	8e 1b       	IF CC JUMP 0xffa092ea <_radio_tst_bidi+0x52>;
ffa093d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa093d4:	0a e1 40 61 	P2.L = 0x6140;		/* (24896)	P2=0xff906140 <_txbuf> */
ffa093d8:	20 e1 01 fe 	R0 = -0x1ff (X);		/*		R0=0xfffffe01(-511) */
ffa093dc:	70 4f       	R0 <<= 0xe;
ffa093de:	10 93       	[P2] = R0;
ffa093e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906140 <_txbuf> */
ffa093e4:	0a e1 44 61 	P2.L = 0x6144;		/* (24900)	P2=0xff906144 <_rbuf> */
ffa093e8:	20 e1 01 fe 	R0 = -0x1ff (X);		/*		R0=0xfffffe01(-511) */
ffa093ec:	70 4f       	R0 <<= 0xe;
ffa093ee:	10 93       	[P2] = R0;
ffa093f0:	03 20       	JUMP.S 0xffa093f6 <_radio_tst_bidi+0x15e>;
ffa093f2:	ff e3 2d fd 	CALL 0xffa08e4c <_get>;
ffa093f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906144 <_rbuf> */
ffa093fa:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa093fe:	50 99       	R0 = B[P2] (X);
ffa09400:	00 43       	R0 = R0.B (X);
ffa09402:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09404:	08 09       	CC = R0 <= R1;
ffa09406:	f6 1b       	IF CC JUMP 0xffa093f2 <_radio_tst_bidi+0x15a>;
ffa09408:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906199 <_qpackets> */
ffa0940c:	0a e1 99 61 	P2.L = 0x6199;		/* (24985)	P2=0xff906199 <_qpackets> */
ffa09410:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09412:	10 9b       	B[P2] = R0;
ffa09414:	ff e3 c8 fe 	CALL 0xffa091a4 <_radio_clearfifos>;
ffa09418:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0941a:	a0 bb       	[FP -0x18] = R0;
ffa0941c:	4e 20       	JUMP.S 0xffa094b8 <_radio_tst_bidi+0x220>;
ffa0941e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc06199(-4169319) */
ffa09422:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09426:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09428:	10 97       	W[P2] = R0;
ffa0942a:	ff e3 11 fd 	CALL 0xffa08e4c <_get>;
ffa0942e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09432:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09436:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0943a:	10 97       	W[P2] = R0;
ffa0943c:	ff e3 08 fd 	CALL 0xffa08e4c <_get>;
ffa09440:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09442:	b0 bb       	[FP -0x14] = R0;
ffa09444:	24 20       	JUMP.S 0xffa0948c <_radio_tst_bidi+0x1f4>;
ffa09446:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa0944a:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0944e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90050c */
ffa09452:	0a e1 44 61 	P2.L = 0x6144;		/* (24900)	P2=0xff906144 <_rbuf> */
ffa09456:	52 91       	P2 = [P2];
ffa09458:	50 99       	R0 = B[P2] (X);
ffa0945a:	40 43       	R0 = R0.B (Z);
ffa0945c:	08 97       	W[P1] = R0;
ffa0945e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906144 <_rbuf> */
ffa09462:	0a e1 44 61 	P2.L = 0x6144;		/* (24900)	P2=0xff906144 <_rbuf> */
ffa09466:	10 91       	R0 = [P2];
ffa09468:	d0 bb       	[FP -0xc] = R0;
ffa0946a:	d0 b9       	R0 = [FP -0xc];
ffa0946c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0946e:	d0 bb       	[FP -0xc] = R0;
ffa09470:	d0 b9       	R0 = [FP -0xc];
ffa09472:	48 4c       	BITCLR (R0, 0x9);		/* bit  9 */
ffa09474:	d0 bb       	[FP -0xc] = R0;
ffa09476:	d0 b9       	R0 = [FP -0xc];
ffa09478:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906144 <_rbuf> */
ffa0947c:	0a e1 44 61 	P2.L = 0x6144;		/* (24900)	P2=0xff906144 <_rbuf> */
ffa09480:	10 93       	[P2] = R0;
ffa09482:	ff e3 e5 fc 	CALL 0xffa08e4c <_get>;
ffa09486:	b0 b9       	R0 = [FP -0x14];
ffa09488:	08 64       	R0 += 0x1;		/* (  1) */
ffa0948a:	b0 bb       	[FP -0x14] = R0;
ffa0948c:	b0 b9       	R0 = [FP -0x14];
ffa0948e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa09490:	08 09       	CC = R0 <= R1;
ffa09492:	da 1b       	IF CC JUMP 0xffa09446 <_radio_tst_bidi+0x1ae>;
ffa09494:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc06144(-4169404) */
ffa09498:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0949c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0949e:	10 97       	W[P2] = R0;
ffa094a0:	ff e3 d6 fc 	CALL 0xffa08e4c <_get>;
ffa094a4:	a0 b9       	R0 = [FP -0x18];
ffa094a6:	00 0d       	CC = R0 <= 0x0;
ffa094a8:	05 18       	IF CC JUMP 0xffa094b2 <_radio_tst_bidi+0x21a>;
ffa094aa:	ff e3 db fe 	CALL 0xffa09260 <_radio_waitirq>;
ffa094ae:	ff e3 b3 fe 	CALL 0xffa09214 <_radio_clearirq>;
ffa094b2:	a0 b9       	R0 = [FP -0x18];
ffa094b4:	08 64       	R0 += 0x1;		/* (  1) */
ffa094b6:	a0 bb       	[FP -0x18] = R0;
ffa094b8:	a0 b9       	R0 = [FP -0x18];
ffa094ba:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa094bc:	08 09       	CC = R0 <= R1;
ffa094be:	b0 1b       	IF CC JUMP 0xffa0941e <_radio_tst_bidi+0x186>;
ffa094c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa094c4:	0a e1 44 61 	P2.L = 0x6144;		/* (24900)	P2=0xff906144 <_rbuf> */
ffa094c8:	10 91       	R0 = [P2];
ffa094ca:	d0 bb       	[FP -0xc] = R0;
ffa094cc:	d0 b9       	R0 = [FP -0xc];
ffa094ce:	40 4d       	R0 >>>= 0x8;
ffa094d0:	40 4f       	R0 <<= 0x8;
ffa094d2:	d0 bb       	[FP -0xc] = R0;
ffa094d4:	d0 b9       	R0 = [FP -0xc];
ffa094d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906144 <_rbuf> */
ffa094da:	0a e1 44 61 	P2.L = 0x6144;		/* (24900)	P2=0xff906144 <_rbuf> */
ffa094de:	10 93       	[P2] = R0;
ffa094e0:	ff e3 c0 fe 	CALL 0xffa09260 <_radio_waitirq>;
ffa094e4:	ff e3 98 fe 	CALL 0xffa09214 <_radio_clearirq>;
ffa094e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc06144(-4169404) */
ffa094ec:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa094f0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094f2:	10 97       	W[P2] = R0;
ffa094f4:	ff e3 ac fc 	CALL 0xffa08e4c <_get>;
ffa094f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa094fc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09500:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09502:	10 97       	W[P2] = R0;
ffa09504:	ff e3 a4 fc 	CALL 0xffa08e4c <_get>;
ffa09508:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0950c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09510:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa09514:	10 97       	W[P2] = R0;
ffa09516:	ff e3 9b fc 	CALL 0xffa08e4c <_get>;
ffa0951a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0951e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09522:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09524:	10 97       	W[P2] = R0;
ffa09526:	ff e3 93 fc 	CALL 0xffa08e4c <_get>;
ffa0952a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0952e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09532:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09534:	10 97       	W[P2] = R0;
ffa09536:	ff e3 8b fc 	CALL 0xffa08e4c <_get>;
ffa0953a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0953e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09542:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09544:	10 97       	W[P2] = R0;
ffa09546:	ff e3 83 fc 	CALL 0xffa08e4c <_get>;
ffa0954a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0954e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09552:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09554:	10 97       	W[P2] = R0;
ffa09556:	ff e3 7b fc 	CALL 0xffa08e4c <_get>;
ffa0955a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0955e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09562:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09564:	10 97       	W[P2] = R0;
ffa09566:	ff e3 73 fc 	CALL 0xffa08e4c <_get>;
ffa0956a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0956e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09572:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09574:	10 97       	W[P2] = R0;
ffa09576:	ff e3 6b fc 	CALL 0xffa08e4c <_get>;
ffa0957a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0957c:	a0 bb       	[FP -0x18] = R0;
ffa0957e:	13 20       	JUMP.S 0xffa095a4 <_radio_tst_bidi+0x30c>;
ffa09580:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09584:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09588:	50 95       	R0 = W[P2] (X);
ffa0958a:	c1 42       	R1 = R0.L (Z);
ffa0958c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0958e:	01 54       	R0 = R1 & R0;
ffa09590:	00 0c       	CC = R0 == 0x0;
ffa09592:	04 10       	IF !CC JUMP 0xffa0959a <_radio_tst_bidi+0x302>;
ffa09594:	20 e1 fe 00 	R0 = 0xfe (X);		/*		R0=0xfe(254) */
ffa09598:	a0 bb       	[FP -0x18] = R0;
ffa0959a:	a0 b9       	R0 = [FP -0x18];
ffa0959c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0959e:	a0 bb       	[FP -0x18] = R0;
ffa095a0:	ff e3 56 fc 	CALL 0xffa08e4c <_get>;
ffa095a4:	a0 b9       	R0 = [FP -0x18];
ffa095a6:	21 e1 f9 00 	R1 = 0xf9 (X);		/*		R1=0xf9(249) */
ffa095aa:	08 09       	CC = R0 <= R1;
ffa095ac:	ea 1b       	IF CC JUMP 0xffa09580 <_radio_tst_bidi+0x2e8>;
ffa095ae:	a0 b9       	R0 = [FP -0x18];
ffa095b0:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa095b4:	08 08       	CC = R0 == R1;
ffa095b6:	0d 11       	IF !CC JUMP 0xffa097d0 <_radio_tst_bidi+0x538>;
ffa095b8:	ff e3 2e fe 	CALL 0xffa09214 <_radio_clearirq>;
ffa095bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa095c0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa095c4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa095c6:	10 97       	W[P2] = R0;
ffa095c8:	ff e3 42 fc 	CALL 0xffa08e4c <_get>;
ffa095cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa095d0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa095d4:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa095d8:	10 97       	W[P2] = R0;
ffa095da:	ff e3 39 fc 	CALL 0xffa08e4c <_get>;
ffa095de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095e0:	b0 bb       	[FP -0x14] = R0;
ffa095e2:	ec 20       	JUMP.S 0xffa097ba <_radio_tst_bidi+0x522>;
ffa095e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095e6:	e0 bb       	[FP -0x8] = R0;
ffa095e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095ea:	f0 bb       	[FP -0x4] = R0;
ffa095ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa095f0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa095f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095f6:	10 97       	W[P2] = R0;
ffa095f8:	ff e3 2a fc 	CALL 0xffa08e4c <_get>;
ffa095fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09600:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09604:	50 95       	R0 = W[P2] (X);
ffa09606:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa0960a:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa0960e:	40 43       	R0 = R0.B (Z);
ffa09610:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09614:	79 e4 f8 ff 	R1 = W[FP + -0x10] (Z);
ffa09618:	e0 b9       	R0 = [FP -0x8];
ffa0961a:	08 50       	R0 = R0 + R1;
ffa0961c:	e0 bb       	[FP -0x8] = R0;
ffa0961e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09622:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09626:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09628:	10 97       	W[P2] = R0;
ffa0962a:	ff e3 11 fc 	CALL 0xffa08e4c <_get>;
ffa0962e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09632:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09636:	50 95       	R0 = W[P2] (X);
ffa09638:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa0963c:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa09640:	40 43       	R0 = R0.B (Z);
ffa09642:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09646:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa0964a:	40 4f       	R0 <<= 0x8;
ffa0964c:	08 30       	R1 = R0;
ffa0964e:	e0 b9       	R0 = [FP -0x8];
ffa09650:	08 50       	R0 = R0 + R1;
ffa09652:	e0 bb       	[FP -0x8] = R0;
ffa09654:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09658:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0965c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0965e:	10 97       	W[P2] = R0;
ffa09660:	ff e3 f6 fb 	CALL 0xffa08e4c <_get>;
ffa09664:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09668:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0966c:	50 95       	R0 = W[P2] (X);
ffa0966e:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09672:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa09676:	40 43       	R0 = R0.B (Z);
ffa09678:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa0967c:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa09680:	80 4f       	R0 <<= 0x10;
ffa09682:	08 30       	R1 = R0;
ffa09684:	e0 b9       	R0 = [FP -0x8];
ffa09686:	08 50       	R0 = R0 + R1;
ffa09688:	e0 bb       	[FP -0x8] = R0;
ffa0968a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0968e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09692:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09694:	10 97       	W[P2] = R0;
ffa09696:	ff e3 db fb 	CALL 0xffa08e4c <_get>;
ffa0969a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0969e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa096a2:	50 95       	R0 = W[P2] (X);
ffa096a4:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa096a8:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa096ac:	40 43       	R0 = R0.B (Z);
ffa096ae:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa096b2:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa096b6:	c0 4f       	R0 <<= 0x18;
ffa096b8:	08 30       	R1 = R0;
ffa096ba:	e0 b9       	R0 = [FP -0x8];
ffa096bc:	08 50       	R0 = R0 + R1;
ffa096be:	e0 bb       	[FP -0x8] = R0;
ffa096c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa096c4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa096c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096ca:	10 97       	W[P2] = R0;
ffa096cc:	ff e3 c0 fb 	CALL 0xffa08e4c <_get>;
ffa096d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa096d4:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa096d8:	50 95       	R0 = W[P2] (X);
ffa096da:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa096de:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa096e2:	40 43       	R0 = R0.B (Z);
ffa096e4:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa096e8:	79 e4 f8 ff 	R1 = W[FP + -0x10] (Z);
ffa096ec:	f0 b9       	R0 = [FP -0x4];
ffa096ee:	08 50       	R0 = R0 + R1;
ffa096f0:	f0 bb       	[FP -0x4] = R0;
ffa096f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa096f6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa096fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096fc:	10 97       	W[P2] = R0;
ffa096fe:	ff e3 a7 fb 	CALL 0xffa08e4c <_get>;
ffa09702:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09706:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0970a:	50 95       	R0 = W[P2] (X);
ffa0970c:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09710:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa09714:	40 43       	R0 = R0.B (Z);
ffa09716:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa0971a:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa0971e:	40 4f       	R0 <<= 0x8;
ffa09720:	08 30       	R1 = R0;
ffa09722:	f0 b9       	R0 = [FP -0x4];
ffa09724:	08 50       	R0 = R0 + R1;
ffa09726:	f0 bb       	[FP -0x4] = R0;
ffa09728:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0972c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09730:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09732:	10 97       	W[P2] = R0;
ffa09734:	ff e3 8c fb 	CALL 0xffa08e4c <_get>;
ffa09738:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0973c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09740:	50 95       	R0 = W[P2] (X);
ffa09742:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09746:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa0974a:	40 43       	R0 = R0.B (Z);
ffa0974c:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09750:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa09754:	80 4f       	R0 <<= 0x10;
ffa09756:	08 30       	R1 = R0;
ffa09758:	f0 b9       	R0 = [FP -0x4];
ffa0975a:	08 50       	R0 = R0 + R1;
ffa0975c:	f0 bb       	[FP -0x4] = R0;
ffa0975e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09762:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09766:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09768:	10 97       	W[P2] = R0;
ffa0976a:	ff e3 71 fb 	CALL 0xffa08e4c <_get>;
ffa0976e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09772:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09776:	50 95       	R0 = W[P2] (X);
ffa09778:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa0977c:	78 e5 f8 ff 	R0 = W[FP + -0x10] (X);
ffa09780:	40 43       	R0 = R0.B (Z);
ffa09782:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa09786:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa0978a:	c0 4f       	R0 <<= 0x18;
ffa0978c:	08 30       	R1 = R0;
ffa0978e:	f0 b9       	R0 = [FP -0x4];
ffa09790:	08 50       	R0 = R0 + R1;
ffa09792:	f0 bb       	[FP -0x4] = R0;
ffa09794:	e1 b9       	R1 = [FP -0x8];
ffa09796:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09798:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff0003(-65533) */
ffa0979c:	41 54       	R1 = R1 & R0;
ffa0979e:	20 e1 41 fe 	R0 = -0x1bf (X);		/*		R0=0xfffffe41(-447) */
ffa097a2:	70 4f       	R0 <<= 0xe;
ffa097a4:	01 58       	R0 = R1 ^ R0;
ffa097a6:	00 0c       	CC = R0 == 0x0;
ffa097a8:	04 10       	IF !CC JUMP 0xffa097b0 <_radio_tst_bidi+0x518>;
ffa097aa:	ea b9       	P2 = [FP -0x8];
ffa097ac:	f0 b9       	R0 = [FP -0x4];
ffa097ae:	10 93       	[P2] = R0;
ffa097b0:	ff e3 4e fb 	CALL 0xffa08e4c <_get>;
ffa097b4:	b0 b9       	R0 = [FP -0x14];
ffa097b6:	08 64       	R0 += 0x1;		/* (  1) */
ffa097b8:	b0 bb       	[FP -0x14] = R0;
ffa097ba:	b0 b9       	R0 = [FP -0x14];
ffa097bc:	18 0d       	CC = R0 <= 0x3;
ffa097be:	13 1b       	IF CC JUMP 0xffa095e4 <_radio_tst_bidi+0x34c>;
ffa097c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa097c4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa097c8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa097ca:	10 97       	W[P2] = R0;
ffa097cc:	ff e3 40 fb 	CALL 0xffa08e4c <_get>;
ffa097d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa097d4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa097d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa097da:	10 97       	W[P2] = R0;
ffa097dc:	ff e3 38 fb 	CALL 0xffa08e4c <_get>;
ffa097e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa097e4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa097e8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa097ea:	10 97       	W[P2] = R0;
ffa097ec:	ff e3 30 fb 	CALL 0xffa08e4c <_get>;
ffa097f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa097f4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa097f8:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa097fc:	10 97       	W[P2] = R0;
ffa097fe:	ff e3 27 fb 	CALL 0xffa08e4c <_get>;
ffa09802:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09806:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0980a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0980c:	10 97       	W[P2] = R0;
ffa0980e:	ff e3 1f fb 	CALL 0xffa08e4c <_get>;
ffa09812:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09816:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0981a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0981c:	10 97       	W[P2] = R0;
ffa0981e:	ff e3 17 fb 	CALL 0xffa08e4c <_get>;
ffa09822:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09826:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0982a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0982c:	10 97       	W[P2] = R0;
ffa0982e:	ff e3 0f fb 	CALL 0xffa08e4c <_get>;
ffa09832:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09836:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0983a:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0983c:	10 97       	W[P2] = R0;
ffa0983e:	ff e3 07 fb 	CALL 0xffa08e4c <_get>;
ffa09842:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09846:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0984a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0984c:	10 97       	W[P2] = R0;
ffa0984e:	ff e3 ff fa 	CALL 0xffa08e4c <_get>;
ffa09852:	d2 2d       	JUMP.S 0xffa093f6 <_radio_tst_bidi+0x15e>;

ffa09854 <_main>:
ffa09854:	00 e8 15 00 	LINK 0x54;		/* (84) */
ffa09858:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00708(-2095352) */
ffa0985c:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09860:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09862:	10 93       	[P2] = R0;
ffa09864:	23 00       	CSYNC;
ffa09866:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa0986a:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa0986e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09870:	10 93       	[P2] = R0;
ffa09872:	23 00       	CSYNC;
ffa09874:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09878:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0987c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0987e:	10 97       	W[P2] = R0;
ffa09880:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa09884:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa09888:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0988c:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa09890:	51 95       	R1 = W[P2] (X);
ffa09892:	20 e1 e7 01 	R0 = 0x1e7 (X);		/*		R0=0x1e7(487) */
ffa09896:	01 56       	R0 = R1 | R0;
ffa09898:	08 97       	W[P1] = R0;
ffa0989a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0989e:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa098a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098a4:	10 97       	W[P2] = R0;
ffa098a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa098aa:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xffc00808(-4192248) */
ffa098ae:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa098b0:	10 97       	W[P2] = R0;
ffa098b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00808(-4192248) */
ffa098b6:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xffc0080c(-4192244) */
ffa098ba:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa098bc:	10 97       	W[P2] = R0;
ffa098be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0080c(-4192244) */
ffa098c2:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xffc00804(-4192252) */
ffa098c6:	20 e1 0f 02 	R0 = 0x20f (X);		/*		R0=0x20f(527) */
ffa098ca:	10 97       	W[P2] = R0;
ffa098cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00804(-4192252) */
ffa098d0:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa098d4:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa098d6:	10 97       	W[P2] = R0;
ffa098d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00908(-4191992) */
ffa098dc:	0a e1 0c 09 	P2.L = 0x90c;		/* (2316)	P2=0xffc0090c(-4191988) */
ffa098e0:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa098e2:	10 97       	W[P2] = R0;
ffa098e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0090c(-4191988) */
ffa098e8:	0a e1 04 09 	P2.L = 0x904;		/* (2308)	P2=0xffc00904(-4191996) */
ffa098ec:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa098ee:	10 97       	W[P2] = R0;
ffa098f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00904(-4191996) */
ffa098f4:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa098f8:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa098fa:	10 97       	W[P2] = R0;
ffa098fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09900:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09904:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa09906:	10 97       	W[P2] = R0;
ffa09908:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa0990c:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09910:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09912:	10 97       	W[P2] = R0;
ffa09914:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa09918:	0a e1 00 09 	P2.L = 0x900;		/* (2304)	P2=0xffc00900(-4192000) */
ffa0991c:	20 e1 03 0e 	R0 = 0xe03 (X);		/*		R0=0xe03(3587) */
ffa09920:	10 97       	W[P2] = R0;
ffa09922:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00900(-4192000) */
ffa09926:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xffc00800(-4192256) */
ffa0992a:	20 e1 03 66 	R0 = 0x6603 (X);		/*		R0=0x6603(26115) */
ffa0992e:	10 97       	W[P2] = R0;
ffa09930:	24 00       	SSYNC;
ffa09932:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa09936:	0a e1 20 08 	P2.L = 0x820;		/* (2080)	P2=0xffc00820(-4192224) */
ffa0993a:	20 e1 03 54 	R0 = 0x5403 (X);		/*		R0=0x5403(21507) */
ffa0993e:	10 97       	W[P2] = R0;
ffa09940:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09942:	78 e6 e6 ff 	W[FP + -0x34] = R0;
ffa09946:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09948:	78 e6 e8 ff 	W[FP + -0x30] = R0;
ffa0994c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0994e:	78 e6 ea ff 	W[FP + -0x2c] = R0;
ffa09952:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09954:	b8 e6 d7 ff 	B[FP + -0x29] = R0;
ffa09958:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0995c:	60 bb       	[FP -0x28] = R0;
ffa0995e:	05 20       	JUMP.S 0xffa09968 <_main+0x114>;
	...
ffa09968:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00820(-4192224) */
ffa0996c:	0a e1 30 08 	P2.L = 0x830;		/* (2096)	P2=0xffc00830(-4192208) */
ffa09970:	50 95       	R0 = W[P2] (X);
ffa09972:	c1 42       	R1 = R0.L (Z);
ffa09974:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09976:	01 54       	R0 = R1 & R0;
ffa09978:	00 0c       	CC = R0 == 0x0;
ffa0997a:	f3 13       	IF !CC JUMP 0xffa09960 <_main+0x10c>;
ffa0997c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00830(-4192208) */
ffa09980:	0a e1 10 08 	P2.L = 0x810;		/* (2064)	P2=0xffc00810(-4192240) */
ffa09984:	20 e1 04 f0 	R0 = -0xffc (X);		/*		R0=0xfffff004(-4092) */
ffa09988:	10 97       	W[P2] = R0;
ffa0998a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00810(-4192240) */
ffa0998e:	0a e1 30 08 	P2.L = 0x830;		/* (2096)	P2=0xffc00830(-4192208) */
ffa09992:	50 95       	R0 = W[P2] (X);
ffa09994:	78 e6 e6 ff 	W[FP + -0x34] = R0;
ffa09998:	78 e4 e6 ff 	R0 = W[FP + -0x34] (Z);
ffa0999c:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0999e:	00 02       	R0 = CC;
ffa099a0:	40 43       	R0 = R0.B (Z);
ffa099a2:	00 0c       	CC = R0 == 0x0;
ffa099a4:	0e 18       	IF CC JUMP 0xffa099c0 <_main+0x16c>;
ffa099a6:	00 00       	NOP;
ffa099a8:	00 00       	NOP;
ffa099aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00830(-4192208) */
ffa099ae:	0a e1 18 08 	P2.L = 0x818;		/* (2072)	P2=0xffc00818(-4192232) */
ffa099b2:	50 95       	R0 = W[P2] (X);
ffa099b4:	78 e6 e6 ff 	W[FP + -0x34] = R0;
ffa099b8:	78 e5 e6 ff 	R0 = W[FP + -0x34] (X);
ffa099bc:	78 e6 e8 ff 	W[FP + -0x30] = R0;
ffa099c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00818(-4192232) */
ffa099c4:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa099c8:	50 95       	R0 = W[P2] (X);
ffa099ca:	c1 42       	R1 = R0.L (Z);
ffa099cc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa099ce:	01 54       	R0 = R1 & R0;
ffa099d0:	00 0c       	CC = R0 == 0x0;
ffa099d2:	cb 13       	IF !CC JUMP 0xffa09968 <_main+0x114>;
ffa099d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa099d8:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa099dc:	79 e4 e8 ff 	R1 = W[FP + -0x30] (Z);
ffa099e0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa099e2:	98 4f       	R0 <<= 0x13;
ffa099e4:	01 56       	R0 = R1 | R0;
ffa099e6:	10 93       	[P2] = R0;
ffa099e8:	c0 2f       	JUMP.S 0xffa09968 <_main+0x114>;
	...

ffa099ec <_uart_str>:
ffa099ec:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa099f0:	b8 b0       	[FP + 0x8] = R0;
ffa099f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099f4:	e0 bb       	[FP -0x8] = R0;
ffa099f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00910(-4191984) */
ffa099fa:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa099fe:	50 95       	R0 = W[P2] (X);
ffa09a00:	c0 42       	R0 = R0.L (Z);
ffa09a02:	08 0c       	CC = R0 == 0x1;
ffa09a04:	53 10       	IF !CC JUMP 0xffa09aaa <_uart_str+0xbe>;
ffa09a06:	48 20       	JUMP.S 0xffa09a96 <_uart_str+0xaa>;
ffa09a08:	ba ac       	P2 = [FP + 0x8];
ffa09a0a:	50 99       	R0 = B[P2] (X);
ffa09a0c:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa09a10:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa09a14:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09a16:	08 08       	CC = R0 == R1;
ffa09a18:	26 10       	IF !CC JUMP 0xffa09a64 <_uart_str+0x78>;
ffa09a1a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa09a1e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa09a22:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09a24:	10 97       	W[P2] = R0;
ffa09a26:	02 20       	JUMP.S 0xffa09a2a <_uart_str+0x3e>;
ffa09a28:	00 00       	NOP;
ffa09a2a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa09a2e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa09a32:	50 95       	R0 = W[P2] (X);
ffa09a34:	c1 42       	R1 = R0.L (Z);
ffa09a36:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09a38:	01 54       	R0 = R1 & R0;
ffa09a3a:	00 0c       	CC = R0 == 0x0;
ffa09a3c:	f6 1b       	IF CC JUMP 0xffa09a28 <_uart_str+0x3c>;
ffa09a3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa09a42:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa09a46:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa09a48:	10 97       	W[P2] = R0;
ffa09a4a:	02 20       	JUMP.S 0xffa09a4e <_uart_str+0x62>;
ffa09a4c:	00 00       	NOP;
ffa09a4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa09a52:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa09a56:	50 95       	R0 = W[P2] (X);
ffa09a58:	c1 42       	R1 = R0.L (Z);
ffa09a5a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09a5c:	01 54       	R0 = R1 & R0;
ffa09a5e:	00 0c       	CC = R0 == 0x0;
ffa09a60:	f6 1b       	IF CC JUMP 0xffa09a4c <_uart_str+0x60>;
ffa09a62:	14 20       	JUMP.S 0xffa09a8a <_uart_str+0x9e>;
ffa09a64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa09a68:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa09a6c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa09a70:	10 97       	W[P2] = R0;
ffa09a72:	02 20       	JUMP.S 0xffa09a76 <_uart_str+0x8a>;
ffa09a74:	00 00       	NOP;
ffa09a76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa09a7a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa09a7e:	50 95       	R0 = W[P2] (X);
ffa09a80:	c1 42       	R1 = R0.L (Z);
ffa09a82:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09a84:	01 54       	R0 = R1 & R0;
ffa09a86:	00 0c       	CC = R0 == 0x0;
ffa09a88:	f6 1b       	IF CC JUMP 0xffa09a74 <_uart_str+0x88>;
ffa09a8a:	b8 a0       	R0 = [FP + 0x8];
ffa09a8c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a8e:	b8 b0       	[FP + 0x8] = R0;
ffa09a90:	e0 b9       	R0 = [FP -0x8];
ffa09a92:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a94:	e0 bb       	[FP -0x8] = R0;
ffa09a96:	ba ac       	P2 = [FP + 0x8];
ffa09a98:	50 99       	R0 = B[P2] (X);
ffa09a9a:	00 43       	R0 = R0.B (X);
ffa09a9c:	00 0c       	CC = R0 == 0x0;
ffa09a9e:	06 18       	IF CC JUMP 0xffa09aaa <_uart_str+0xbe>;
ffa09aa0:	e0 b9       	R0 = [FP -0x8];
ffa09aa2:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa09aa6:	08 09       	CC = R0 <= R1;
ffa09aa8:	b0 1b       	IF CC JUMP 0xffa09a08 <_uart_str+0x1c>;
ffa09aaa:	e0 b9       	R0 = [FP -0x8];
ffa09aac:	01 e8 00 00 	UNLINK;
ffa09ab0:	10 00       	RTS;
	...

ffa09ab4 <_printf_str>:
ffa09ab4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ab8:	b8 b0       	[FP + 0x8] = R0;
ffa09aba:	b8 a0       	R0 = [FP + 0x8];
ffa09abc:	ff e3 98 ff 	CALL 0xffa099ec <_uart_str>;
ffa09ac0:	01 e8 00 00 	UNLINK;
ffa09ac4:	10 00       	RTS;
	...

ffa09ac8 <_printf_int>:
ffa09ac8:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa09acc:	b8 b0       	[FP + 0x8] = R0;
ffa09ace:	f9 b0       	[FP + 0xc] = R1;
ffa09ad0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ad2:	c0 bb       	[FP -0x10] = R0;
ffa09ad4:	f8 a0       	R0 = [FP + 0xc];
ffa09ad6:	00 0c       	CC = R0 == 0x0;
ffa09ad8:	0b 10       	IF !CC JUMP 0xffa09aee <_printf_int+0x26>;
ffa09ada:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900414 */
ffa09ade:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa09ae2:	52 91       	P2 = [P2];
ffa09ae4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09ae6:	10 9b       	B[P2] = R0;
ffa09ae8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09aea:	c0 bb       	[FP -0x10] = R0;
ffa09aec:	62 20       	JUMP.S 0xffa09bb0 <_printf_int+0xe8>;
ffa09aee:	f8 a0       	R0 = [FP + 0xc];
ffa09af0:	00 0d       	CC = R0 <= 0x0;
ffa09af2:	25 18       	IF CC JUMP 0xffa09b3c <_printf_int+0x74>;
ffa09af4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09af6:	c0 bb       	[FP -0x10] = R0;
ffa09af8:	19 20       	JUMP.S 0xffa09b2a <_printf_int+0x62>;
ffa09afa:	f8 a0       	R0 = [FP + 0xc];
ffa09afc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09afe:	00 e3 5b 02 	CALL 0xffa09fb4 <_mod>;
ffa09b02:	d0 bb       	[FP -0xc] = R0;
ffa09b04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa09b08:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa09b0c:	11 91       	R1 = [P2];
ffa09b0e:	c0 b9       	R0 = [FP -0x10];
ffa09b10:	41 50       	R1 = R1 + R0;
ffa09b12:	11 32       	P2 = R1;
ffa09b14:	d0 b9       	R0 = [FP -0xc];
ffa09b16:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09b18:	10 9b       	B[P2] = R0;
ffa09b1a:	c0 b9       	R0 = [FP -0x10];
ffa09b1c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b1e:	c0 bb       	[FP -0x10] = R0;
ffa09b20:	f8 a0       	R0 = [FP + 0xc];
ffa09b22:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09b24:	00 e3 1e 02 	CALL 0xffa09f60 <_div>;
ffa09b28:	f8 b0       	[FP + 0xc] = R0;
ffa09b2a:	f8 a0       	R0 = [FP + 0xc];
ffa09b2c:	00 0d       	CC = R0 <= 0x0;
ffa09b2e:	41 18       	IF CC JUMP 0xffa09bb0 <_printf_int+0xe8>;
ffa09b30:	c0 b9       	R0 = [FP -0x10];
ffa09b32:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa09b36:	08 09       	CC = R0 <= R1;
ffa09b38:	e1 1b       	IF CC JUMP 0xffa09afa <_printf_int+0x32>;
ffa09b3a:	3b 20       	JUMP.S 0xffa09bb0 <_printf_int+0xe8>;
ffa09b3c:	f8 a0       	R0 = [FP + 0xc];
ffa09b3e:	80 0c       	CC = R0 < 0x0;
ffa09b40:	38 10       	IF !CC JUMP 0xffa09bb0 <_printf_int+0xe8>;
ffa09b42:	f8 a0       	R0 = [FP + 0xc];
ffa09b44:	08 30       	R1 = R0;
ffa09b46:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09b48:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09b4a:	f8 4f       	R0 <<= 0x1f;
ffa09b4c:	08 52       	R0 = R0 - R1;
ffa09b4e:	f8 b0       	[FP + 0xc] = R0;
ffa09b50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b52:	c0 bb       	[FP -0x10] = R0;
ffa09b54:	19 20       	JUMP.S 0xffa09b86 <_printf_int+0xbe>;
ffa09b56:	f8 a0       	R0 = [FP + 0xc];
ffa09b58:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09b5a:	00 e3 2d 02 	CALL 0xffa09fb4 <_mod>;
ffa09b5e:	d0 bb       	[FP -0xc] = R0;
ffa09b60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa09b64:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa09b68:	11 91       	R1 = [P2];
ffa09b6a:	c0 b9       	R0 = [FP -0x10];
ffa09b6c:	41 50       	R1 = R1 + R0;
ffa09b6e:	11 32       	P2 = R1;
ffa09b70:	d0 b9       	R0 = [FP -0xc];
ffa09b72:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09b74:	10 9b       	B[P2] = R0;
ffa09b76:	c0 b9       	R0 = [FP -0x10];
ffa09b78:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b7a:	c0 bb       	[FP -0x10] = R0;
ffa09b7c:	f8 a0       	R0 = [FP + 0xc];
ffa09b7e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09b80:	00 e3 f0 01 	CALL 0xffa09f60 <_div>;
ffa09b84:	f8 b0       	[FP + 0xc] = R0;
ffa09b86:	f8 a0       	R0 = [FP + 0xc];
ffa09b88:	00 0d       	CC = R0 <= 0x0;
ffa09b8a:	06 18       	IF CC JUMP 0xffa09b96 <_printf_int+0xce>;
ffa09b8c:	c0 b9       	R0 = [FP -0x10];
ffa09b8e:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa09b92:	08 09       	CC = R0 <= R1;
ffa09b94:	e1 1b       	IF CC JUMP 0xffa09b56 <_printf_int+0x8e>;
ffa09b96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa09b9a:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa09b9e:	11 91       	R1 = [P2];
ffa09ba0:	c0 b9       	R0 = [FP -0x10];
ffa09ba2:	41 50       	R1 = R1 + R0;
ffa09ba4:	11 32       	P2 = R1;
ffa09ba6:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09ba8:	10 9b       	B[P2] = R0;
ffa09baa:	c0 b9       	R0 = [FP -0x10];
ffa09bac:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bae:	c0 bb       	[FP -0x10] = R0;
ffa09bb0:	b8 a0       	R0 = [FP + 0x8];
ffa09bb2:	00 e3 4b 02 	CALL 0xffa0a048 <_strlen_>;
ffa09bb6:	b0 bb       	[FP -0x14] = R0;
ffa09bb8:	b1 b9       	R1 = [FP -0x14];
ffa09bba:	c0 b9       	R0 = [FP -0x10];
ffa09bbc:	01 50       	R0 = R1 + R0;
ffa09bbe:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa09bc2:	08 09       	CC = R0 <= R1;
ffa09bc4:	52 10       	IF !CC JUMP 0xffa09c68 <_printf_int+0x1a0>;
ffa09bc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bc8:	f0 bb       	[FP -0x4] = R0;
ffa09bca:	12 20       	JUMP.S 0xffa09bee <_printf_int+0x126>;
ffa09bcc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa09bd0:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09bd4:	11 91       	R1 = [P2];
ffa09bd6:	f0 b9       	R0 = [FP -0x4];
ffa09bd8:	41 50       	R1 = R1 + R0;
ffa09bda:	09 32       	P1 = R1;
ffa09bdc:	ba ac       	P2 = [FP + 0x8];
ffa09bde:	50 99       	R0 = B[P2] (X);
ffa09be0:	08 9b       	B[P1] = R0;
ffa09be2:	b8 a0       	R0 = [FP + 0x8];
ffa09be4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09be6:	b8 b0       	[FP + 0x8] = R0;
ffa09be8:	f0 b9       	R0 = [FP -0x4];
ffa09bea:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bec:	f0 bb       	[FP -0x4] = R0;
ffa09bee:	f1 b9       	R1 = [FP -0x4];
ffa09bf0:	b0 b9       	R0 = [FP -0x14];
ffa09bf2:	81 08       	CC = R1 < R0;
ffa09bf4:	ec 1b       	IF CC JUMP 0xffa09bcc <_printf_int+0x104>;
ffa09bf6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bf8:	e0 bb       	[FP -0x8] = R0;
ffa09bfa:	1c 20       	JUMP.S 0xffa09c32 <_printf_int+0x16a>;
ffa09bfc:	b1 b9       	R1 = [FP -0x14];
ffa09bfe:	e0 b9       	R0 = [FP -0x8];
ffa09c00:	01 50       	R0 = R1 + R0;
ffa09c02:	08 30       	R1 = R0;
ffa09c04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09c08:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09c0c:	10 91       	R0 = [P2];
ffa09c0e:	41 50       	R1 = R1 + R0;
ffa09c10:	09 32       	P1 = R1;
ffa09c12:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09c16:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa09c1a:	12 91       	R2 = [P2];
ffa09c1c:	c1 b9       	R1 = [FP -0x10];
ffa09c1e:	e0 b9       	R0 = [FP -0x8];
ffa09c20:	01 52       	R0 = R1 - R0;
ffa09c22:	02 50       	R0 = R2 + R0;
ffa09c24:	10 32       	P2 = R0;
ffa09c26:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09c28:	50 99       	R0 = B[P2] (X);
ffa09c2a:	08 9b       	B[P1] = R0;
ffa09c2c:	e0 b9       	R0 = [FP -0x8];
ffa09c2e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c30:	e0 bb       	[FP -0x8] = R0;
ffa09c32:	e1 b9       	R1 = [FP -0x8];
ffa09c34:	c0 b9       	R0 = [FP -0x10];
ffa09c36:	81 08       	CC = R1 < R0;
ffa09c38:	e2 1b       	IF CC JUMP 0xffa09bfc <_printf_int+0x134>;
ffa09c3a:	b1 b9       	R1 = [FP -0x14];
ffa09c3c:	c0 b9       	R0 = [FP -0x10];
ffa09c3e:	01 50       	R0 = R1 + R0;
ffa09c40:	08 30       	R1 = R0;
ffa09c42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa09c46:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09c4a:	10 91       	R0 = [P2];
ffa09c4c:	41 50       	R1 = R1 + R0;
ffa09c4e:	11 32       	P2 = R1;
ffa09c50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c52:	10 9b       	B[P2] = R0;
ffa09c54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09c58:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09c5c:	10 91       	R0 = [P2];
ffa09c5e:	ff e3 c7 fe 	CALL 0xffa099ec <_uart_str>;
ffa09c62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c64:	a0 bb       	[FP -0x18] = R0;
ffa09c66:	03 20       	JUMP.S 0xffa09c6c <_printf_int+0x1a4>;
ffa09c68:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa09c6a:	a1 bb       	[FP -0x18] = R1;
ffa09c6c:	a0 b9       	R0 = [FP -0x18];
ffa09c6e:	01 e8 00 00 	UNLINK;
ffa09c72:	10 00       	RTS;

ffa09c74 <_printf_hex>:
ffa09c74:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa09c78:	b8 b0       	[FP + 0x8] = R0;
ffa09c7a:	f9 b0       	[FP + 0xc] = R1;
ffa09c7c:	b8 a0       	R0 = [FP + 0x8];
ffa09c7e:	00 e3 e5 01 	CALL 0xffa0a048 <_strlen_>;
ffa09c82:	a0 bb       	[FP -0x18] = R0;
ffa09c84:	a0 b9       	R0 = [FP -0x18];
ffa09c86:	21 e1 75 00 	R1 = 0x75 (X);		/*		R1=0x75(117) */
ffa09c8a:	08 09       	CC = R0 <= R1;
ffa09c8c:	8f 10       	IF !CC JUMP 0xffa09daa <_printf_hex+0x136>;
ffa09c8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c90:	f0 bb       	[FP -0x4] = R0;
ffa09c92:	12 20       	JUMP.S 0xffa09cb6 <_printf_hex+0x42>;
ffa09c94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09c98:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09c9c:	11 91       	R1 = [P2];
ffa09c9e:	f0 b9       	R0 = [FP -0x4];
ffa09ca0:	41 50       	R1 = R1 + R0;
ffa09ca2:	09 32       	P1 = R1;
ffa09ca4:	ba ac       	P2 = [FP + 0x8];
ffa09ca6:	50 99       	R0 = B[P2] (X);
ffa09ca8:	08 9b       	B[P1] = R0;
ffa09caa:	b8 a0       	R0 = [FP + 0x8];
ffa09cac:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cae:	b8 b0       	[FP + 0x8] = R0;
ffa09cb0:	f0 b9       	R0 = [FP -0x4];
ffa09cb2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cb4:	f0 bb       	[FP -0x4] = R0;
ffa09cb6:	f1 b9       	R1 = [FP -0x4];
ffa09cb8:	a0 b9       	R0 = [FP -0x18];
ffa09cba:	81 08       	CC = R1 < R0;
ffa09cbc:	ec 1b       	IF CC JUMP 0xffa09c94 <_printf_hex+0x20>;
ffa09cbe:	a0 b9       	R0 = [FP -0x18];
ffa09cc0:	c0 bb       	[FP -0x10] = R0;
ffa09cc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09cc6:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09cca:	11 91       	R1 = [P2];
ffa09ccc:	c0 b9       	R0 = [FP -0x10];
ffa09cce:	41 50       	R1 = R1 + R0;
ffa09cd0:	11 32       	P2 = R1;
ffa09cd2:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09cd4:	10 9b       	B[P2] = R0;
ffa09cd6:	c0 b9       	R0 = [FP -0x10];
ffa09cd8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cda:	c0 bb       	[FP -0x10] = R0;
ffa09cdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09ce0:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09ce4:	11 91       	R1 = [P2];
ffa09ce6:	c0 b9       	R0 = [FP -0x10];
ffa09ce8:	41 50       	R1 = R1 + R0;
ffa09cea:	11 32       	P2 = R1;
ffa09cec:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09cf0:	10 9b       	B[P2] = R0;
ffa09cf2:	c0 b9       	R0 = [FP -0x10];
ffa09cf4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cf6:	c0 bb       	[FP -0x10] = R0;
ffa09cf8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cfa:	b0 bb       	[FP -0x14] = R0;
ffa09cfc:	30 20       	JUMP.S 0xffa09d5c <_printf_hex+0xe8>;
ffa09cfe:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09d00:	b0 b9       	R0 = [FP -0x14];
ffa09d02:	01 52       	R0 = R1 - R0;
ffa09d04:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09d08:	f8 a0       	R0 = [FP + 0xc];
ffa09d0a:	08 40       	R0 >>>= R1;
ffa09d0c:	d0 bb       	[FP -0xc] = R0;
ffa09d0e:	d0 b9       	R0 = [FP -0xc];
ffa09d10:	08 30       	R1 = R0;
ffa09d12:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09d14:	01 54       	R0 = R1 & R0;
ffa09d16:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa09d1a:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09d1e:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09d20:	08 09       	CC = R0 <= R1;
ffa09d22:	07 18       	IF CC JUMP 0xffa09d30 <_printf_hex+0xbc>;
ffa09d24:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09d28:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09d2a:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa09d2e:	06 20       	JUMP.S 0xffa09d3a <_printf_hex+0xc6>;
ffa09d30:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09d34:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09d36:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa09d3a:	c1 b9       	R1 = [FP -0x10];
ffa09d3c:	b0 b9       	R0 = [FP -0x14];
ffa09d3e:	01 50       	R0 = R1 + R0;
ffa09d40:	08 30       	R1 = R0;
ffa09d42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09d46:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09d4a:	10 91       	R0 = [P2];
ffa09d4c:	41 50       	R1 = R1 + R0;
ffa09d4e:	11 32       	P2 = R1;
ffa09d50:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09d54:	10 9b       	B[P2] = R0;
ffa09d56:	b0 b9       	R0 = [FP -0x14];
ffa09d58:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d5a:	b0 bb       	[FP -0x14] = R0;
ffa09d5c:	b0 b9       	R0 = [FP -0x14];
ffa09d5e:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09d60:	08 09       	CC = R0 <= R1;
ffa09d62:	ce 1b       	IF CC JUMP 0xffa09cfe <_printf_hex+0x8a>;
ffa09d64:	c1 b9       	R1 = [FP -0x10];
ffa09d66:	b0 b9       	R0 = [FP -0x14];
ffa09d68:	01 50       	R0 = R1 + R0;
ffa09d6a:	c0 bb       	[FP -0x10] = R0;
ffa09d6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09d70:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09d74:	11 91       	R1 = [P2];
ffa09d76:	c0 b9       	R0 = [FP -0x10];
ffa09d78:	41 50       	R1 = R1 + R0;
ffa09d7a:	11 32       	P2 = R1;
ffa09d7c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09d7e:	10 9b       	B[P2] = R0;
ffa09d80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09d84:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09d88:	11 91       	R1 = [P2];
ffa09d8a:	c0 b9       	R0 = [FP -0x10];
ffa09d8c:	01 50       	R0 = R1 + R0;
ffa09d8e:	10 32       	P2 = R0;
ffa09d90:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa09d92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d94:	10 9b       	B[P2] = R0;
ffa09d96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09d9a:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09d9e:	10 91       	R0 = [P2];
ffa09da0:	ff e3 26 fe 	CALL 0xffa099ec <_uart_str>;
ffa09da4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09da6:	90 bb       	[FP -0x1c] = R0;
ffa09da8:	03 20       	JUMP.S 0xffa09dae <_printf_hex+0x13a>;
ffa09daa:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa09dac:	91 bb       	[FP -0x1c] = R1;
ffa09dae:	90 b9       	R0 = [FP -0x1c];
ffa09db0:	01 e8 00 00 	UNLINK;
ffa09db4:	10 00       	RTS;
	...

ffa09db8 <_printf_hex_byte>:
ffa09db8:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa09dbc:	b8 b0       	[FP + 0x8] = R0;
ffa09dbe:	01 30       	R0 = R1;
ffa09dc0:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09dc4:	b8 a0       	R0 = [FP + 0x8];
ffa09dc6:	00 e3 41 01 	CALL 0xffa0a048 <_strlen_>;
ffa09dca:	a0 bb       	[FP -0x18] = R0;
ffa09dcc:	a0 b9       	R0 = [FP -0x18];
ffa09dce:	21 e1 7b 00 	R1 = 0x7b (X);		/*		R1=0x7b(123) */
ffa09dd2:	08 09       	CC = R0 <= R1;
ffa09dd4:	85 10       	IF !CC JUMP 0xffa09ede <_printf_hex_byte+0x126>;
ffa09dd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09dd8:	f0 bb       	[FP -0x4] = R0;
ffa09dda:	12 20       	JUMP.S 0xffa09dfe <_printf_hex_byte+0x46>;
ffa09ddc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09de0:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09de4:	11 91       	R1 = [P2];
ffa09de6:	f0 b9       	R0 = [FP -0x4];
ffa09de8:	41 50       	R1 = R1 + R0;
ffa09dea:	09 32       	P1 = R1;
ffa09dec:	ba ac       	P2 = [FP + 0x8];
ffa09dee:	50 99       	R0 = B[P2] (X);
ffa09df0:	08 9b       	B[P1] = R0;
ffa09df2:	b8 a0       	R0 = [FP + 0x8];
ffa09df4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09df6:	b8 b0       	[FP + 0x8] = R0;
ffa09df8:	f0 b9       	R0 = [FP -0x4];
ffa09dfa:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dfc:	f0 bb       	[FP -0x4] = R0;
ffa09dfe:	f1 b9       	R1 = [FP -0x4];
ffa09e00:	a0 b9       	R0 = [FP -0x18];
ffa09e02:	81 08       	CC = R1 < R0;
ffa09e04:	ec 1b       	IF CC JUMP 0xffa09ddc <_printf_hex_byte+0x24>;
ffa09e06:	a0 b9       	R0 = [FP -0x18];
ffa09e08:	c0 bb       	[FP -0x10] = R0;
ffa09e0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09e0e:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09e12:	11 91       	R1 = [P2];
ffa09e14:	c0 b9       	R0 = [FP -0x10];
ffa09e16:	41 50       	R1 = R1 + R0;
ffa09e18:	11 32       	P2 = R1;
ffa09e1a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09e1c:	10 9b       	B[P2] = R0;
ffa09e1e:	c0 b9       	R0 = [FP -0x10];
ffa09e20:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e22:	c0 bb       	[FP -0x10] = R0;
ffa09e24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09e28:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09e2c:	11 91       	R1 = [P2];
ffa09e2e:	c0 b9       	R0 = [FP -0x10];
ffa09e30:	41 50       	R1 = R1 + R0;
ffa09e32:	11 32       	P2 = R1;
ffa09e34:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09e38:	10 9b       	B[P2] = R0;
ffa09e3a:	c0 b9       	R0 = [FP -0x10];
ffa09e3c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e3e:	c0 bb       	[FP -0x10] = R0;
ffa09e40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e42:	b0 bb       	[FP -0x14] = R0;
ffa09e44:	32 20       	JUMP.S 0xffa09ea8 <_printf_hex_byte+0xf0>;
ffa09e46:	ba e4 0c 00 	R2 = B[FP + 0xc] (Z);
ffa09e4a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa09e4c:	b0 b9       	R0 = [FP -0x14];
ffa09e4e:	01 52       	R0 = R1 - R0;
ffa09e50:	10 4f       	R0 <<= 0x2;
ffa09e52:	0a 30       	R1 = R2;
ffa09e54:	01 40       	R1 >>>= R0;
ffa09e56:	01 30       	R0 = R1;
ffa09e58:	d0 bb       	[FP -0xc] = R0;
ffa09e5a:	d0 b9       	R0 = [FP -0xc];
ffa09e5c:	08 30       	R1 = R0;
ffa09e5e:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09e60:	01 54       	R0 = R1 & R0;
ffa09e62:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa09e66:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09e6a:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09e6c:	08 09       	CC = R0 <= R1;
ffa09e6e:	07 18       	IF CC JUMP 0xffa09e7c <_printf_hex_byte+0xc4>;
ffa09e70:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09e74:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09e76:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa09e7a:	06 20       	JUMP.S 0xffa09e86 <_printf_hex_byte+0xce>;
ffa09e7c:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09e80:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09e82:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa09e86:	c1 b9       	R1 = [FP -0x10];
ffa09e88:	b0 b9       	R0 = [FP -0x14];
ffa09e8a:	01 50       	R0 = R1 + R0;
ffa09e8c:	08 30       	R1 = R0;
ffa09e8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09e92:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09e96:	10 91       	R0 = [P2];
ffa09e98:	41 50       	R1 = R1 + R0;
ffa09e9a:	11 32       	P2 = R1;
ffa09e9c:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa09ea0:	10 9b       	B[P2] = R0;
ffa09ea2:	b0 b9       	R0 = [FP -0x14];
ffa09ea4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ea6:	b0 bb       	[FP -0x14] = R0;
ffa09ea8:	b0 b9       	R0 = [FP -0x14];
ffa09eaa:	08 0d       	CC = R0 <= 0x1;
ffa09eac:	cd 1b       	IF CC JUMP 0xffa09e46 <_printf_hex_byte+0x8e>;
ffa09eae:	c1 b9       	R1 = [FP -0x10];
ffa09eb0:	b0 b9       	R0 = [FP -0x14];
ffa09eb2:	01 50       	R0 = R1 + R0;
ffa09eb4:	c0 bb       	[FP -0x10] = R0;
ffa09eb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09eba:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09ebe:	11 91       	R1 = [P2];
ffa09ec0:	c0 b9       	R0 = [FP -0x10];
ffa09ec2:	41 50       	R1 = R1 + R0;
ffa09ec4:	11 32       	P2 = R1;
ffa09ec6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ec8:	10 9b       	B[P2] = R0;
ffa09eca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa09ece:	0a e1 5c 62 	P2.L = 0x625c;		/* (25180)	P2=0xff90625c <_printf_out> */
ffa09ed2:	10 91       	R0 = [P2];
ffa09ed4:	ff e3 8c fd 	CALL 0xffa099ec <_uart_str>;
ffa09ed8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09eda:	90 bb       	[FP -0x1c] = R0;
ffa09edc:	03 20       	JUMP.S 0xffa09ee2 <_printf_hex_byte+0x12a>;
ffa09ede:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa09ee0:	91 bb       	[FP -0x1c] = R1;
ffa09ee2:	90 b9       	R0 = [FP -0x1c];
ffa09ee4:	01 e8 00 00 	UNLINK;
ffa09ee8:	10 00       	RTS;
	...

ffa09eec <_printf_ip>:
ffa09eec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ef0:	b8 b0       	[FP + 0x8] = R0;
ffa09ef2:	f9 b0       	[FP + 0xc] = R1;
ffa09ef4:	f8 a0       	R0 = [FP + 0xc];
ffa09ef6:	41 43       	R1 = R0.B (Z);
ffa09ef8:	b8 a0       	R0 = [FP + 0x8];
ffa09efa:	ff e3 e7 fd 	CALL 0xffa09ac8 <_printf_int>;
ffa09efe:	f8 a0       	R0 = [FP + 0xc];
ffa09f00:	40 4e       	R0 >>= 0x8;
ffa09f02:	41 43       	R1 = R0.B (Z);
ffa09f04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09f08:	00 e1 e8 60 	R0.L = 0x60e8;		/* (24808)	R0=0xff9060e8(-7315224) */
ffa09f0c:	ff e3 de fd 	CALL 0xffa09ac8 <_printf_int>;
ffa09f10:	f8 a0       	R0 = [FP + 0xc];
ffa09f12:	80 4e       	R0 >>= 0x10;
ffa09f14:	41 43       	R1 = R0.B (Z);
ffa09f16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9060e8(-7315224) */
ffa09f1a:	00 e1 e8 60 	R0.L = 0x60e8;		/* (24808)	R0=0xff9060e8(-7315224) */
ffa09f1e:	ff e3 d5 fd 	CALL 0xffa09ac8 <_printf_int>;
ffa09f22:	f8 a0       	R0 = [FP + 0xc];
ffa09f24:	c0 4e       	R0 >>= 0x18;
ffa09f26:	41 43       	R1 = R0.B (Z);
ffa09f28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9060e8(-7315224) */
ffa09f2c:	00 e1 e8 60 	R0.L = 0x60e8;		/* (24808)	R0=0xff9060e8(-7315224) */
ffa09f30:	ff e3 cc fd 	CALL 0xffa09ac8 <_printf_int>;
ffa09f34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9060e8(-7315224) */
ffa09f38:	00 e1 ec 60 	R0.L = 0x60ec;		/* (24812)	R0=0xff9060ec(-7315220) */
ffa09f3c:	ff e3 bc fd 	CALL 0xffa09ab4 <_printf_str>;
ffa09f40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f42:	01 e8 00 00 	UNLINK;
ffa09f46:	10 00       	RTS;

ffa09f48 <_printf_newline>:
ffa09f48:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09f4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09f50:	00 e1 f0 60 	R0.L = 0x60f0;		/* (24816)	R0=0xff9060f0(-7315216) */
ffa09f54:	ff e3 4c fd 	CALL 0xffa099ec <_uart_str>;
ffa09f58:	01 e8 00 00 	UNLINK;
ffa09f5c:	10 00       	RTS;
	...

ffa09f60 <_div>:
ffa09f60:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09f64:	b8 b0       	[FP + 0x8] = R0;
ffa09f66:	f9 b0       	[FP + 0xc] = R1;
ffa09f68:	b8 a0       	R0 = [FP + 0x8];
ffa09f6a:	08 4f       	R0 <<= 0x1;
ffa09f6c:	b8 b0       	[FP + 0x8] = R0;
ffa09f6e:	b9 a0       	R1 = [FP + 0x8];
ffa09f70:	f8 a0       	R0 = [FP + 0xc];
ffa09f72:	11 30       	R2 = R1;
ffa09f74:	18 30       	R3 = R0;
ffa09f76:	5a 42       	DIVS (R2, R3);
ffa09f78:	0b 30       	R1 = R3;
ffa09f7a:	02 30       	R0 = R2;
ffa09f7c:	b8 b0       	[FP + 0x8] = R0;
ffa09f7e:	f9 b0       	[FP + 0xc] = R1;
ffa09f80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f82:	f0 bb       	[FP -0x4] = R0;
ffa09f84:	0d 20       	JUMP.S 0xffa09f9e <_div+0x3e>;
ffa09f86:	b9 a0       	R1 = [FP + 0x8];
ffa09f88:	f8 a0       	R0 = [FP + 0xc];
ffa09f8a:	11 30       	R2 = R1;
ffa09f8c:	18 30       	R3 = R0;
ffa09f8e:	1a 42       	DIVQ (R2, R3);
ffa09f90:	0b 30       	R1 = R3;
ffa09f92:	02 30       	R0 = R2;
ffa09f94:	b8 b0       	[FP + 0x8] = R0;
ffa09f96:	f9 b0       	[FP + 0xc] = R1;
ffa09f98:	f0 b9       	R0 = [FP -0x4];
ffa09f9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f9c:	f0 bb       	[FP -0x4] = R0;
ffa09f9e:	f0 b9       	R0 = [FP -0x4];
ffa09fa0:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa09fa2:	08 09       	CC = R0 <= R1;
ffa09fa4:	f1 1b       	IF CC JUMP 0xffa09f86 <_div+0x26>;
ffa09fa6:	b8 a0       	R0 = [FP + 0x8];
ffa09fa8:	80 42       	R0 = R0.L (X);
ffa09faa:	b8 b0       	[FP + 0x8] = R0;
ffa09fac:	b8 a0       	R0 = [FP + 0x8];
ffa09fae:	01 e8 00 00 	UNLINK;
ffa09fb2:	10 00       	RTS;

ffa09fb4 <_mod>:
ffa09fb4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09fb8:	b8 b0       	[FP + 0x8] = R0;
ffa09fba:	f9 b0       	[FP + 0xc] = R1;
ffa09fbc:	f9 a0       	R1 = [FP + 0xc];
ffa09fbe:	b8 a0       	R0 = [FP + 0x8];
ffa09fc0:	ff e3 d0 ff 	CALL 0xffa09f60 <_div>;
ffa09fc4:	f0 bb       	[FP -0x4] = R0;
ffa09fc6:	f1 b9       	R1 = [FP -0x4];
ffa09fc8:	f8 a0       	R0 = [FP + 0xc];
ffa09fca:	c1 40       	R1 *= R0;
ffa09fcc:	b8 a0       	R0 = [FP + 0x8];
ffa09fce:	08 52       	R0 = R0 - R1;
ffa09fd0:	01 e8 00 00 	UNLINK;
ffa09fd4:	10 00       	RTS;
	...

ffa09fd8 <_memcpy_>:
ffa09fd8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09fdc:	b8 b0       	[FP + 0x8] = R0;
ffa09fde:	f9 b0       	[FP + 0xc] = R1;
ffa09fe0:	3a b1       	[FP + 0x10] = R2;
ffa09fe2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fe4:	f0 bb       	[FP -0x4] = R0;
ffa09fe6:	0e 20       	JUMP.S 0xffa0a002 <_memcpy_+0x2a>;
ffa09fe8:	ba ac       	P2 = [FP + 0x8];
ffa09fea:	50 99       	R0 = B[P2] (X);
ffa09fec:	fa ac       	P2 = [FP + 0xc];
ffa09fee:	10 9b       	B[P2] = R0;
ffa09ff0:	f8 a0       	R0 = [FP + 0xc];
ffa09ff2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ff4:	f8 b0       	[FP + 0xc] = R0;
ffa09ff6:	b8 a0       	R0 = [FP + 0x8];
ffa09ff8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ffa:	b8 b0       	[FP + 0x8] = R0;
ffa09ffc:	f0 b9       	R0 = [FP -0x4];
ffa09ffe:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a000:	f0 bb       	[FP -0x4] = R0;
ffa0a002:	f1 b9       	R1 = [FP -0x4];
ffa0a004:	38 a1       	R0 = [FP + 0x10];
ffa0a006:	81 08       	CC = R1 < R0;
ffa0a008:	f0 1b       	IF CC JUMP 0xffa09fe8 <_memcpy_+0x10>;
ffa0a00a:	01 e8 00 00 	UNLINK;
ffa0a00e:	10 00       	RTS;

ffa0a010 <_memset_>:
ffa0a010:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a014:	b8 b0       	[FP + 0x8] = R0;
ffa0a016:	3a b1       	[FP + 0x10] = R2;
ffa0a018:	01 30       	R0 = R1;
ffa0a01a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a01e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a020:	f0 bb       	[FP -0x4] = R0;
ffa0a022:	0b 20       	JUMP.S 0xffa0a038 <_memset_+0x28>;
ffa0a024:	ba ac       	P2 = [FP + 0x8];
ffa0a026:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa0a02a:	10 9b       	B[P2] = R0;
ffa0a02c:	b8 a0       	R0 = [FP + 0x8];
ffa0a02e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a030:	b8 b0       	[FP + 0x8] = R0;
ffa0a032:	f0 b9       	R0 = [FP -0x4];
ffa0a034:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a036:	f0 bb       	[FP -0x4] = R0;
ffa0a038:	f1 b9       	R1 = [FP -0x4];
ffa0a03a:	38 a1       	R0 = [FP + 0x10];
ffa0a03c:	81 08       	CC = R1 < R0;
ffa0a03e:	f3 1b       	IF CC JUMP 0xffa0a024 <_memset_+0x14>;
ffa0a040:	01 e8 00 00 	UNLINK;
ffa0a044:	10 00       	RTS;
	...

ffa0a048 <_strlen_>:
ffa0a048:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a04c:	b8 b0       	[FP + 0x8] = R0;
ffa0a04e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a050:	f0 bb       	[FP -0x4] = R0;
ffa0a052:	10 20       	JUMP.S 0xffa0a072 <_strlen_+0x2a>;
ffa0a054:	f0 b9       	R0 = [FP -0x4];
ffa0a056:	08 30       	R1 = R0;
ffa0a058:	b8 a0       	R0 = [FP + 0x8];
ffa0a05a:	41 50       	R1 = R1 + R0;
ffa0a05c:	11 32       	P2 = R1;
ffa0a05e:	50 99       	R0 = B[P2] (X);
ffa0a060:	00 43       	R0 = R0.B (X);
ffa0a062:	00 0c       	CC = R0 == 0x0;
ffa0a064:	04 10       	IF !CC JUMP 0xffa0a06c <_strlen_+0x24>;
ffa0a066:	f0 b9       	R0 = [FP -0x4];
ffa0a068:	e0 bb       	[FP -0x8] = R0;
ffa0a06a:	0b 20       	JUMP.S 0xffa0a080 <_strlen_+0x38>;
ffa0a06c:	f0 b9       	R0 = [FP -0x4];
ffa0a06e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a070:	f0 bb       	[FP -0x4] = R0;
ffa0a072:	f0 b9       	R0 = [FP -0x4];
ffa0a074:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa0a078:	08 09       	CC = R0 <= R1;
ffa0a07a:	ed 1b       	IF CC JUMP 0xffa0a054 <_strlen_+0xc>;
ffa0a07c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a07e:	e0 bb       	[FP -0x8] = R0;
ffa0a080:	e0 b9       	R0 = [FP -0x8];
ffa0a082:	01 e8 00 00 	UNLINK;
ffa0a086:	10 00       	RTS;

ffa0a088 <_strcpy_>:
ffa0a088:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a08c:	b8 b0       	[FP + 0x8] = R0;
ffa0a08e:	f9 b0       	[FP + 0xc] = R1;
ffa0a090:	3a b1       	[FP + 0x10] = R2;
ffa0a092:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a094:	f0 bb       	[FP -0x4] = R0;
ffa0a096:	0e 20       	JUMP.S 0xffa0a0b2 <_strcpy_+0x2a>;
ffa0a098:	3a ad       	P2 = [FP + 0x10];
ffa0a09a:	50 99       	R0 = B[P2] (X);
ffa0a09c:	ba ac       	P2 = [FP + 0x8];
ffa0a09e:	10 9b       	B[P2] = R0;
ffa0a0a0:	b8 a0       	R0 = [FP + 0x8];
ffa0a0a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0a4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0a6:	38 a1       	R0 = [FP + 0x10];
ffa0a0a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0aa:	38 b1       	[FP + 0x10] = R0;
ffa0a0ac:	f0 b9       	R0 = [FP -0x4];
ffa0a0ae:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0b0:	f0 bb       	[FP -0x4] = R0;
ffa0a0b2:	3a ad       	P2 = [FP + 0x10];
ffa0a0b4:	50 99       	R0 = B[P2] (X);
ffa0a0b6:	00 43       	R0 = R0.B (X);
ffa0a0b8:	00 0c       	CC = R0 == 0x0;
ffa0a0ba:	08 18       	IF CC JUMP 0xffa0a0ca <_strcpy_+0x42>;
ffa0a0bc:	f0 b9       	R0 = [FP -0x4];
ffa0a0be:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa0a0c2:	08 09       	CC = R0 <= R1;
ffa0a0c4:	ea 1b       	IF CC JUMP 0xffa0a098 <_strcpy_+0x10>;
ffa0a0c6:	00 00       	NOP;
ffa0a0c8:	00 00       	NOP;
ffa0a0ca:	fa ac       	P2 = [FP + 0xc];
ffa0a0cc:	11 91       	R1 = [P2];
ffa0a0ce:	f0 b9       	R0 = [FP -0x4];
ffa0a0d0:	01 50       	R0 = R1 + R0;
ffa0a0d2:	fa ac       	P2 = [FP + 0xc];
ffa0a0d4:	10 93       	[P2] = R0;
ffa0a0d6:	b8 a0       	R0 = [FP + 0x8];
ffa0a0d8:	01 e8 00 00 	UNLINK;
ffa0a0dc:	10 00       	RTS;
	...

ffa0a0e0 <_strprepend>:
ffa0a0e0:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0a0e4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0e6:	f9 b0       	[FP + 0xc] = R1;
ffa0a0e8:	3a b1       	[FP + 0x10] = R2;
ffa0a0ea:	38 a1       	R0 = [FP + 0x10];
ffa0a0ec:	ff e3 ae ff 	CALL 0xffa0a048 <_strlen_>;
ffa0a0f0:	d0 bb       	[FP -0xc] = R0;
ffa0a0f2:	fa ac       	P2 = [FP + 0xc];
ffa0a0f4:	10 91       	R0 = [P2];
ffa0a0f6:	08 30       	R1 = R0;
ffa0a0f8:	b8 a0       	R0 = [FP + 0x8];
ffa0a0fa:	08 52       	R0 = R0 - R1;
ffa0a0fc:	e0 bb       	[FP -0x8] = R0;
ffa0a0fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a100:	f0 bb       	[FP -0x4] = R0;
ffa0a102:	0e 20       	JUMP.S 0xffa0a11e <_strprepend+0x3e>;
ffa0a104:	3a ad       	P2 = [FP + 0x10];
ffa0a106:	50 99       	R0 = B[P2] (X);
ffa0a108:	ea b9       	P2 = [FP -0x8];
ffa0a10a:	10 9b       	B[P2] = R0;
ffa0a10c:	e0 b9       	R0 = [FP -0x8];
ffa0a10e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a110:	e0 bb       	[FP -0x8] = R0;
ffa0a112:	38 a1       	R0 = [FP + 0x10];
ffa0a114:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a116:	38 b1       	[FP + 0x10] = R0;
ffa0a118:	f0 b9       	R0 = [FP -0x4];
ffa0a11a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a11c:	f0 bb       	[FP -0x4] = R0;
ffa0a11e:	f1 b9       	R1 = [FP -0x4];
ffa0a120:	d0 b9       	R0 = [FP -0xc];
ffa0a122:	81 08       	CC = R1 < R0;
ffa0a124:	f0 1b       	IF CC JUMP 0xffa0a104 <_strprepend+0x24>;
ffa0a126:	00 00       	NOP;
ffa0a128:	00 00       	NOP;
ffa0a12a:	fa ac       	P2 = [FP + 0xc];
ffa0a12c:	10 91       	R0 = [P2];
ffa0a12e:	08 30       	R1 = R0;
ffa0a130:	b8 a0       	R0 = [FP + 0x8];
ffa0a132:	08 52       	R0 = R0 - R1;
ffa0a134:	01 e8 00 00 	UNLINK;
ffa0a138:	10 00       	RTS;
	...

ffa0a13c <_strcmp>:
ffa0a13c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a140:	b8 b0       	[FP + 0x8] = R0;
ffa0a142:	f9 b0       	[FP + 0xc] = R1;
ffa0a144:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a146:	f0 bb       	[FP -0x4] = R0;
ffa0a148:	1a 20       	JUMP.S 0xffa0a17c <_strcmp+0x40>;
ffa0a14a:	ba ac       	P2 = [FP + 0x8];
ffa0a14c:	51 99       	R1 = B[P2] (X);
ffa0a14e:	fa ac       	P2 = [FP + 0xc];
ffa0a150:	50 99       	R0 = B[P2] (X);
ffa0a152:	09 43       	R1 = R1.B (X);
ffa0a154:	00 43       	R0 = R0.B (X);
ffa0a156:	01 08       	CC = R1 == R0;
ffa0a158:	18 02       	CC = !CC;
ffa0a15a:	00 02       	R0 = CC;
ffa0a15c:	08 30       	R1 = R0;
ffa0a15e:	b8 a0       	R0 = [FP + 0x8];
ffa0a160:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a162:	b8 b0       	[FP + 0x8] = R0;
ffa0a164:	f8 a0       	R0 = [FP + 0xc];
ffa0a166:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a168:	f8 b0       	[FP + 0xc] = R0;
ffa0a16a:	48 43       	R0 = R1.B (Z);
ffa0a16c:	00 0c       	CC = R0 == 0x0;
ffa0a16e:	04 18       	IF CC JUMP 0xffa0a176 <_strcmp+0x3a>;
ffa0a170:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a172:	e0 bb       	[FP -0x8] = R0;
ffa0a174:	17 20       	JUMP.S 0xffa0a1a2 <_strcmp+0x66>;
ffa0a176:	f0 b9       	R0 = [FP -0x4];
ffa0a178:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a17a:	f0 bb       	[FP -0x4] = R0;
ffa0a17c:	ba ac       	P2 = [FP + 0x8];
ffa0a17e:	50 99       	R0 = B[P2] (X);
ffa0a180:	00 43       	R0 = R0.B (X);
ffa0a182:	00 0c       	CC = R0 == 0x0;
ffa0a184:	0d 18       	IF CC JUMP 0xffa0a19e <_strcmp+0x62>;
ffa0a186:	00 00       	NOP;
ffa0a188:	00 00       	NOP;
ffa0a18a:	fa ac       	P2 = [FP + 0xc];
ffa0a18c:	50 99       	R0 = B[P2] (X);
ffa0a18e:	00 43       	R0 = R0.B (X);
ffa0a190:	00 0c       	CC = R0 == 0x0;
ffa0a192:	06 18       	IF CC JUMP 0xffa0a19e <_strcmp+0x62>;
ffa0a194:	f0 b9       	R0 = [FP -0x4];
ffa0a196:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa0a19a:	08 09       	CC = R0 <= R1;
ffa0a19c:	d7 1b       	IF CC JUMP 0xffa0a14a <_strcmp+0xe>;
ffa0a19e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a1a0:	e0 bb       	[FP -0x8] = R0;
ffa0a1a2:	e0 b9       	R0 = [FP -0x8];
ffa0a1a4:	01 e8 00 00 	UNLINK;
ffa0a1a8:	10 00       	RTS;
	...

ffa0a1ac <_substr>:
ffa0a1ac:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a1b0:	b8 b0       	[FP + 0x8] = R0;
ffa0a1b2:	f9 b0       	[FP + 0xc] = R1;
ffa0a1b4:	3a b1       	[FP + 0x10] = R2;
ffa0a1b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1b8:	e0 bb       	[FP -0x8] = R0;
ffa0a1ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1bc:	f0 bb       	[FP -0x4] = R0;
ffa0a1be:	39 20       	JUMP.S 0xffa0a230 <_substr+0x84>;
ffa0a1c0:	ba ac       	P2 = [FP + 0x8];
ffa0a1c2:	51 99       	R1 = B[P2] (X);
ffa0a1c4:	fa ac       	P2 = [FP + 0xc];
ffa0a1c6:	50 99       	R0 = B[P2] (X);
ffa0a1c8:	09 43       	R1 = R1.B (X);
ffa0a1ca:	00 43       	R0 = R0.B (X);
ffa0a1cc:	01 08       	CC = R1 == R0;
ffa0a1ce:	2b 10       	IF !CC JUMP 0xffa0a224 <_substr+0x78>;
ffa0a1d0:	b8 a0       	R0 = [FP + 0x8];
ffa0a1d2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1d4:	c0 bb       	[FP -0x10] = R0;
ffa0a1d6:	f8 a0       	R0 = [FP + 0xc];
ffa0a1d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1da:	d0 bb       	[FP -0xc] = R0;
ffa0a1dc:	e0 b9       	R0 = [FP -0x8];
ffa0a1de:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1e0:	f0 bb       	[FP -0x4] = R0;
ffa0a1e2:	12 20       	JUMP.S 0xffa0a206 <_substr+0x5a>;
ffa0a1e4:	c0 b9       	R0 = [FP -0x10];
ffa0a1e6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1e8:	c0 bb       	[FP -0x10] = R0;
ffa0a1ea:	d0 b9       	R0 = [FP -0xc];
ffa0a1ec:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1ee:	d0 bb       	[FP -0xc] = R0;
ffa0a1f0:	f0 b9       	R0 = [FP -0x4];
ffa0a1f2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1f4:	f0 bb       	[FP -0x4] = R0;
ffa0a1f6:	ca b9       	P2 = [FP -0x10];
ffa0a1f8:	50 99       	R0 = B[P2] (X);
ffa0a1fa:	00 43       	R0 = R0.B (X);
ffa0a1fc:	00 0c       	CC = R0 == 0x0;
ffa0a1fe:	04 10       	IF !CC JUMP 0xffa0a206 <_substr+0x5a>;
ffa0a200:	f0 b9       	R0 = [FP -0x4];
ffa0a202:	b0 bb       	[FP -0x14] = R0;
ffa0a204:	28 20       	JUMP.S 0xffa0a254 <_substr+0xa8>;
ffa0a206:	ca b9       	P2 = [FP -0x10];
ffa0a208:	51 99       	R1 = B[P2] (X);
ffa0a20a:	da b9       	P2 = [FP -0xc];
ffa0a20c:	50 99       	R0 = B[P2] (X);
ffa0a20e:	09 43       	R1 = R1.B (X);
ffa0a210:	00 43       	R0 = R0.B (X);
ffa0a212:	01 08       	CC = R1 == R0;
ffa0a214:	08 10       	IF !CC JUMP 0xffa0a224 <_substr+0x78>;
ffa0a216:	00 00       	NOP;
ffa0a218:	00 00       	NOP;
ffa0a21a:	da b9       	P2 = [FP -0xc];
ffa0a21c:	50 99       	R0 = B[P2] (X);
ffa0a21e:	00 43       	R0 = R0.B (X);
ffa0a220:	00 0c       	CC = R0 == 0x0;
ffa0a222:	e1 13       	IF !CC JUMP 0xffa0a1e4 <_substr+0x38>;
ffa0a224:	f8 a0       	R0 = [FP + 0xc];
ffa0a226:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a228:	f8 b0       	[FP + 0xc] = R0;
ffa0a22a:	e0 b9       	R0 = [FP -0x8];
ffa0a22c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a22e:	e0 bb       	[FP -0x8] = R0;
ffa0a230:	ba ac       	P2 = [FP + 0x8];
ffa0a232:	50 99       	R0 = B[P2] (X);
ffa0a234:	00 43       	R0 = R0.B (X);
ffa0a236:	00 0c       	CC = R0 == 0x0;
ffa0a238:	0c 18       	IF CC JUMP 0xffa0a250 <_substr+0xa4>;
ffa0a23a:	00 00       	NOP;
ffa0a23c:	00 00       	NOP;
ffa0a23e:	fa ac       	P2 = [FP + 0xc];
ffa0a240:	50 99       	R0 = B[P2] (X);
ffa0a242:	00 43       	R0 = R0.B (X);
ffa0a244:	00 0c       	CC = R0 == 0x0;
ffa0a246:	05 18       	IF CC JUMP 0xffa0a250 <_substr+0xa4>;
ffa0a248:	e1 b9       	R1 = [FP -0x8];
ffa0a24a:	38 a1       	R0 = [FP + 0x10];
ffa0a24c:	81 08       	CC = R1 < R0;
ffa0a24e:	b9 1b       	IF CC JUMP 0xffa0a1c0 <_substr+0x14>;
ffa0a250:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a252:	b0 bb       	[FP -0x14] = R0;
ffa0a254:	b0 b9       	R0 = [FP -0x14];
ffa0a256:	01 e8 00 00 	UNLINK;
ffa0a25a:	10 00       	RTS;

ffa0a25c <_sprintf_int>:
ffa0a25c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a260:	b8 b0       	[FP + 0x8] = R0;
ffa0a262:	f9 b0       	[FP + 0xc] = R1;
ffa0a264:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a266:	c0 bb       	[FP -0x10] = R0;
ffa0a268:	f8 a0       	R0 = [FP + 0xc];
ffa0a26a:	00 0c       	CC = R0 == 0x0;
ffa0a26c:	0b 10       	IF !CC JUMP 0xffa0a282 <_sprintf_int+0x26>;
ffa0a26e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90625c <_printf_out> */
ffa0a272:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa0a276:	52 91       	P2 = [P2];
ffa0a278:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a27a:	10 9b       	B[P2] = R0;
ffa0a27c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a27e:	c0 bb       	[FP -0x10] = R0;
ffa0a280:	90 20       	JUMP.S 0xffa0a3a0 <_sprintf_int+0x144>;
ffa0a282:	f8 a0       	R0 = [FP + 0xc];
ffa0a284:	00 0d       	CC = R0 <= 0x0;
ffa0a286:	3c 18       	IF CC JUMP 0xffa0a2fe <_sprintf_int+0xa2>;
ffa0a288:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a28a:	c0 bb       	[FP -0x10] = R0;
ffa0a28c:	31 20       	JUMP.S 0xffa0a2ee <_sprintf_int+0x92>;
ffa0a28e:	f9 a0       	R1 = [FP + 0xc];
ffa0a290:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa0a294:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa0a298:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa0a29c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0a2a0:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa0a2a4:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa0a2a8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0a2ac:	0b c4 00 00 	R0 = (A0 += A1);
ffa0a2b0:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa0a2b4:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa0a2b8:	02 52       	R0 = R2 - R0;
ffa0a2ba:	f0 bb       	[FP -0x4] = R0;
ffa0a2bc:	f1 b9       	R1 = [FP -0x4];
ffa0a2be:	01 30       	R0 = R1;
ffa0a2c0:	10 4f       	R0 <<= 0x2;
ffa0a2c2:	08 50       	R0 = R0 + R1;
ffa0a2c4:	08 4f       	R0 <<= 0x1;
ffa0a2c6:	08 30       	R1 = R0;
ffa0a2c8:	f8 a0       	R0 = [FP + 0xc];
ffa0a2ca:	08 52       	R0 = R0 - R1;
ffa0a2cc:	d0 bb       	[FP -0xc] = R0;
ffa0a2ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa0a2d2:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa0a2d6:	11 91       	R1 = [P2];
ffa0a2d8:	c0 b9       	R0 = [FP -0x10];
ffa0a2da:	41 50       	R1 = R1 + R0;
ffa0a2dc:	11 32       	P2 = R1;
ffa0a2de:	d0 b9       	R0 = [FP -0xc];
ffa0a2e0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a2e2:	10 9b       	B[P2] = R0;
ffa0a2e4:	c0 b9       	R0 = [FP -0x10];
ffa0a2e6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a2e8:	c0 bb       	[FP -0x10] = R0;
ffa0a2ea:	f0 b9       	R0 = [FP -0x4];
ffa0a2ec:	f8 b0       	[FP + 0xc] = R0;
ffa0a2ee:	f8 a0       	R0 = [FP + 0xc];
ffa0a2f0:	00 0d       	CC = R0 <= 0x0;
ffa0a2f2:	57 18       	IF CC JUMP 0xffa0a3a0 <_sprintf_int+0x144>;
ffa0a2f4:	c0 b9       	R0 = [FP -0x10];
ffa0a2f6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0a2f8:	08 09       	CC = R0 <= R1;
ffa0a2fa:	ca 1b       	IF CC JUMP 0xffa0a28e <_sprintf_int+0x32>;
ffa0a2fc:	52 20       	JUMP.S 0xffa0a3a0 <_sprintf_int+0x144>;
ffa0a2fe:	f8 a0       	R0 = [FP + 0xc];
ffa0a300:	80 0c       	CC = R0 < 0x0;
ffa0a302:	4f 10       	IF !CC JUMP 0xffa0a3a0 <_sprintf_int+0x144>;
ffa0a304:	f8 a0       	R0 = [FP + 0xc];
ffa0a306:	08 30       	R1 = R0;
ffa0a308:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa0a30a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a30c:	f8 4f       	R0 <<= 0x1f;
ffa0a30e:	08 52       	R0 = R0 - R1;
ffa0a310:	f8 b0       	[FP + 0xc] = R0;
ffa0a312:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a314:	c0 bb       	[FP -0x10] = R0;
ffa0a316:	31 20       	JUMP.S 0xffa0a378 <_sprintf_int+0x11c>;
ffa0a318:	f9 a0       	R1 = [FP + 0xc];
ffa0a31a:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa0a31e:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa0a322:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa0a326:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0a32a:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa0a32e:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa0a332:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0a336:	0b c4 00 00 	R0 = (A0 += A1);
ffa0a33a:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa0a33e:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa0a342:	02 52       	R0 = R2 - R0;
ffa0a344:	f0 bb       	[FP -0x4] = R0;
ffa0a346:	f1 b9       	R1 = [FP -0x4];
ffa0a348:	01 30       	R0 = R1;
ffa0a34a:	10 4f       	R0 <<= 0x2;
ffa0a34c:	08 50       	R0 = R0 + R1;
ffa0a34e:	08 4f       	R0 <<= 0x1;
ffa0a350:	08 30       	R1 = R0;
ffa0a352:	f8 a0       	R0 = [FP + 0xc];
ffa0a354:	08 52       	R0 = R0 - R1;
ffa0a356:	d0 bb       	[FP -0xc] = R0;
ffa0a358:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa0a35c:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa0a360:	11 91       	R1 = [P2];
ffa0a362:	c0 b9       	R0 = [FP -0x10];
ffa0a364:	41 50       	R1 = R1 + R0;
ffa0a366:	11 32       	P2 = R1;
ffa0a368:	d0 b9       	R0 = [FP -0xc];
ffa0a36a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a36c:	10 9b       	B[P2] = R0;
ffa0a36e:	c0 b9       	R0 = [FP -0x10];
ffa0a370:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a372:	c0 bb       	[FP -0x10] = R0;
ffa0a374:	f0 b9       	R0 = [FP -0x4];
ffa0a376:	f8 b0       	[FP + 0xc] = R0;
ffa0a378:	f8 a0       	R0 = [FP + 0xc];
ffa0a37a:	00 0d       	CC = R0 <= 0x0;
ffa0a37c:	05 18       	IF CC JUMP 0xffa0a386 <_sprintf_int+0x12a>;
ffa0a37e:	c0 b9       	R0 = [FP -0x10];
ffa0a380:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0a382:	08 09       	CC = R0 <= R1;
ffa0a384:	ca 1b       	IF CC JUMP 0xffa0a318 <_sprintf_int+0xbc>;
ffa0a386:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa0a38a:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa0a38e:	11 91       	R1 = [P2];
ffa0a390:	c0 b9       	R0 = [FP -0x10];
ffa0a392:	41 50       	R1 = R1 + R0;
ffa0a394:	11 32       	P2 = R1;
ffa0a396:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0a398:	10 9b       	B[P2] = R0;
ffa0a39a:	c0 b9       	R0 = [FP -0x10];
ffa0a39c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a39e:	c0 bb       	[FP -0x10] = R0;
ffa0a3a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3a2:	e0 bb       	[FP -0x8] = R0;
ffa0a3a4:	16 20       	JUMP.S 0xffa0a3d0 <_sprintf_int+0x174>;
ffa0a3a6:	e0 b9       	R0 = [FP -0x8];
ffa0a3a8:	08 30       	R1 = R0;
ffa0a3aa:	b8 a0       	R0 = [FP + 0x8];
ffa0a3ac:	41 50       	R1 = R1 + R0;
ffa0a3ae:	09 32       	P1 = R1;
ffa0a3b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff906258 <_printf_temp> */
ffa0a3b4:	0a e1 58 62 	P2.L = 0x6258;		/* (25176)	P2=0xff906258 <_printf_temp> */
ffa0a3b8:	12 91       	R2 = [P2];
ffa0a3ba:	c1 b9       	R1 = [FP -0x10];
ffa0a3bc:	e0 b9       	R0 = [FP -0x8];
ffa0a3be:	01 52       	R0 = R1 - R0;
ffa0a3c0:	02 50       	R0 = R2 + R0;
ffa0a3c2:	10 32       	P2 = R0;
ffa0a3c4:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa0a3c6:	50 99       	R0 = B[P2] (X);
ffa0a3c8:	08 9b       	B[P1] = R0;
ffa0a3ca:	e0 b9       	R0 = [FP -0x8];
ffa0a3cc:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a3ce:	e0 bb       	[FP -0x8] = R0;
ffa0a3d0:	e1 b9       	R1 = [FP -0x8];
ffa0a3d2:	c0 b9       	R0 = [FP -0x10];
ffa0a3d4:	81 08       	CC = R1 < R0;
ffa0a3d6:	e8 1b       	IF CC JUMP 0xffa0a3a6 <_sprintf_int+0x14a>;
ffa0a3d8:	c0 b9       	R0 = [FP -0x10];
ffa0a3da:	01 e8 00 00 	UNLINK;
ffa0a3de:	10 00       	RTS;

ffa0a3e0 <_sprintf_hex>:
ffa0a3e0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a3e4:	b8 b0       	[FP + 0x8] = R0;
ffa0a3e6:	f9 b0       	[FP + 0xc] = R1;
ffa0a3e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3ea:	d0 bb       	[FP -0xc] = R0;
ffa0a3ec:	d0 b9       	R0 = [FP -0xc];
ffa0a3ee:	08 30       	R1 = R0;
ffa0a3f0:	b8 a0       	R0 = [FP + 0x8];
ffa0a3f2:	41 50       	R1 = R1 + R0;
ffa0a3f4:	11 32       	P2 = R1;
ffa0a3f6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a3f8:	10 9b       	B[P2] = R0;
ffa0a3fa:	d0 b9       	R0 = [FP -0xc];
ffa0a3fc:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a3fe:	d0 bb       	[FP -0xc] = R0;
ffa0a400:	d0 b9       	R0 = [FP -0xc];
ffa0a402:	08 30       	R1 = R0;
ffa0a404:	b8 a0       	R0 = [FP + 0x8];
ffa0a406:	41 50       	R1 = R1 + R0;
ffa0a408:	11 32       	P2 = R1;
ffa0a40a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a40e:	10 9b       	B[P2] = R0;
ffa0a410:	d0 b9       	R0 = [FP -0xc];
ffa0a412:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a414:	d0 bb       	[FP -0xc] = R0;
ffa0a416:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a418:	c0 bb       	[FP -0x10] = R0;
ffa0a41a:	2c 20       	JUMP.S 0xffa0a472 <_sprintf_hex+0x92>;
ffa0a41c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a41e:	c0 b9       	R0 = [FP -0x10];
ffa0a420:	01 52       	R0 = R1 - R0;
ffa0a422:	82 c6 10 82 	R1 = R0 << 0x2;
ffa0a426:	f8 a0       	R0 = [FP + 0xc];
ffa0a428:	08 40       	R0 >>>= R1;
ffa0a42a:	e0 bb       	[FP -0x8] = R0;
ffa0a42c:	e0 b9       	R0 = [FP -0x8];
ffa0a42e:	08 30       	R1 = R0;
ffa0a430:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0a432:	01 54       	R0 = R1 & R0;
ffa0a434:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a438:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a43c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0a43e:	08 09       	CC = R0 <= R1;
ffa0a440:	07 18       	IF CC JUMP 0xffa0a44e <_sprintf_hex+0x6e>;
ffa0a442:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a446:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a448:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a44c:	06 20       	JUMP.S 0xffa0a458 <_sprintf_hex+0x78>;
ffa0a44e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a452:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a454:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a458:	d1 b9       	R1 = [FP -0xc];
ffa0a45a:	c0 b9       	R0 = [FP -0x10];
ffa0a45c:	01 50       	R0 = R1 + R0;
ffa0a45e:	08 30       	R1 = R0;
ffa0a460:	b8 a0       	R0 = [FP + 0x8];
ffa0a462:	41 50       	R1 = R1 + R0;
ffa0a464:	11 32       	P2 = R1;
ffa0a466:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a46a:	10 9b       	B[P2] = R0;
ffa0a46c:	c0 b9       	R0 = [FP -0x10];
ffa0a46e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a470:	c0 bb       	[FP -0x10] = R0;
ffa0a472:	c0 b9       	R0 = [FP -0x10];
ffa0a474:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a476:	08 09       	CC = R0 <= R1;
ffa0a478:	d2 1b       	IF CC JUMP 0xffa0a41c <_sprintf_hex+0x3c>;
ffa0a47a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a47c:	01 e8 00 00 	UNLINK;
ffa0a480:	10 00       	RTS;
	...

ffa0a484 <_strprintf_int>:
ffa0a484:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a488:	b8 b0       	[FP + 0x8] = R0;
ffa0a48a:	f9 b0       	[FP + 0xc] = R1;
ffa0a48c:	3a b1       	[FP + 0x10] = R2;
ffa0a48e:	39 a1       	R1 = [FP + 0x10];
ffa0a490:	b8 a0       	R0 = [FP + 0x8];
ffa0a492:	ff e3 e5 fe 	CALL 0xffa0a25c <_sprintf_int>;
ffa0a496:	f0 bb       	[FP -0x4] = R0;
ffa0a498:	fa ac       	P2 = [FP + 0xc];
ffa0a49a:	11 91       	R1 = [P2];
ffa0a49c:	f0 b9       	R0 = [FP -0x4];
ffa0a49e:	01 50       	R0 = R1 + R0;
ffa0a4a0:	fa ac       	P2 = [FP + 0xc];
ffa0a4a2:	10 93       	[P2] = R0;
ffa0a4a4:	f0 b9       	R0 = [FP -0x4];
ffa0a4a6:	08 30       	R1 = R0;
ffa0a4a8:	b8 a0       	R0 = [FP + 0x8];
ffa0a4aa:	08 50       	R0 = R0 + R1;
ffa0a4ac:	b8 b0       	[FP + 0x8] = R0;
ffa0a4ae:	b8 a0       	R0 = [FP + 0x8];
ffa0a4b0:	01 e8 00 00 	UNLINK;
ffa0a4b4:	10 00       	RTS;
	...

ffa0a4b8 <_strprintf_hex>:
ffa0a4b8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a4bc:	b8 b0       	[FP + 0x8] = R0;
ffa0a4be:	f9 b0       	[FP + 0xc] = R1;
ffa0a4c0:	3a b1       	[FP + 0x10] = R2;
ffa0a4c2:	39 a1       	R1 = [FP + 0x10];
ffa0a4c4:	b8 a0       	R0 = [FP + 0x8];
ffa0a4c6:	ff e3 8d ff 	CALL 0xffa0a3e0 <_sprintf_hex>;
ffa0a4ca:	f0 bb       	[FP -0x4] = R0;
ffa0a4cc:	fa ac       	P2 = [FP + 0xc];
ffa0a4ce:	11 91       	R1 = [P2];
ffa0a4d0:	f0 b9       	R0 = [FP -0x4];
ffa0a4d2:	01 50       	R0 = R1 + R0;
ffa0a4d4:	fa ac       	P2 = [FP + 0xc];
ffa0a4d6:	10 93       	[P2] = R0;
ffa0a4d8:	f0 b9       	R0 = [FP -0x4];
ffa0a4da:	08 30       	R1 = R0;
ffa0a4dc:	b8 a0       	R0 = [FP + 0x8];
ffa0a4de:	08 50       	R0 = R0 + R1;
ffa0a4e0:	b8 b0       	[FP + 0x8] = R0;
ffa0a4e2:	b8 a0       	R0 = [FP + 0x8];
ffa0a4e4:	01 e8 00 00 	UNLINK;
ffa0a4e8:	10 00       	RTS;
	...

ffa0a4ec <_atoi>:
ffa0a4ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a4f0:	b8 b0       	[FP + 0x8] = R0;
ffa0a4f2:	f9 b0       	[FP + 0xc] = R1;
ffa0a4f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4f6:	d0 bb       	[FP -0xc] = R0;
ffa0a4f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4fa:	e0 bb       	[FP -0x8] = R0;
ffa0a4fc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a4fe:	f0 bb       	[FP -0x4] = R0;
ffa0a500:	ba ac       	P2 = [FP + 0x8];
ffa0a502:	50 99       	R0 = B[P2] (X);
ffa0a504:	00 43       	R0 = R0.B (X);
ffa0a506:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa0a508:	08 08       	CC = R0 == R1;
ffa0a50a:	2c 10       	IF !CC JUMP 0xffa0a562 <_atoi+0x76>;
ffa0a50c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a50e:	f0 bb       	[FP -0x4] = R0;
ffa0a510:	b8 a0       	R0 = [FP + 0x8];
ffa0a512:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a514:	b8 b0       	[FP + 0x8] = R0;
ffa0a516:	d0 b9       	R0 = [FP -0xc];
ffa0a518:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a51a:	d0 bb       	[FP -0xc] = R0;
ffa0a51c:	23 20       	JUMP.S 0xffa0a562 <_atoi+0x76>;
ffa0a51e:	ba ac       	P2 = [FP + 0x8];
ffa0a520:	50 99       	R0 = B[P2] (X);
ffa0a522:	01 43       	R1 = R0.B (X);
ffa0a524:	e0 b9       	R0 = [FP -0x8];
ffa0a526:	01 50       	R0 = R1 + R0;
ffa0a528:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a52a:	e0 bb       	[FP -0x8] = R0;
ffa0a52c:	b8 a0       	R0 = [FP + 0x8];
ffa0a52e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a530:	b8 b0       	[FP + 0x8] = R0;
ffa0a532:	d0 b9       	R0 = [FP -0xc];
ffa0a534:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a536:	d0 bb       	[FP -0xc] = R0;
ffa0a538:	ba ac       	P2 = [FP + 0x8];
ffa0a53a:	50 99       	R0 = B[P2] (X);
ffa0a53c:	00 43       	R0 = R0.B (X);
ffa0a53e:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a540:	08 09       	CC = R0 <= R1;
ffa0a542:	10 18       	IF CC JUMP 0xffa0a562 <_atoi+0x76>;
ffa0a544:	00 00       	NOP;
ffa0a546:	00 00       	NOP;
ffa0a548:	ba ac       	P2 = [FP + 0x8];
ffa0a54a:	50 99       	R0 = B[P2] (X);
ffa0a54c:	00 43       	R0 = R0.B (X);
ffa0a54e:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a550:	08 09       	CC = R0 <= R1;
ffa0a552:	08 10       	IF !CC JUMP 0xffa0a562 <_atoi+0x76>;
ffa0a554:	e0 b9       	R0 = [FP -0x8];
ffa0a556:	08 30       	R1 = R0;
ffa0a558:	11 4f       	R1 <<= 0x2;
ffa0a55a:	41 50       	R1 = R1 + R0;
ffa0a55c:	82 c6 09 80 	R0 = R1 << 0x1;
ffa0a560:	e0 bb       	[FP -0x8] = R0;
ffa0a562:	ba ac       	P2 = [FP + 0x8];
ffa0a564:	50 99       	R0 = B[P2] (X);
ffa0a566:	00 43       	R0 = R0.B (X);
ffa0a568:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a56a:	08 09       	CC = R0 <= R1;
ffa0a56c:	0d 18       	IF CC JUMP 0xffa0a586 <_atoi+0x9a>;
ffa0a56e:	00 00       	NOP;
ffa0a570:	00 00       	NOP;
ffa0a572:	ba ac       	P2 = [FP + 0x8];
ffa0a574:	50 99       	R0 = B[P2] (X);
ffa0a576:	00 43       	R0 = R0.B (X);
ffa0a578:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a57a:	08 09       	CC = R0 <= R1;
ffa0a57c:	05 10       	IF !CC JUMP 0xffa0a586 <_atoi+0x9a>;
ffa0a57e:	d1 b9       	R1 = [FP -0xc];
ffa0a580:	f8 a0       	R0 = [FP + 0xc];
ffa0a582:	81 08       	CC = R1 < R0;
ffa0a584:	cd 1b       	IF CC JUMP 0xffa0a51e <_atoi+0x32>;
ffa0a586:	e1 b9       	R1 = [FP -0x8];
ffa0a588:	f0 b9       	R0 = [FP -0x4];
ffa0a58a:	c8 40       	R0 *= R1;
ffa0a58c:	01 e8 00 00 	UNLINK;
ffa0a590:	10 00       	RTS;
	...

ffa0a594 <_udelay>:
ffa0a594:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a598:	b8 b0       	[FP + 0x8] = R0;
ffa0a59a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a59c:	e0 bb       	[FP -0x8] = R0;
ffa0a59e:	10 20       	JUMP.S 0xffa0a5be <_udelay+0x2a>;
ffa0a5a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5a2:	f0 bb       	[FP -0x4] = R0;
ffa0a5a4:	05 20       	JUMP.S 0xffa0a5ae <_udelay+0x1a>;
ffa0a5a6:	00 00       	NOP;
ffa0a5a8:	f0 b9       	R0 = [FP -0x4];
ffa0a5aa:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a5ac:	f0 bb       	[FP -0x4] = R0;
ffa0a5ae:	f0 b9       	R0 = [FP -0x4];
ffa0a5b0:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa0a5b4:	08 09       	CC = R0 <= R1;
ffa0a5b6:	f8 1b       	IF CC JUMP 0xffa0a5a6 <_udelay+0x12>;
ffa0a5b8:	e0 b9       	R0 = [FP -0x8];
ffa0a5ba:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a5bc:	e0 bb       	[FP -0x8] = R0;
ffa0a5be:	e1 b9       	R1 = [FP -0x8];
ffa0a5c0:	b8 a0       	R0 = [FP + 0x8];
ffa0a5c2:	81 08       	CC = R1 < R0;
ffa0a5c4:	ee 1b       	IF CC JUMP 0xffa0a5a0 <_udelay+0xc>;
ffa0a5c6:	01 e8 00 00 	UNLINK;
ffa0a5ca:	10 00       	RTS;

ffa0a5cc <_spi_delay>:
ffa0a5cc:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a5d0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a5d2:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a5d6:	08 20       	JUMP.S 0xffa0a5e6 <_spi_delay+0x1a>;
ffa0a5d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc06258(-4169128) */
ffa0a5dc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a5e0:	50 95       	R0 = W[P2] (X);
ffa0a5e2:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a5e6:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a5ea:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0a5ec:	08 54       	R0 = R0 & R1;
ffa0a5ee:	00 0c       	CC = R0 == 0x0;
ffa0a5f0:	f4 13       	IF !CC JUMP 0xffa0a5d8 <_spi_delay+0xc>;
ffa0a5f2:	08 20       	JUMP.S 0xffa0a602 <_spi_delay+0x36>;
ffa0a5f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a5f8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a5fc:	50 95       	R0 = W[P2] (X);
ffa0a5fe:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a602:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a606:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a608:	00 02       	R0 = CC;
ffa0a60a:	00 0c       	CC = R0 == 0x0;
ffa0a60c:	f4 1b       	IF CC JUMP 0xffa0a5f4 <_spi_delay+0x28>;
ffa0a60e:	01 e8 00 00 	UNLINK;
ffa0a612:	10 00       	RTS;

ffa0a614 <_spi_write_register>:
ffa0a614:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a618:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a61c:	01 30       	R0 = R1;
ffa0a61e:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a622:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a626:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a628:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a62c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a630:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a634:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a636:	10 97       	W[P2] = R0;
ffa0a638:	24 00       	SSYNC;
ffa0a63a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a63e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a642:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a646:	10 97       	W[P2] = R0;
ffa0a648:	ff e3 c2 ff 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a64c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a650:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a654:	50 95       	R0 = W[P2] (X);
ffa0a656:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a65a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a65e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a662:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0a666:	10 97       	W[P2] = R0;
ffa0a668:	ff e3 b2 ff 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a66c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a670:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a674:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a676:	10 97       	W[P2] = R0;
ffa0a678:	24 00       	SSYNC;
ffa0a67a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a67e:	01 e8 00 00 	UNLINK;
ffa0a682:	10 00       	RTS;

ffa0a684 <_spi_write_register_ver>:
ffa0a684:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a688:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a68c:	01 30       	R0 = R1;
ffa0a68e:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a692:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a696:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a69a:	ff e3 bd ff 	CALL 0xffa0a614 <_spi_write_register>;
ffa0a69e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a6a2:	00 e3 39 00 	CALL 0xffa0a714 <_spi_read_register>;
ffa0a6a6:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0a6aa:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa0a6ae:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0a6b2:	01 08       	CC = R1 == R0;
ffa0a6b4:	2b 18       	IF CC JUMP 0xffa0a70a <_spi_write_register_ver+0x86>;
ffa0a6b6:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a6ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0a6be:	00 e1 f4 60 	R0.L = 0x60f4;		/* (24820)	R0=0xff9060f4(-7315212) */
ffa0a6c2:	ff e3 03 fa 	CALL 0xffa09ac8 <_printf_int>;
ffa0a6c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9060f4(-7315212) */
ffa0a6ca:	00 e1 08 61 	R0.L = 0x6108;		/* (24840)	R0=0xff906108(-7315192) */
ffa0a6ce:	ff e3 8f f9 	CALL 0xffa099ec <_uart_str>;
ffa0a6d2:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a6d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906108(-7315192) */
ffa0a6da:	00 e1 0c 61 	R0.L = 0x610c;		/* (24844)	R0=0xff90610c(-7315188) */
ffa0a6de:	ff e3 6d fb 	CALL 0xffa09db8 <_printf_hex_byte>;
ffa0a6e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90610c(-7315188) */
ffa0a6e6:	00 e1 08 61 	R0.L = 0x6108;		/* (24840)	R0=0xff906108(-7315192) */
ffa0a6ea:	ff e3 81 f9 	CALL 0xffa099ec <_uart_str>;
ffa0a6ee:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa0a6f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906108(-7315192) */
ffa0a6f6:	00 e1 18 61 	R0.L = 0x6118;		/* (24856)	R0=0xff906118(-7315176) */
ffa0a6fa:	ff e3 5f fb 	CALL 0xffa09db8 <_printf_hex_byte>;
ffa0a6fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906118(-7315176) */
ffa0a702:	00 e1 24 61 	R0.L = 0x6124;		/* (24868)	R0=0xff906124(-7315164) */
ffa0a706:	ff e3 73 f9 	CALL 0xffa099ec <_uart_str>;
ffa0a70a:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa0a70e:	01 e8 00 00 	UNLINK;
ffa0a712:	10 00       	RTS;

ffa0a714 <_spi_read_register>:
ffa0a714:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a718:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a71c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a720:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a724:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a726:	10 97       	W[P2] = R0;
ffa0a728:	24 00       	SSYNC;
ffa0a72a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a72e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a732:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a736:	10 97       	W[P2] = R0;
ffa0a738:	ff e3 4a ff 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a73c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a740:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a744:	50 95       	R0 = W[P2] (X);
ffa0a746:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a74a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a74e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a752:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a754:	10 97       	W[P2] = R0;
ffa0a756:	ff e3 3b ff 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a75a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a75e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a762:	50 95       	R0 = W[P2] (X);
ffa0a764:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a768:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a76c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a770:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a772:	10 97       	W[P2] = R0;
ffa0a774:	24 00       	SSYNC;
ffa0a776:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a77a:	01 e8 00 00 	UNLINK;
ffa0a77e:	10 00       	RTS;

ffa0a780 <_spi_read_register_status>:
ffa0a780:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a784:	f9 b0       	[FP + 0xc] = R1;
ffa0a786:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a78a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a78e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a792:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a794:	10 97       	W[P2] = R0;
ffa0a796:	24 00       	SSYNC;
ffa0a798:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a79c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a7a0:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a7a4:	10 97       	W[P2] = R0;
ffa0a7a6:	ff e3 13 ff 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a7aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a7ae:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a7b2:	50 95       	R0 = W[P2] (X);
ffa0a7b4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a7b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a7bc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a7c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a7c2:	10 97       	W[P2] = R0;
ffa0a7c4:	ff e3 04 ff 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a7c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a7cc:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a7d0:	50 95       	R0 = W[P2] (X);
ffa0a7d2:	fa ac       	P2 = [FP + 0xc];
ffa0a7d4:	10 9b       	B[P2] = R0;
ffa0a7d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a7da:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a7de:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a7e0:	10 97       	W[P2] = R0;
ffa0a7e2:	24 00       	SSYNC;
ffa0a7e4:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a7e8:	01 e8 00 00 	UNLINK;
ffa0a7ec:	10 00       	RTS;
	...

ffa0a7f0 <_spi_write_byte>:
ffa0a7f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a7f4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a7f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a7fc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a800:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a802:	10 97       	W[P2] = R0;
ffa0a804:	24 00       	SSYNC;
ffa0a806:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a80a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a80e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a812:	10 97       	W[P2] = R0;
ffa0a814:	ff e3 dc fe 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a818:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a81c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a820:	50 95       	R0 = W[P2] (X);
ffa0a822:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a826:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a82a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a82e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a830:	10 97       	W[P2] = R0;
ffa0a832:	24 00       	SSYNC;
ffa0a834:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a838:	01 e8 00 00 	UNLINK;
ffa0a83c:	10 00       	RTS;
	...

ffa0a840 <_spi_write_packet>:
ffa0a840:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a844:	b8 b0       	[FP + 0x8] = R0;
ffa0a846:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a84a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a84e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a850:	10 97       	W[P2] = R0;
ffa0a852:	24 00       	SSYNC;
ffa0a854:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a858:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a85c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a860:	10 97       	W[P2] = R0;
ffa0a862:	ff e3 b5 fe 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a866:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a86a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a86e:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a872:	10 97       	W[P2] = R0;
ffa0a874:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a878:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a87c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a87e:	10 97       	W[P2] = R0;
ffa0a880:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a884:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a888:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a88a:	10 97       	W[P2] = R0;
ffa0a88c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a890:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a894:	b8 a0       	R0 = [FP + 0x8];
ffa0a896:	10 93       	[P2] = R0;
ffa0a898:	24 00       	SSYNC;
ffa0a89a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a89e:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a8a2:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a8a6:	10 97       	W[P2] = R0;
ffa0a8a8:	01 20       	JUMP.S 0xffa0a8aa <_spi_write_packet+0x6a>;
	...
ffa0a8b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a8b6:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a8ba:	50 95       	R0 = W[P2] (X);
ffa0a8bc:	c0 42       	R0 = R0.L (Z);
ffa0a8be:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a8c0:	00 02       	R0 = CC;
ffa0a8c2:	00 0c       	CC = R0 == 0x0;
ffa0a8c4:	f3 1b       	IF CC JUMP 0xffa0a8aa <_spi_write_packet+0x6a>;
ffa0a8c6:	00 00       	NOP;
ffa0a8c8:	00 00       	NOP;
ffa0a8ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a8ce:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a8d2:	50 95       	R0 = W[P2] (X);
ffa0a8d4:	c1 42       	R1 = R0.L (Z);
ffa0a8d6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a8d8:	01 54       	R0 = R1 & R0;
ffa0a8da:	00 0c       	CC = R0 == 0x0;
ffa0a8dc:	e7 13       	IF !CC JUMP 0xffa0a8aa <_spi_write_packet+0x6a>;
ffa0a8de:	00 00       	NOP;
ffa0a8e0:	00 00       	NOP;
ffa0a8e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a8e6:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a8ea:	50 95       	R0 = W[P2] (X);
ffa0a8ec:	c1 42       	R1 = R0.L (Z);
ffa0a8ee:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a8f0:	01 54       	R0 = R1 & R0;
ffa0a8f2:	00 0c       	CC = R0 == 0x0;
ffa0a8f4:	db 13       	IF !CC JUMP 0xffa0a8aa <_spi_write_packet+0x6a>;
ffa0a8f6:	ff e3 6b fe 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a8fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a8fe:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a902:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a904:	10 97       	W[P2] = R0;
ffa0a906:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a90a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a90e:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a912:	10 97       	W[P2] = R0;
ffa0a914:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a918:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a91c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a91e:	10 97       	W[P2] = R0;
ffa0a920:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a924:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a928:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a92a:	10 97       	W[P2] = R0;
ffa0a92c:	24 00       	SSYNC;
ffa0a92e:	01 e8 00 00 	UNLINK;
ffa0a932:	10 00       	RTS;

ffa0a934 <_spi_write_packet_noDMA>:
ffa0a934:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a938:	b8 b0       	[FP + 0x8] = R0;
ffa0a93a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a93e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a942:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a944:	10 97       	W[P2] = R0;
ffa0a946:	24 00       	SSYNC;
ffa0a948:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a94c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a950:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a954:	10 97       	W[P2] = R0;
ffa0a956:	ff e3 3b fe 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a95a:	b8 a0       	R0 = [FP + 0x8];
ffa0a95c:	f0 bb       	[FP -0x4] = R0;
ffa0a95e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a960:	e0 bb       	[FP -0x8] = R0;
ffa0a962:	11 20       	JUMP.S 0xffa0a984 <_spi_write_packet_noDMA+0x50>;
ffa0a964:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a968:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a96c:	fa b9       	P2 = [FP -0x4];
ffa0a96e:	50 99       	R0 = B[P2] (X);
ffa0a970:	00 43       	R0 = R0.B (X);
ffa0a972:	08 97       	W[P1] = R0;
ffa0a974:	f0 b9       	R0 = [FP -0x4];
ffa0a976:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a978:	f0 bb       	[FP -0x4] = R0;
ffa0a97a:	ff e3 29 fe 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a97e:	e0 b9       	R0 = [FP -0x8];
ffa0a980:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a982:	e0 bb       	[FP -0x8] = R0;
ffa0a984:	e0 b9       	R0 = [FP -0x8];
ffa0a986:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a988:	08 09       	CC = R0 <= R1;
ffa0a98a:	ed 1b       	IF CC JUMP 0xffa0a964 <_spi_write_packet_noDMA+0x30>;
ffa0a98c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a990:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a994:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a996:	10 97       	W[P2] = R0;
ffa0a998:	24 00       	SSYNC;
ffa0a99a:	01 e8 00 00 	UNLINK;
ffa0a99e:	10 00       	RTS;

ffa0a9a0 <_spi_read_packet>:
ffa0a9a0:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a9a4:	b8 b0       	[FP + 0x8] = R0;
ffa0a9a6:	b8 a0       	R0 = [FP + 0x8];
ffa0a9a8:	f0 bb       	[FP -0x4] = R0;
ffa0a9aa:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a9ac:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a9b0:	ff e3 32 fe 	CALL 0xffa0a614 <_spi_write_register>;
ffa0a9b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a9b8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a9bc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a9be:	10 97       	W[P2] = R0;
ffa0a9c0:	24 00       	SSYNC;
ffa0a9c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a9c6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a9ca:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a9ce:	10 97       	W[P2] = R0;
ffa0a9d0:	ff e3 fe fd 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a9d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a9d6:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a9da:	18 20       	JUMP.S 0xffa0aa0a <_spi_read_packet+0x6a>;
ffa0a9dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a9e0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a9e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a9e6:	10 97       	W[P2] = R0;
ffa0a9e8:	ff e3 f2 fd 	CALL 0xffa0a5cc <_spi_delay>;
ffa0a9ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a9f0:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a9f4:	50 95       	R0 = W[P2] (X);
ffa0a9f6:	fa b9       	P2 = [FP -0x4];
ffa0a9f8:	10 9b       	B[P2] = R0;
ffa0a9fa:	f0 b9       	R0 = [FP -0x4];
ffa0a9fc:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a9fe:	f0 bb       	[FP -0x4] = R0;
ffa0aa00:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0aa04:	08 64       	R0 += 0x1;		/* (  1) */
ffa0aa06:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0aa0a:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0aa0e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0aa10:	08 0a       	CC = R0 <= R1 (IU);
ffa0aa12:	e5 1b       	IF CC JUMP 0xffa0a9dc <_spi_read_packet+0x3c>;
ffa0aa14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0aa18:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0aa1c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0aa1e:	10 97       	W[P2] = R0;
ffa0aa20:	24 00       	SSYNC;
ffa0aa22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0aa24:	01 e8 00 00 	UNLINK;
ffa0aa28:	10 00       	RTS;
	...

ffa0aa2c <_spi_read_packet_nocheck>:
ffa0aa2c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0aa30:	b8 b0       	[FP + 0x8] = R0;
ffa0aa32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aa36:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0aa3a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0aa3c:	10 97       	W[P2] = R0;
ffa0aa3e:	24 00       	SSYNC;
ffa0aa40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0aa44:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0aa48:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0aa4c:	10 97       	W[P2] = R0;
ffa0aa4e:	ff e3 bf fd 	CALL 0xffa0a5cc <_spi_delay>;
ffa0aa52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0aa56:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0aa5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aa5c:	10 97       	W[P2] = R0;
ffa0aa5e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0aa62:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0aa66:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0aa68:	10 97       	W[P2] = R0;
ffa0aa6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0aa6e:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0aa72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0aa74:	10 97       	W[P2] = R0;
ffa0aa76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0aa7a:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0aa7e:	b8 a0       	R0 = [FP + 0x8];
ffa0aa80:	10 93       	[P2] = R0;
ffa0aa82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0aa86:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0aa8a:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0aa8e:	10 97       	W[P2] = R0;
ffa0aa90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0aa94:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0aa98:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0aa9c:	10 97       	W[P2] = R0;
	...
ffa0aaa6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0aaaa:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0aaae:	50 95       	R0 = W[P2] (X);
ffa0aab0:	c0 42       	R0 = R0.L (Z);
ffa0aab2:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0aab4:	00 02       	R0 = CC;
ffa0aab6:	00 0c       	CC = R0 == 0x0;
ffa0aab8:	f3 1b       	IF CC JUMP 0xffa0aa9e <_spi_read_packet_nocheck+0x72>;
ffa0aaba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0aabe:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0aac2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aac4:	10 97       	W[P2] = R0;
ffa0aac6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0aaca:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0aace:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0aad0:	10 97       	W[P2] = R0;
ffa0aad2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0aad6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0aada:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0aade:	10 97       	W[P2] = R0;
ffa0aae0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0aae4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0aae8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0aaea:	10 97       	W[P2] = R0;
ffa0aaec:	24 00       	SSYNC;
ffa0aaee:	01 e8 00 00 	UNLINK;
ffa0aaf2:	10 00       	RTS;

ffa0aaf4 <_radio_set_rx>:
ffa0aaf4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0aaf8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aafc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ab00:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0ab02:	10 97       	W[P2] = R0;
ffa0ab04:	24 00       	SSYNC;
ffa0ab06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab08:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0ab0a:	ff e3 85 fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ab0e:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0ab12:	ff e3 6f fe 	CALL 0xffa0a7f0 <_spi_write_byte>;
ffa0ab16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab18:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa0ab1a:	ff e3 7d fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ab1e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0ab20:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0ab24:	ff e3 78 fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ab28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ab2c:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0ab30:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0ab32:	10 97       	W[P2] = R0;
ffa0ab34:	24 00       	SSYNC;
ffa0ab36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0ab3a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ab3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0ab40:	10 97       	W[P2] = R0;
ffa0ab42:	24 00       	SSYNC;
ffa0ab44:	01 e8 00 00 	UNLINK;
ffa0ab48:	10 00       	RTS;
	...

ffa0ab4c <_radio_set_tx>:
ffa0ab4c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0ab50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ab54:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ab58:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0ab5a:	10 97       	W[P2] = R0;
ffa0ab5c:	24 00       	SSYNC;
ffa0ab5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab60:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0ab62:	ff e3 59 fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ab66:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0ab6a:	ff e3 43 fe 	CALL 0xffa0a7f0 <_spi_write_byte>;
ffa0ab6e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0ab70:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0ab74:	ff e3 50 fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ab78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab7a:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0ab7c:	ff e3 4c fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ab80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ab84:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0ab88:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0ab8a:	10 97       	W[P2] = R0;
ffa0ab8c:	01 e8 00 00 	UNLINK;
ffa0ab90:	10 00       	RTS;
	...

ffa0ab94 <_radio_wait_irq>:
ffa0ab94:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0ab98:	b8 b0       	[FP + 0x8] = R0;
ffa0ab9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab9c:	f0 bb       	[FP -0x4] = R0;
ffa0ab9e:	08 20       	JUMP.S 0xffa0abae <_radio_wait_irq+0x1a>;
	...
ffa0aba8:	f0 b9       	R0 = [FP -0x4];
ffa0abaa:	08 64       	R0 += 0x1;		/* (  1) */
ffa0abac:	f0 bb       	[FP -0x4] = R0;
ffa0abae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0abb2:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0abb6:	50 95       	R0 = W[P2] (X);
ffa0abb8:	c1 42       	R1 = R0.L (Z);
ffa0abba:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0abbc:	01 54       	R0 = R1 & R0;
ffa0abbe:	00 0c       	CC = R0 == 0x0;
ffa0abc0:	05 18       	IF CC JUMP 0xffa0abca <_radio_wait_irq+0x36>;
ffa0abc2:	f1 b9       	R1 = [FP -0x4];
ffa0abc4:	b8 a0       	R0 = [FP + 0x8];
ffa0abc6:	81 08       	CC = R1 < R0;
ffa0abc8:	ec 1b       	IF CC JUMP 0xffa0aba0 <_radio_wait_irq+0xc>;
ffa0abca:	f1 b9       	R1 = [FP -0x4];
ffa0abcc:	b8 a0       	R0 = [FP + 0x8];
ffa0abce:	81 08       	CC = R1 < R0;
ffa0abd0:	06 10       	IF !CC JUMP 0xffa0abdc <_radio_wait_irq+0x48>;
ffa0abd2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0abd4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0abd8:	ff e3 1e fd 	CALL 0xffa0a614 <_spi_write_register>;
ffa0abdc:	f0 b9       	R0 = [FP -0x4];
ffa0abde:	01 e8 00 00 	UNLINK;
ffa0abe2:	10 00       	RTS;

ffa0abe4 <_radio_init>:
ffa0abe4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0abe8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0abec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0abf0:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0abf4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0abf6:	10 97       	W[P2] = R0;
ffa0abf8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0abfc:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0ac00:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0ac04:	10 97       	W[P2] = R0;
ffa0ac06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0ac0a:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0ac0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ac10:	10 97       	W[P2] = R0;
ffa0ac12:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0ac16:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ac1a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0ac1c:	10 97       	W[P2] = R0;
ffa0ac1e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0ac22:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0ac26:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ac2a:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0ac2e:	50 95       	R0 = W[P2] (X);
ffa0ac30:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0ac32:	08 97       	W[P1] = R0;
ffa0ac34:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0ac38:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0ac3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0ac40:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0ac44:	51 95       	R1 = W[P2] (X);
ffa0ac46:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0ac48:	01 54       	R0 = R1 & R0;
ffa0ac4a:	08 97       	W[P1] = R0;
ffa0ac4c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0ac50:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0ac54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0ac58:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0ac5c:	51 95       	R1 = W[P2] (X);
ffa0ac5e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0ac60:	01 56       	R0 = R1 | R0;
ffa0ac62:	08 97       	W[P1] = R0;
ffa0ac64:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0ac68:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0ac6c:	08 0a       	CC = R0 <= R1 (IU);
ffa0ac6e:	05 18       	IF CC JUMP 0xffa0ac78 <_radio_init+0x94>;
ffa0ac70:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0ac74:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0ac78:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0ac7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa0ac80:	00 e1 28 61 	R0.L = 0x6128;		/* (24872)	R0=0xff906128(-7315160) */
ffa0ac84:	ff e3 22 f7 	CALL 0xffa09ac8 <_printf_int>;
ffa0ac88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906128(-7315160) */
ffa0ac8c:	00 e1 24 61 	R0.L = 0x6124;		/* (24868)	R0=0xff906124(-7315164) */
ffa0ac90:	ff e3 ae f6 	CALL 0xffa099ec <_uart_str>;
ffa0ac94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ac96:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0ac98:	ff e3 be fc 	CALL 0xffa0a614 <_spi_write_register>;
ffa0ac9c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0ac9e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0aca0:	ff e3 f2 fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0aca4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0aca6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0aca8:	ff e3 ee fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0acac:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0acae:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0acb0:	ff e3 ea fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0acb4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0acb6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0acb8:	ff e3 e6 fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0acbc:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0acc0:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0acc2:	ff e3 e1 fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0acc6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0acc8:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0acca:	ff e3 dd fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0acce:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0acd0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0acd4:	ff e3 d8 fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0acd8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0acda:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0acdc:	ff e3 d4 fc 	CALL 0xffa0a684 <_spi_write_register_ver>;
ffa0ace0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0ace4:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0ace8:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0acec:	10 97       	W[P2] = R0;
ffa0acee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0acf2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0acf6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0acf8:	10 97       	W[P2] = R0;
ffa0acfa:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0acfe:	ff e3 79 fd 	CALL 0xffa0a7f0 <_spi_write_byte>;
ffa0ad02:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0ad06:	ff e3 75 fd 	CALL 0xffa0a7f0 <_spi_write_byte>;
ffa0ad0a:	40 43       	R0 = R0.B (Z);
ffa0ad0c:	01 e8 00 00 	UNLINK;
ffa0ad10:	10 00       	RTS;
	...

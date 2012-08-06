
stage.dxe:     file format elf32-bfin

Disassembly of section .text:

ffa08000 <start>:
ffa08000:	81 61       	R1 = 0x30 (X);		/*		R1=0x0(  0) */
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
ffa0801e:	01 e1 00 32 	R1.L = 0x3200;		/* (12800)	R1=0x3200(12800) */
ffa08022:	09 e1 24 01 	P1.L = 0x124;		/* (292)	P1=0x124 */
ffa08026:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00124(-4194012) */
ffa0802a:	08 91       	R0 = [P1];
ffa0802c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0802e:	08 93       	[P1] = R0;
ffa08030:	01 97       	W[P0] = R1;
ffa08032:	24 00       	SSYNC;
ffa08034:	30 00       	CLI R0;
ffa08036:	20 00       	IDLE;
ffa08038:	40 00       	STI R0;
ffa0803a:	08 e1 04 00 	P0.L = 0x4;		/* (  4)	P0=0xffc00004(-4194300) */
ffa0803e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00004(-4194300) */
ffa08042:	00 e1 05 00 	R0.L = 0x5;		/* (  5)	R0=0x5(  5) */
ffa08046:	00 97       	W[P0] = R0;
ffa08048:	08 e1 08 20 	P0.L = 0x2008;		/* (8200)	P0=0xffc02008(-4186104) */
ffa0804c:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02008(-2088952) */
ffa08050:	00 e1 88 81 	R0.L = 0x8188;		/* (-32376)	R0=0x8188(33160) */
ffa08054:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08188 <_NHANDLER>(-6258296) */
ffa08058:	00 92       	[P0++] = R0;
ffa0805a:	00 e1 8e 81 	R0.L = 0x818e;		/* (-32370)	R0=0xffa0818e <EXC_HANDLER>(-6258290) */
ffa0805e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0818e <EXC_HANDLER>(-6258290) */
ffa08062:	00 92       	[P0++] = R0;
ffa08064:	00 92       	[P0++] = R0;
ffa08066:	00 e1 86 81 	R0.L = 0x8186;		/* (-32378)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806e:	00 92       	[P0++] = R0;
ffa08070:	00 e1 08 82 	R0.L = 0x8208;		/* (-32248)	R0=0xffa08208 <_THANDLER>(-6258168) */
ffa08074:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08208 <_THANDLER>(-6258168) */
ffa08078:	00 92       	[P0++] = R0;
ffa0807a:	00 e1 24 82 	R0.L = 0x8224;		/* (-32220)	R0=0xffa08224 <_RTCHANDLER>(-6258140) */
ffa0807e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08224 <_RTCHANDLER>(-6258140) */
ffa08082:	00 92       	[P0++] = R0;
ffa08084:	00 e1 2a 82 	R0.L = 0x822a;		/* (-32214)	R0=0xffa0822a <_I8HANDLER>(-6258134) */
ffa08088:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0822a <_I8HANDLER>(-6258134) */
ffa0808c:	00 92       	[P0++] = R0;
ffa0808e:	00 e1 30 82 	R0.L = 0x8230;		/* (-32208)	R0=0xffa08230 <_I9HANDLER>(-6258128) */
ffa08092:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08230 <_I9HANDLER>(-6258128) */
ffa08096:	00 92       	[P0++] = R0;
ffa08098:	00 e1 60 81 	R0.L = 0x8160;		/* (-32416)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa0809c:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa080a0:	00 92       	[P0++] = R0;
ffa080a2:	00 e1 60 81 	R0.L = 0x8160;		/* (-32416)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa080a6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa080aa:	00 92       	[P0++] = R0;
ffa080ac:	00 e1 62 81 	R0.L = 0x8162;		/* (-32414)	R0=0xffa08162 <_I12HANDLER>(-6258334) */
ffa080b0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08162 <_I12HANDLER>(-6258334) */
ffa080b4:	00 92       	[P0++] = R0;
ffa080b6:	00 e1 64 81 	R0.L = 0x8164;		/* (-32412)	R0=0xffa08164 <_I13HANDLER>(-6258332) */
ffa080ba:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08164 <_I13HANDLER>(-6258332) */
ffa080be:	00 92       	[P0++] = R0;
ffa080c0:	00 e1 6a 81 	R0.L = 0x816a;		/* (-32406)	R0=0xffa0816a <_I14HANDLER>(-6258326) */
ffa080c4:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816a <_I14HANDLER>(-6258326) */
ffa080c8:	00 92       	[P0++] = R0;
ffa080ca:	00 e1 70 81 	R0.L = 0x8170;		/* (-32400)	R0=0xffa08170 <_I15HANDLER>(-6258320) */
ffa080ce:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08170 <_I15HANDLER>(-6258320) */
ffa080d2:	00 92       	[P0++] = R0;
ffa080d4:	08 e1 3c 20 	P0.L = 0x203c;		/* (8252)	P0=0xffe0203c(-2088900) */
ffa080d8:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe0203c(-2088900) */
ffa080dc:	00 e1 46 81 	R0.L = 0x8146;		/* (-32442)	R0=0xffa08146 <call_main>(-6258362) */
ffa080e0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08146 <call_main>(-6258362) */
ffa080e4:	00 93       	[P0] = R0;
ffa080e6:	08 e1 0c 01 	P0.L = 0x10c;		/* (268)	P0=0xffe0010c(-2096884) */
ffa080ea:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0010c(-4194036) */
ffa080ee:	00 e1 00 2c 	R0.L = 0x2c00;		/* (11264)	R0=0xffa02c00(-6280192) */
ffa080f2:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x2c00(11264) */
ffa080f6:	00 93       	[P0] = R0;
ffa080f8:	08 e1 10 01 	P0.L = 0x110;		/* (272)	P0=0xffc00110(-4194032) */
ffa080fc:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00110(-4194032) */
ffa08100:	00 e1 5f ff 	R0.L = 0xff5f;		/* (-161)	R0=0xff5f(65375) */
ffa08104:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffff5f(-161) */
ffa08108:	00 93       	[P0] = R0;
ffa0810a:	08 e1 14 01 	P0.L = 0x114;		/* (276)	P0=0xffc00114(-4194028) */
ffa0810e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00114(-4194028) */
ffa08112:	00 e1 ff 34 	R0.L = 0x34ff;		/* (13567)	R0=0xffff34ff(-51969) */
ffa08116:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff34ff(-51969) */
ffa0811a:	00 93       	[P0] = R0;
ffa0811c:	08 e1 18 01 	P0.L = 0x118;		/* (280)	P0=0xffc00118(-4194024) */
ffa08120:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00118(-4194024) */
ffa08124:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08128:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa0812c:	00 93       	[P0] = R0;
ffa0812e:	23 00       	CSYNC;
ffa08130:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa08134:	40 00       	STI R0;
ffa08136:	9f 00       	RAISE 0xf;
ffa08138:	08 e1 44 81 	P0.L = 0x8144;		/* (-32444)	P0=0xffc08144(-4161212) */
ffa0813c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa08144 <wait> */
ffa08140:	58 3e       	RETI = P0;
ffa08142:	11 00       	RTI;

ffa08144 <wait>:
ffa08144:	00 20       	JUMP.S 0xffa08144 <wait>;

ffa08146 <call_main>:
ffa08146:	7b 01       	[--SP] = RETI;
ffa08148:	08 e1 54 9d 	P0.L = 0x9d54;		/* (-25260)	P0=0xffa09d54 <_main> */
ffa0814c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09d54 <_main> */
ffa08150:	00 e1 5c 81 	R0.L = 0x815c;		/* (-32420)	R0=0x815c(33116) */
ffa08154:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0815c <end>(-6258340) */
ffa08158:	38 38       	RETS = R0;
ffa0815a:	50 00       	JUMP (P0);

ffa0815c <end>:
ffa0815c:	20 00       	IDLE;
ffa0815e:	ff 2f       	JUMP.S 0xffa0815c <end>;

ffa08160 <_I11HANDLER>:
ffa08160:	11 00       	RTI;

ffa08162 <_I12HANDLER>:
ffa08162:	11 00       	RTI;

ffa08164 <_I13HANDLER>:
ffa08164:	00 e1 0d 00 	R0.L = 0xd;		/* ( 13)	R0=0xffa0000d(-6291443) */
ffa08168:	0a 20       	JUMP.S 0xffa0817c <display_fail>;

ffa0816a <_I14HANDLER>:
ffa0816a:	00 e1 0e 00 	R0.L = 0xe;		/* ( 14)	R0=0xffa0000e(-6291442) */
ffa0816e:	07 20       	JUMP.S 0xffa0817c <display_fail>;

ffa08170 <_I15HANDLER>:
ffa08170:	00 e1 0f 00 	R0.L = 0xf;		/* ( 15)	R0=0xffa0000f(-6291441) */
ffa08174:	04 20       	JUMP.S 0xffa0817c <display_fail>;

ffa08176 <idle_loop>:
ffa08176:	20 00       	IDLE;
ffa08178:	24 00       	SSYNC;
ffa0817a:	fe 2f       	JUMP.S 0xffa08176 <idle_loop>;

ffa0817c <display_fail>:
ffa0817c:	c1 31       	R0 = SEQSTAT;
ffa0817e:	cc 31       	R1 = RETX;
ffa08180:	00 e3 5c 0e 	CALL 0xffa09e38 <_exception_report>;
ffa08184:	12 00       	RTX;

ffa08186 <_HWHANDLER>:
ffa08186:	11 00       	RTI;

ffa08188 <_NHANDLER>:
ffa08188:	00 e3 40 0e 	CALL 0xffa09e08 <_nmi_report>;
ffa0818c:	12 00       	RTX;

ffa0818e <EXC_HANDLER>:
ffa0818e:	c1 31       	R0 = SEQSTAT;
ffa08190:	cc 31       	R1 = RETX;
ffa08192:	fe 2f       	JUMP.S 0xffa0818e <EXC_HANDLER>;
ffa08194:	4d 01       	[--SP] = P5;
ffa08196:	0d e1 ac 71 	P5.L = 0x71ac;		/* (29100)	P5=0x71ac */
ffa0819a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff9071ac <_g_excregs> */
ffa0819e:	28 92       	[P5++] = R0;
ffa081a0:	29 92       	[P5++] = R1;
ffa081a2:	2a 92       	[P5++] = R2;
ffa081a4:	2b 92       	[P5++] = R3;
ffa081a6:	2c 92       	[P5++] = R4;
ffa081a8:	2d 92       	[P5++] = R5;
ffa081aa:	2e 92       	[P5++] = R6;
ffa081ac:	2f 92       	[P5++] = R7;
ffa081ae:	68 92       	[P5++] = P0;
ffa081b0:	69 92       	[P5++] = P1;
ffa081b2:	6a 92       	[P5++] = P2;
ffa081b4:	6b 92       	[P5++] = P3;
ffa081b6:	6c 92       	[P5++] = P4;
ffa081b8:	65 32       	P4 = P5;
ffa081ba:	75 90       	P5 = [SP++];
ffa081bc:	65 92       	[P4++] = P5;
ffa081be:	80 30       	R0 = I0;
ffa081c0:	20 92       	[P4++] = R0;
ffa081c2:	c0 30       	R0 = B0;
ffa081c4:	20 92       	[P4++] = R0;
ffa081c6:	c4 30       	R0 = L0;
ffa081c8:	20 92       	[P4++] = R0;
ffa081ca:	81 30       	R0 = I1;
ffa081cc:	20 92       	[P4++] = R0;
ffa081ce:	c1 30       	R0 = B1;
ffa081d0:	20 92       	[P4++] = R0;
ffa081d2:	c5 30       	R0 = L1;
ffa081d4:	20 92       	[P4++] = R0;
ffa081d6:	82 30       	R0 = I2;
ffa081d8:	20 92       	[P4++] = R0;
ffa081da:	c2 30       	R0 = B2;
ffa081dc:	20 92       	[P4++] = R0;
ffa081de:	c6 30       	R0 = L2;
ffa081e0:	20 92       	[P4++] = R0;
ffa081e2:	83 30       	R0 = I3;
ffa081e4:	20 92       	[P4++] = R0;
ffa081e6:	c3 30       	R0 = B3;
ffa081e8:	20 92       	[P4++] = R0;
ffa081ea:	c7 30       	R0 = L3;
ffa081ec:	20 92       	[P4++] = R0;
ffa081ee:	84 30       	R0 = M0;
ffa081f0:	20 92       	[P4++] = R0;
ffa081f2:	85 30       	R0 = M1;
ffa081f4:	20 92       	[P4++] = R0;
ffa081f6:	86 30       	R0 = M2;
ffa081f8:	20 92       	[P4++] = R0;
ffa081fa:	87 30       	R0 = M3;
ffa081fc:	20 92       	[P4++] = R0;
ffa081fe:	c1 31       	R0 = SEQSTAT;
ffa08200:	cc 31       	R1 = RETX;
ffa08202:	00 e3 1b 0e 	CALL 0xffa09e38 <_exception_report>;
ffa08206:	12 00       	RTX;

ffa08208 <_THANDLER>:
ffa08208:	4a 01       	[--SP] = P2;
ffa0820a:	40 01       	[--SP] = R0;
ffa0820c:	41 01       	[--SP] = R1;
ffa0820e:	66 01       	[--SP] = ASTAT;
ffa08210:	10 91       	R0 = [P2];
ffa08212:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa08216:	08 50       	R0 = R0 + R1;
ffa08218:	10 93       	[P2] = R0;
ffa0821a:	26 01       	ASTAT = [SP++];
ffa0821c:	31 90       	R1 = [SP++];
ffa0821e:	30 90       	R0 = [SP++];
ffa08220:	72 90       	P2 = [SP++];
ffa08222:	11 00       	RTI;

ffa08224 <_RTCHANDLER>:
ffa08224:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa08228:	aa 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa0822a <_I8HANDLER>:
ffa0822a:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa0822e:	a7 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08230 <_I9HANDLER>:
ffa08230:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa08234:	a4 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08236 <_atexit>:
ffa08236:	10 00       	RTS;

ffa08238 <_get_asm>:
ffa08238:	18 b9       	P0 = [FP -0x3c];
ffa0823a:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0823e:	0f b5       	W[P1 + 0x8] = R7;
ffa08240:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08244:	8f b4       	W[P1 + 0x4] = R7;

ffa08246 <wait_samples>:
ffa08246:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08248:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa0824a:	fe 1b       	IF CC JUMP 0xffa08246 <wait_samples>;
ffa0824c:	f6 b9       	R6 = [FP -0x4];
ffa0824e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa08250:	2e 4c       	BITCLR (R6, 0x5);		/* bit  5 */
ffa08252:	f6 bb       	[FP -0x4] = R6;
ffa08254:	00 95       	R0 = W[P0] (Z);
ffa08256:	01 95       	R1 = W[P0] (Z);
ffa08258:	02 e1 ff 0f 	R2.L = 0xfff;		/* (4095)	R2=0xfff(4095) */
ffa0825c:	10 54       	R0 = R0 & R2;
ffa0825e:	51 54       	R1 = R1 & R2;
ffa08260:	81 4f       	R1 <<= 0x10;
ffa08262:	88 50       	R2 = R0 + R1;
ffa08264:	f5 60       	R5 = 0x1e (X);		/*		R5=0x0(  0) */
ffa08266:	24 e1 80 00 	R4 = 0x80 (X);		/*		R4=0x80(128) */
ffa0826a:	35 08       	CC = R5 == R6;
ffa0826c:	3c 07       	IF CC R7 = R4;
ffa0826e:	8f b5       	W[P1 + 0xc] = R7;
ffa08270:	05 9c       	R5 = [I0++];
ffa08272:	00 00       	NOP;
ffa08274:	00 00       	NOP;
ffa08276:	00 00       	NOP;
ffa08278:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || NOP;
ffa0827c:	09 9c 00 00 
ffa08280:	01 c8 15 88 	A1 += R2.H * R5.L, A0 += R2.L * R5.L || R6 = [I0++] || NOP;
ffa08284:	06 9c 00 00 
ffa08288:	25 c0 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND);
ffa0828c:	00 c0 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L;
ffa08290:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R5 = [I1++] || R7 = [I0++];
ffa08294:	0d 9c 07 9c 
ffa08298:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R2 || NOP;
ffa0829c:	12 9e 00 00 
ffa082a0:	83 c6 40 00 	A0 = A0 << 0x8;
ffa082a4:	83 c6 40 10 	A1 = A1 << 0x8;
ffa082a8:	07 c0 00 38 	R0.H = A1, R0.L = A0;
ffa082ac:	10 c4 00 c0 	A1 = ABS A0, A0 = ABS A0;
ffa082b0:	06 c9 3f f1 	R4.H = (A1 -= R7.H * R7.H), R4.L = (A0 -= R7.L * R7.L) (IS) || R6 = [I0++] || NOP;
ffa082b4:	06 9c 00 00 
ffa082b8:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa082bc:	00 00 00 00 
ffa082c0:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa082c4:	00 00 00 00 
ffa082c8:	06 cc 18 86 	R3 = ABS R3 (V) || R7 = [FP -0x2c] || NOP;
ffa082cc:	57 b9 00 00 
ffa082d0:	04 c9 07 a1 	R4.H = (A1 = R0.H * R7.L), R4.L = (A0 = R0.L * R7.L) (IS) || I1 += M1 || [I2++] = R3;
ffa082d4:	65 9e 13 9e 
ffa082d8:	03 c8 00 18 	MNOP || R1 = [I1++] || [I2++] = R4;
ffa082dc:	09 9c 14 9e 
ffa082e0:	03 c8 00 18 	MNOP || R1 = [I1 ++ M2] || R2 = [I0++];
ffa082e4:	c9 9d 02 9c 
ffa082e8:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa082ec:	c9 9d 02 9c 
ffa082f0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa082f4:	c9 9d 02 9c 
ffa082f8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa082fc:	c9 9d 02 9c 
ffa08300:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa08304:	c9 9d 02 9c 
ffa08308:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa0830c:	c9 9d 02 9c 
ffa08310:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa08314:	c9 9d 02 9c 
ffa08318:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1 ++ M1] || R2 = [I0 ++ M0];
ffa0831c:	a9 9d 82 9d 
ffa08320:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || [I2++] = R0 || R1 = [I1--];
ffa08324:	10 9e 89 9c 
ffa08328:	81 ce 88 4d 	R6 = R0 >>> 0xf (V, S) || R1 = [I1 ++ M2] || R2 = [I0++];
ffa0832c:	c9 9d 02 9c 
ffa08330:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || NOP || NOP;
ffa08334:	00 00 00 00 
ffa08338:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa0833c:	c9 9d 82 9c 
ffa08340:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa08344:	e5 9f 00 00 
ffa08348:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa0834c:	c9 9d 82 9c 
ffa08350:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa08354:	e5 9f 00 00 
ffa08358:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa0835c:	c9 9d 82 9c 
ffa08360:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa08364:	e5 9f 00 00 
ffa08368:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa0836c:	c9 9d 82 9c 
ffa08370:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa08374:	e5 9f 00 00 
ffa08378:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa0837c:	c9 9d 82 9c 
ffa08380:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa08384:	e5 9f 00 00 
ffa08388:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa0838c:	c9 9d 82 9c 
ffa08390:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa08394:	e5 9f 00 00 
ffa08398:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M3] || R2 = [I0--];
ffa0839c:	e9 9d 82 9c 
ffa083a0:	03 c8 00 18 	MNOP || [I0++] = R5 || NOP;
ffa083a4:	05 9e 00 00 
ffa083a8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa083ac:	05 9c 09 9c 
ffa083b0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || R2 = [I1++];
ffa083b4:	06 9c 0a 9c 
ffa083b8:	01 c8 0e c8 	A1 += R1.H * R6.H, A0 += R1.L * R6.L || R7 = [I0++] || R3 = [I1++];
ffa083bc:	07 9c 0b 9c 
ffa083c0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa083c4:	05 9c 0c 9c 
ffa083c8:	01 c8 1f c8 	A1 += R3.H * R7.H, A0 += R3.L * R7.L || [I2++] = R0 || NOP;
ffa083cc:	10 9e 00 00 
ffa083d0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa083d4:	11 9e 00 00 
ffa083d8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa083dc:	05 9c 10 9e 
ffa083e0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R3;
ffa083e4:	06 9c 13 9e 
ffa083e8:	01 c8 1e c8 	A1 += R3.H * R6.H, A0 += R3.L * R6.L || R7 = [I0++] || R1 = [I1++];
ffa083ec:	07 9c 09 9c 
ffa083f0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R2 = [I1++] || NOP;
ffa083f4:	0a 9c 00 00 
ffa083f8:	01 c8 0f c8 	A1 += R1.H * R7.H, A0 += R1.L * R7.L || R5 = [I0++] || NOP;
ffa083fc:	05 9c 00 00 
ffa08400:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || NOP || NOP;
ffa08404:	00 00 00 00 
ffa08408:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa0840c:	05 9c 10 9e 
ffa08410:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R1;
ffa08414:	06 9c 11 9e 
ffa08418:	01 c8 0e c8 	A1 += R1.H * R6.H, A0 += R1.L * R6.L || R7 = [I0++] || R3 = [I1++];
ffa0841c:	07 9c 0b 9c 
ffa08420:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R4 = [I1++] || NOP;
ffa08424:	0c 9c 00 00 
ffa08428:	01 c8 1f c8 	A1 += R3.H * R7.H, A0 += R3.L * R7.L || R5 = [I0++] || NOP;
ffa0842c:	05 9c 00 00 
ffa08430:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || NOP || NOP;
ffa08434:	00 00 00 00 
ffa08438:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa0843c:	05 9c 10 9e 
ffa08440:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R3;
ffa08444:	06 9c 13 9e 
ffa08448:	01 c8 1e c8 	A1 += R3.H * R6.H, A0 += R3.L * R6.L || R7 = [I0++] || R1 = [I1++];
ffa0844c:	07 9c 09 9c 
ffa08450:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R2 = [I1++] || NOP;
ffa08454:	0a 9c 00 00 
ffa08458:	01 c8 0f c8 	A1 += R1.H * R7.H, A0 += R1.L * R7.L || R5 = [I0++] || NOP;
ffa0845c:	05 9c 00 00 
ffa08460:	25 c0 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND);
ffa08464:	10 9e       	[I2++] = R0;
ffa08466:	11 9e       	[I2++] = R1;
ffa08468:	40 01       	[--SP] = R0;
ffa0846a:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa0846e:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08472:	02 e1 ff 0f 	R2.L = 0xfff;		/* (4095)	R2=0xfff(4095) */
ffa08476:	10 54       	R0 = R0 & R2;
ffa08478:	51 54       	R1 = R1 & R2;
ffa0847a:	81 4f       	R1 <<= 0x10;
ffa0847c:	88 50       	R2 = R0 + R1;
ffa0847e:	05 9c       	R5 = [I0++];
ffa08480:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || NOP;
ffa08484:	09 9c 00 00 
ffa08488:	01 c8 15 88 	A1 += R2.H * R5.L, A0 += R2.L * R5.L || R6 = [I0++] || NOP;
ffa0848c:	06 9c 00 00 
ffa08490:	25 c0 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND);
ffa08494:	00 c0 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L;
ffa08498:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R5 = [I1++] || R7 = [I0++];
ffa0849c:	0d 9c 07 9c 
ffa084a0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R2 || NOP;
ffa084a4:	12 9e 00 00 
ffa084a8:	83 c6 40 00 	A0 = A0 << 0x8;
ffa084ac:	83 c6 40 10 	A1 = A1 << 0x8;
ffa084b0:	07 c0 00 38 	R0.H = A1, R0.L = A0;
ffa084b4:	10 c4 00 c0 	A1 = ABS A0, A0 = ABS A0;
ffa084b8:	06 c9 3f f1 	R4.H = (A1 -= R7.H * R7.H), R4.L = (A0 -= R7.L * R7.L) (IS) || R6 = [I0++] || NOP;
ffa084bc:	06 9c 00 00 
ffa084c0:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa084c4:	00 00 00 00 
ffa084c8:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa084cc:	00 00 00 00 
ffa084d0:	06 cc 18 86 	R3 = ABS R3 (V) || R7 = [FP -0x2c] || NOP;
ffa084d4:	57 b9 00 00 
ffa084d8:	24 c9 07 a1 	R4.H = (A1 = R0.H * R7.L), R4.L = (A0 = R0.L * R7.L) (ISS2) || I1 += M1 || [I2++] = R3;
ffa084dc:	65 9e 13 9e 
ffa084e0:	03 c8 00 18 	MNOP || R1 = [I1++] || [I2++] = R4;
ffa084e4:	09 9c 14 9e 
ffa084e8:	03 c8 00 18 	MNOP || R1 = [I1 ++ M2] || R2 = [I0++];
ffa084ec:	c9 9d 02 9c 
ffa084f0:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa084f4:	c9 9d 02 9c 
ffa084f8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa084fc:	c9 9d 02 9c 
ffa08500:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa08504:	c9 9d 02 9c 
ffa08508:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa0850c:	c9 9d 02 9c 
ffa08510:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa08514:	c9 9d 02 9c 
ffa08518:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M2] || R2 = [I0++];
ffa0851c:	c9 9d 02 9c 
ffa08520:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1 ++ M1] || R2 = [I0 ++ M0];
ffa08524:	a9 9d 82 9d 
ffa08528:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || [I2++] = R0 || R1 = [I1--];
ffa0852c:	10 9e 89 9c 
ffa08530:	81 ce 88 4d 	R6 = R0 >>> 0xf (V, S) || R1 = [I1 ++ M2] || R2 = [I0++];
ffa08534:	c9 9d 02 9c 
ffa08538:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || NOP || NOP;
ffa0853c:	00 00 00 00 
ffa08540:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa08544:	c9 9d 82 9c 
ffa08548:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa0854c:	e5 9f 00 00 
ffa08550:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa08554:	c9 9d 82 9c 
ffa08558:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa0855c:	e5 9f 00 00 
ffa08560:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa08564:	c9 9d 82 9c 
ffa08568:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa0856c:	e5 9f 00 00 
ffa08570:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa08574:	c9 9d 82 9c 
ffa08578:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa0857c:	e5 9f 00 00 
ffa08580:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa08584:	c9 9d 82 9c 
ffa08588:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa0858c:	e5 9f 00 00 
ffa08590:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M2] || R2 = [I0--];
ffa08594:	c9 9d 82 9c 
ffa08598:	00 c8 17 c2 	A1 = R2.H * R7.H, A0 = R2.L * R7.H || [I0 ++ M3] = R5 || NOP;
ffa0859c:	e5 9f 00 00 
ffa085a0:	05 c8 4e e9 	R5.H = (A1 += R1.H * R6.H), R5.L = (A0 += R1.L * R6.L) || R1 = [I1 ++ M3] || R2 = [I0--];
ffa085a4:	e9 9d 82 9c 
ffa085a8:	03 c8 00 18 	MNOP || [I0++] = R5 || NOP;
ffa085ac:	05 9e 00 00 
ffa085b0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa085b4:	05 9c 09 9c 
ffa085b8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || R2 = [I1++];
ffa085bc:	06 9c 0a 9c 
ffa085c0:	01 c8 0e c8 	A1 += R1.H * R6.H, A0 += R1.L * R6.L || R7 = [I0++] || R3 = [I1++];
ffa085c4:	07 9c 0b 9c 
ffa085c8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa085cc:	05 9c 0c 9c 
ffa085d0:	01 c8 1f c8 	A1 += R3.H * R7.H, A0 += R3.L * R7.L || [I2++] = R0 || NOP;
ffa085d4:	10 9e 00 00 
ffa085d8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa085dc:	11 9e 00 00 
ffa085e0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa085e4:	05 9c 10 9e 
ffa085e8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R3;
ffa085ec:	06 9c 13 9e 
ffa085f0:	01 c8 1e c8 	A1 += R3.H * R6.H, A0 += R3.L * R6.L || R7 = [I0++] || R1 = [I1++];
ffa085f4:	07 9c 09 9c 
ffa085f8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R2 = [I1++] || NOP;
ffa085fc:	0a 9c 00 00 
ffa08600:	01 c8 0f c8 	A1 += R1.H * R7.H, A0 += R1.L * R7.L || R5 = [I0++] || NOP;
ffa08604:	05 9c 00 00 
ffa08608:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || NOP || NOP;
ffa0860c:	00 00 00 00 
ffa08610:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08614:	05 9c 10 9e 
ffa08618:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R1;
ffa0861c:	06 9c 11 9e 
ffa08620:	01 c8 0e c8 	A1 += R1.H * R6.H, A0 += R1.L * R6.L || R7 = [I0++] || R3 = [I1++];
ffa08624:	07 9c 0b 9c 
ffa08628:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R4 = [I1++] || NOP;
ffa0862c:	0c 9c 00 00 
ffa08630:	01 c8 1f c8 	A1 += R3.H * R7.H, A0 += R3.L * R7.L || R5 = [I0++] || NOP;
ffa08634:	05 9c 00 00 
ffa08638:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || NOP || NOP;
ffa0863c:	00 00 00 00 
ffa08640:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08644:	05 9c 10 9e 
ffa08648:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R6 = [I0++] || [I2++] = R3;
ffa0864c:	06 9c 13 9e 
ffa08650:	01 c8 1e c8 	A1 += R3.H * R6.H, A0 += R3.L * R6.L || R7 = [I0++] || R1 = [I1++];
ffa08654:	07 9c 09 9c 
ffa08658:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R2 = [I1++] || NOP;
ffa0865c:	0a 9c 00 00 
ffa08660:	01 c8 0f c8 	A1 += R1.H * R7.H, A0 += R1.L * R7.L || R5 = [I0++] || NOP;
ffa08664:	05 9c 00 00 
ffa08668:	25 c0 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND);
ffa0866c:	03 c8 00 18 	MNOP || NOP || [I2++] = R3;
ffa08670:	00 00 13 9e 
ffa08674:	03 c8 00 18 	MNOP || R2 = [SP++] || [I2++] = R1;
ffa08678:	32 90 11 9e 
ffa0867c:	81 c6 c2 05 	R2 = R2 >>> 0x8 (V);
ffa08680:	81 c6 c3 07 	R3 = R3 >>> 0x8 (V);
ffa08684:	18 c4 13 08 	R4 = BYTEPACK (R2, R3);
ffa08688:	40 b9       	R0 = [FP -0x30];
ffa0868a:	04 59       	R4 = R4 ^ R0;
ffa0868c:	04 30       	R0 = R4;
ffa0868e:	00 00       	NOP;
ffa08690:	08 cc 00 80 	A1 = A0 = 0 || R2 = [I0++] || NOP;
ffa08694:	02 9c 00 00 
ffa08698:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0869c:	18 9c 02 9c 
ffa086a0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086a4:	18 9c 02 9c 
ffa086a8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086ac:	18 9c 02 9c 
ffa086b0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086b4:	18 9c 02 9c 
ffa086b8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086bc:	18 9c 02 9c 
ffa086c0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086c4:	18 9c 02 9c 
ffa086c8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086cc:	18 9c 02 9c 
ffa086d0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086d4:	18 9c 02 9c 
ffa086d8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086dc:	18 9c 02 9c 
ffa086e0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086e4:	18 9c 02 9c 
ffa086e8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086ec:	18 9c 02 9c 
ffa086f0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086f4:	18 9c 02 9c 
ffa086f8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa086fc:	18 9c 02 9c 
ffa08700:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa08704:	18 9c 02 9c 
ffa08708:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0870c:	18 9c 02 9c 
ffa08710:	12 cc 02 00 	SAA (R1:0, R3:2) || [I3++] = R4 || NOP;
ffa08714:	1c 9e 00 00 
ffa08718:	8f c8 00 38 	R1 = A1, R0 = A0 (FU) || I3 += M0 || R2 = [I0++];
ffa0871c:	63 9e 02 9c 
ffa08720:	00 cc 02 e0 	R0 = R0 -|- R2 (S) || I3 -= M3 || R3 = [I0++];
ffa08724:	7f 9e 03 9c 
ffa08728:	00 cc 0b e2 	R1 = R1 -|- R3 (S) || I3 += M0 || NOP;
ffa0872c:	63 9e 00 00 
ffa08730:	81 c6 88 01 	R0 = R0 >>> 0xf (V);
ffa08734:	81 c6 89 03 	R1 = R1 >>> 0xf (V);
ffa08738:	0f c4 00 c0 	R0 = -R0 (V);
ffa0873c:	0f c4 08 c2 	R1 = -R1 (V);
ffa08740:	09 4f       	R1 <<= 0x1;
ffa08742:	88 51       	R6 = R0 + R1;
ffa08744:	00 00       	NOP;
ffa08746:	00 00       	NOP;
ffa08748:	08 cc 00 80 	A1 = A0 = 0 || R0 = [I3++] || R2 = [I0++];
ffa0874c:	18 9c 02 9c 
ffa08750:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa08754:	18 9c 02 9c 
ffa08758:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0875c:	18 9c 02 9c 
ffa08760:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa08764:	18 9c 02 9c 
ffa08768:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0876c:	18 9c 02 9c 
ffa08770:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa08774:	18 9c 02 9c 
ffa08778:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0877c:	18 9c 02 9c 
ffa08780:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa08784:	18 9c 02 9c 
ffa08788:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0878c:	18 9c 02 9c 
ffa08790:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa08794:	18 9c 02 9c 
ffa08798:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa0879c:	18 9c 02 9c 
ffa087a0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa087a4:	18 9c 02 9c 
ffa087a8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa087ac:	18 9c 02 9c 
ffa087b0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa087b4:	18 9c 02 9c 
ffa087b8:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa087bc:	18 9c 02 9c 
ffa087c0:	12 cc 02 00 	SAA (R1:0, R3:2) || R0 = [I3++] || R2 = [I0++];
ffa087c4:	18 9c 02 9c 
ffa087c8:	12 cc 02 00 	SAA (R1:0, R3:2) || NOP || NOP;
ffa087cc:	00 00 00 00 
ffa087d0:	8f c8 00 38 	R1 = A1, R0 = A0 (FU) || R2 = [I0++] || NOP;
ffa087d4:	02 9c 00 00 
ffa087d8:	00 cc 02 e0 	R0 = R0 -|- R2 (S) || R3 = [I0++] || NOP;
ffa087dc:	03 9c 00 00 
ffa087e0:	00 c4 0b e2 	R1 = R1 -|- R3 (S);
ffa087e4:	81 c6 88 01 	R0 = R0 >>> 0xf (V);
ffa087e8:	81 c6 89 03 	R1 = R1 >>> 0xf (V);
ffa087ec:	0f c4 00 c0 	R0 = -R0 (V);
ffa087f0:	0f c4 08 c2 	R1 = -R1 (V);
ffa087f4:	19 4f       	R1 <<= 0x3;
ffa087f6:	10 4f       	R0 <<= 0x2;
ffa087f8:	08 50       	R0 = R0 + R1;
ffa087fa:	30 50       	R0 = R0 + R6;
ffa087fc:	f8 b9       	P0 = [FP -0x4];
ffa087fe:	c9 b8       	P1 = [FP -0x50];
ffa08800:	ed b8       	P5 = [FP -0x48];
ffa08802:	80 c6 20 b0 	R0.H = R0.H << 0x4;
ffa08806:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa0880a:	40 43       	R0 = R0.B (Z);
ffa0880c:	70 30       	R6 = P0;
ffa0880e:	45 5b       	P5 = P5 + P0;
ffa08810:	29 99       	R1 = B[P5] (Z);
ffa08812:	41 56       	R1 = R1 | R0;
ffa08814:	01 32       	P0 = R1;
ffa08816:	29 9b       	B[P5] = R1;
ffa08818:	03 69       	P3 = 0x20 (X);		/*		P3=0x0(  0) */
ffa0881a:	5d 5b       	P5 = P5 + P3;
ffa0881c:	41 5a       	P1 = P1 + P0;
ffa0881e:	0a 99       	R2 = B[P1] (Z);
ffa08820:	2a 9b       	B[P5] = R2;
ffa08822:	f8 60       	R0 = 0x1f (X);		/*		R0=0x0(  0) */
ffa08824:	06 08       	CC = R6 == R0;
ffa08826:	2f 14       	IF !CC JUMP 0xffa08884 <end_txchan> (BP);
ffa08828:	78 b9       	P0 = [FP -0x24];
ffa0882a:	89 b9       	P1 = [FP -0x20];
ffa0882c:	9b b9       	P3 = [FP -0x1c];
ffa0882e:	ad b9       	P5 = [FP -0x18];
ffa08830:	00 99       	R0 = B[P0] (Z);
ffa08832:	09 99       	R1 = B[P1] (Z);
ffa08834:	1a 99       	R2 = B[P3] (Z);
ffa08836:	2b 99       	R3 = B[P5] (Z);
ffa08838:	20 9a       	B[P4++] = R0;
ffa0883a:	21 9a       	B[P4++] = R1;
ffa0883c:	22 9a       	B[P4++] = R2;
ffa0883e:	23 9a       	B[P4++] = R3;
ffa08840:	e4 b9       	R4 = [FP -0x8];
ffa08842:	37 60       	R7 = 0x6 (X);		/*		R7=0x0(  0) */
ffa08844:	0c 64       	R4 += 0x1;		/* (  1) */
ffa08846:	6b 9f       	I3 += 0x4;		/* (  4) */
ffa08848:	3c 08       	CC = R4 == R7;
ffa0884a:	19 14       	IF !CC JUMP 0xffa0887c <end_txchan_qs> (BP);
ffa0884c:	d5 b9       	R5 = [FP -0xc];
ffa0884e:	0d 32       	P1 = R5;
ffa08850:	b8 b8       	P0 = [FP -0x54];
ffa08852:	dd b8       	P5 = [FP -0x4c];
ffa08854:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08856:	d5 bb       	[FP -0xc] = R5;
ffa08858:	c8 45       	P0 = (P0 + P1) << 0x2;
ffa0885a:	a5 b8       	R5 = [FP -0x58];
ffa0885c:	07 91       	R7 = [P0];
ffa0885e:	28 90       	R0 = [P5++];
ffa08860:	29 90       	R1 = [P5++];
ffa08862:	38 56       	R0 = R0 | R7;
ffa08864:	69 56       	R1 = R1 | R5;
ffa08866:	7d 30       	R7 = P5;
ffa08868:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffff80(-128) */
ffa0886a:	45 5b       	P5 = P5 + P0;
ffa0886c:	37 4c       	BITCLR (R7, 0x6);		/* bit  6 */
ffa0886e:	2f 4a       	BITSET (R7, 0x5);		/* bit  5 */
ffa08870:	d7 ba       	[FP -0x4c] = R7;
ffa08872:	20 92       	[P4++] = R0;
ffa08874:	21 92       	[P4++] = R1;
ffa08876:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08878:	ac 92       	[P5--] = R4;
ffa0887a:	ac 92       	[P5--] = R4;

ffa0887c <end_txchan_qs>:
ffa0887c:	e4 bb       	[FP -0x8] = R4;
ffa0887e:	7c 30       	R7 = P4;
ffa08880:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08882:	27 32       	P4 = R7;

ffa08884 <end_txchan>:
ffa08884:	f9 b8       	P1 = [FP -0x44];
ffa08886:	0b b9       	P3 = [FP -0x40];
ffa08888:	10 00       	RTS;

ffa0888a <_clearirq_asm>:
ffa0888a:	67 01       	[--SP] = RETS;
ffa0888c:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0888e:	8f b4       	W[P1 + 0x4] = R7;
ffa08890:	ff e3 d4 fc 	CALL 0xffa08238 <_get_asm>;
ffa08894:	3e 61       	R6 = 0x27 (X);		/*		R6=0x0(  0) */
ffa08896:	1e 97       	W[P3] = R6;
ffa08898:	ff e3 d0 fc 	CALL 0xffa08238 <_get_asm>;
ffa0889c:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa088a0:	1e 97       	W[P3] = R6;
ffa088a2:	ff e3 cb fc 	CALL 0xffa08238 <_get_asm>;
ffa088a6:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa088a8:	0f b5       	W[P1 + 0x8] = R7;
ffa088aa:	ff e3 c7 fc 	CALL 0xffa08238 <_get_asm>;
ffa088ae:	27 01       	RETS = [SP++];
ffa088b0:	10 00       	RTS;

ffa088b2 <_waitirq_asm>:
ffa088b2:	67 01       	[--SP] = RETS;
ffa088b4:	27 e1 b6 00 	R7 = 0xb6 (X);		/*		R7=0xb6(182) */
ffa088b8:	67 bb       	[FP -0x28] = R7;

ffa088ba <waitirq_loop>:
ffa088ba:	0e 95       	R6 = W[P1] (Z);
ffa088bc:	1e 49       	CC = BITTST (R6, 0x3);		/* bit  3 */
ffa088be:	0c 10       	IF !CC JUMP 0xffa088d6 <waitirq_end>;
ffa088c0:	ff e3 bc fc 	CALL 0xffa08238 <_get_asm>;
ffa088c4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa088c6:	67 b9       	R7 = [FP -0x28];
ffa088c8:	3e 08       	CC = R6 == R7;
ffa088ca:	06 18       	IF CC JUMP 0xffa088d6 <waitirq_end>;
ffa088cc:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa088ce:	67 bb       	[FP -0x28] = R7;
ffa088d0:	ff e3 b4 fc 	CALL 0xffa08238 <_get_asm>;
ffa088d4:	f3 2f       	JUMP.S 0xffa088ba <waitirq_loop>;

ffa088d6 <waitirq_end>:
ffa088d6:	ff e3 b1 fc 	CALL 0xffa08238 <_get_asm>;
ffa088da:	27 01       	RETS = [SP++];
ffa088dc:	10 00       	RTS;

ffa088de <_clearfifos_asm>:
ffa088de:	67 01       	[--SP] = RETS;
ffa088e0:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa088e2:	8f b4       	W[P1 + 0x4] = R7;
ffa088e4:	ff e3 aa fc 	CALL 0xffa08238 <_get_asm>;
ffa088e8:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa088ec:	1e 97       	W[P3] = R6;
ffa088ee:	ff e3 a5 fc 	CALL 0xffa08238 <_get_asm>;
ffa088f2:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa088f4:	0f b5       	W[P1 + 0x8] = R7;
ffa088f6:	ff e3 a1 fc 	CALL 0xffa08238 <_get_asm>;
ffa088fa:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa088fc:	8f b4       	W[P1 + 0x4] = R7;
ffa088fe:	ff e3 9d fc 	CALL 0xffa08238 <_get_asm>;
ffa08902:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08906:	1e 97       	W[P3] = R6;
ffa08908:	ff e3 98 fc 	CALL 0xffa08238 <_get_asm>;
ffa0890c:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0890e:	0f b5       	W[P1 + 0x8] = R7;
ffa08910:	ff e3 94 fc 	CALL 0xffa08238 <_get_asm>;
ffa08914:	27 01       	RETS = [SP++];
ffa08916:	10 00       	RTS;

ffa08918 <_radio_bidi_asm>:
ffa08918:	0d e1 14 05 	P5.L = 0x514;		/* (1300)	P5=0xff900514 */
ffa0891c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00514(-4193004) */
ffa08920:	80 e1 04 00 	R0 = 0x4 (Z);		/*		R0=0x4(  4) */
ffa08924:	28 97       	W[P5] = R0;
ffa08926:	0f e1 00 6f 	FP.L = 0x6f00;		/* (28416)	FP=0x6f00 */
ffa0892a:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff906f00 */
ffa0892e:	08 e1 18 08 	P0.L = 0x818;		/* (2072)	P0=0xffff0818(-63464) */
ffa08932:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00818(-4192232) */
ffa08936:	18 bb       	[FP -0x3c] = P0;
ffa08938:	09 e1 00 07 	P1.L = 0x700;		/* (1792)	P1=0xffc00700(-4192512) */
ffa0893c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa08940:	f9 ba       	[FP -0x44] = P1;
ffa08942:	0a e1 00 70 	P2.L = 0x7000;		/* (28672)	P2=0x7000 */
ffa08946:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff807000 */
ffa0894a:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0x50c */
ffa0894e:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0050c(-4193012) */
ffa08952:	0b bb       	[FP -0x40] = P3;
ffa08954:	0c e1 00 70 	P4.L = 0x7000;		/* (28672)	P4=0x7000 */
ffa08958:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff807000 */
ffa0895c:	80 e1 1e 00 	R0 = 0x1e (Z);		/*		R0=0x1e( 30) */
ffa08960:	f0 bb       	[FP -0x4] = R0;
ffa08962:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08964:	e0 bb       	[FP -0x8] = R0;
ffa08966:	d0 bb       	[FP -0xc] = R0;
ffa08968:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa0896c:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa08970:	40 bb       	[FP -0x30] = R0;
ffa08972:	00 e1 55 55 	R0.L = 0x5555;		/* (21845)	R0=0x80805555(-2139073195) */
ffa08976:	40 e1 55 55 	R0.H = 0x5555;		/* (21845)	R0=0x55555555(1431655765) */
ffa0897a:	30 bb       	[FP -0x34] = R0;
ffa0897c:	00 e1 aa aa 	R0.L = 0xaaaa;		/* (-21846)	R0=0x5555aaaa(1431677610) */
ffa08980:	40 e1 aa aa 	R0.H = 0xaaaa;		/* (-21846)	R0=0xaaaaaaaa(-1431655766) */
ffa08984:	20 bb       	[FP -0x38] = R0;
ffa08986:	00 e1 03 00 	R0.L = 0x3;		/* (  3)	R0=0xaaaa0003(-1431699453) */
ffa0898a:	40 e1 ff 7f 	R0.H = 0x7fff;		/* (32767)	R0=0x7fff0003(2147418115) */
ffa0898e:	50 bb       	[FP -0x2c] = R0;
ffa08990:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0x7fff6000(2147442688) */
ffa08994:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806000(-8364032) */
ffa08998:	e0 ba       	[FP -0x48] = R0;
ffa0899a:	00 e1 20 60 	R0.L = 0x6020;		/* (24608)	R0=0xff806020(-8364000) */
ffa0899e:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806020(-8364000) */
ffa089a2:	d0 ba       	[FP -0x4c] = R0;
ffa089a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa089a6:	90 ba       	[FP -0x5c] = R0;
ffa089a8:	00 e1 00 61 	R0.L = 0x6100;		/* (24832)	R0=0x6100(24832) */
ffa089ac:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806100(-8363776) */
ffa089b0:	c0 ba       	[FP -0x50] = R0;
ffa089b2:	00 e1 00 62 	R0.L = 0x6200;		/* (25088)	R0=0xff806200(-8363520) */
ffa089b6:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806200(-8363520) */
ffa089ba:	82 c6 f0 81 	R0 = R0 >> 0x2;
ffa089be:	b0 ba       	[FP -0x54] = R0;
ffa089c0:	00 e1 29 40 	R0.L = 0x4029;		/* (16425)	R0=0xff804029(-8372183) */
ffa089c4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804029(-8372183) */
ffa089c8:	70 bb       	[FP -0x24] = R0;
ffa089ca:	00 e1 2b 40 	R0.L = 0x402b;		/* (16427)	R0=0xff80402b(-8372181) */
ffa089ce:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80402b(-8372181) */
ffa089d2:	80 bb       	[FP -0x20] = R0;
ffa089d4:	00 e1 59 40 	R0.L = 0x4059;		/* (16473)	R0=0xff804059(-8372135) */
ffa089d8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804059(-8372135) */
ffa089dc:	90 bb       	[FP -0x1c] = R0;
ffa089de:	00 e1 5b 40 	R0.L = 0x405b;		/* (16475)	R0=0xff80405b(-8372133) */
ffa089e2:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80405b(-8372133) */
ffa089e6:	a0 bb       	[FP -0x18] = R0;
ffa089e8:	20 e1 93 01 	R0 = 0x193 (X);		/*		R0=0x193(403) */
ffa089ec:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa089f0:	40 60       	R0 = 0x8 (X);		/*		R0=0x0(  0) */
ffa089f2:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa089f6:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa089fa:	0f b5       	W[P1 + 0x8] = R7;
ffa089fc:	24 00       	SSYNC;
ffa089fe:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08a02:	8f b4       	W[P1 + 0x4] = R7;
ffa08a04:	24 00       	SSYNC;
ffa08a06:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08a0a:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08a0e:	3c e1 00 2d 	L0 = 0x2d00 (X);		/*		L0=0x2d00(11520) */
ffa08a12:	34 e1 e4 ff 	M0 = -0x1c (X);		/*		M0=0xffffffe4(-28) */
ffa08a16:	80 36       	B0 = I0;
ffa08a18:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa08a1c:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa08a20:	3d e1 00 0e 	L1 = 0xe00 (X);		/*		L1=0xe00(3584) */
ffa08a24:	35 e1 f0 fc 	M1 = -0x310 (X);		/*		M1=0xfffffcf0(-784) */
ffa08a28:	89 36       	B1 = I1;
ffa08a2a:	91 34       	I2 = I1;
ffa08a2c:	f5 36       	L2 = L1;
ffa08a2e:	36 e1 70 00 	M2 = 0x70 (X);		/*		M2=0x70(112) */
ffa08a32:	d1 36       	B2 = B1;
ffa08a34:	13 e1 00 50 	I3.L = 0x5000;		/* (20480)	I3=0x5000(20480) */
ffa08a38:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805000(-8368128) */
ffa08a3c:	3f e1 00 08 	L3 = 0x800 (X);		/*		L3=0x800(2048) */
ffa08a40:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa08a44:	9b 36       	B3 = I3;
ffa08a46:	fd 69       	P5 = 0x3f (X);		/*		P5=0x0(  0) */
ffa08a48:	a2 e0 f2 51 	LSETUP(0xffa08a4c <lt_top>, 0xffa08e2c <lt_bot>) LC0 = P5;

ffa08a4c <lt_top>:
ffa08a4c:	15 68       	P5 = 0x2 (X);		/*		P5=0x0(  0) */
ffa08a4e:	b2 e0 62 50 	LSETUP(0xffa08a52 <lt2_top>, 0xffa08b12 <lt2_bot>) LC1 = P5;

ffa08a52 <lt2_top>:
ffa08a52:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa08a56:	20 9e       	W[I0++] = R0.L;
ffa08a58:	00 e1 00 c0 	R0.L = 0xc000;		/* (-16384)	R0=0xc000(49152) */
ffa08a5c:	20 9e       	W[I0++] = R0.L;
ffa08a5e:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x4000(16384) */
ffa08a62:	20 9e       	W[I0++] = R0.L;
ffa08a64:	00 e1 20 03 	R0.L = 0x320;		/* (800)	R0=0x320(800) */
ffa08a68:	20 9e       	W[I0++] = R0.L;
ffa08a6a:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08a6e:	20 9e       	W[I0++] = R0.L;
ffa08a70:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08a74:	20 9e       	W[I0++] = R0.L;
ffa08a76:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x4000(16384) */
ffa08a7a:	20 9e       	W[I0++] = R0.L;
ffa08a7c:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa08a80:	20 9e       	W[I0++] = R0.L;
ffa08a82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08a84:	00 9e       	[I0++] = R0;
ffa08a86:	00 9e       	[I0++] = R0;
ffa08a88:	00 9e       	[I0++] = R0;
ffa08a8a:	00 9e       	[I0++] = R0;
ffa08a8c:	00 9e       	[I0++] = R0;
ffa08a8e:	00 9e       	[I0++] = R0;
ffa08a90:	00 9e       	[I0++] = R0;
ffa08a92:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08a96:	20 9e       	W[I0++] = R0.L;
ffa08a98:	20 9e       	W[I0++] = R0.L;
ffa08a9a:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08a9e:	20 9e       	W[I0++] = R0.L;
ffa08aa0:	20 9e       	W[I0++] = R0.L;
ffa08aa2:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08aa6:	20 9e       	W[I0++] = R0.L;
ffa08aa8:	20 9e       	W[I0++] = R0.L;
ffa08aaa:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08aae:	20 9e       	W[I0++] = R0.L;
ffa08ab0:	20 9e       	W[I0++] = R0.L;
ffa08ab2:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08ab6:	20 9e       	W[I0++] = R0.L;
ffa08ab8:	20 9e       	W[I0++] = R0.L;
ffa08aba:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08abe:	20 9e       	W[I0++] = R0.L;
ffa08ac0:	20 9e       	W[I0++] = R0.L;
ffa08ac2:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08ac6:	20 9e       	W[I0++] = R0.L;
ffa08ac8:	20 9e       	W[I0++] = R0.L;
ffa08aca:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa08ace:	20 9e       	W[I0++] = R0.L;
ffa08ad0:	20 9e       	W[I0++] = R0.L;
ffa08ad2:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08ad6:	20 9e       	W[I0++] = R0.L;
ffa08ad8:	20 9e       	W[I0++] = R0.L;
ffa08ada:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa08ade:	20 9e       	W[I0++] = R0.L;
ffa08ae0:	20 9e       	W[I0++] = R0.L;
ffa08ae2:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08ae6:	20 9e       	W[I0++] = R0.L;
ffa08ae8:	20 9e       	W[I0++] = R0.L;
ffa08aea:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa08aee:	20 9e       	W[I0++] = R0.L;
ffa08af0:	20 9e       	W[I0++] = R0.L;
ffa08af2:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08af6:	20 9e       	W[I0++] = R0.L;
ffa08af8:	20 9e       	W[I0++] = R0.L;
ffa08afa:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa08afe:	20 9e       	W[I0++] = R0.L;
ffa08b00:	20 9e       	W[I0++] = R0.L;
ffa08b02:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa08b06:	20 9e       	W[I0++] = R0.L;
ffa08b08:	20 9e       	W[I0++] = R0.L;
ffa08b0a:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa08b0e:	20 9e       	W[I0++] = R0.L;
ffa08b10:	20 9e       	W[I0++] = R0.L;

ffa08b12 <lt2_bot>:
ffa08b12:	00 00       	NOP;
ffa08b14:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa08b18:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08b1c:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08b20:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08b24:	08 56       	R0 = R0 | R1;
ffa08b26:	10 56       	R0 = R0 | R2;
ffa08b28:	18 56       	R0 = R0 | R3;
ffa08b2a:	00 9e       	[I0++] = R0;
ffa08b2c:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa08b30:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08b34:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08b38:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08b3c:	08 56       	R0 = R0 | R1;
ffa08b3e:	10 56       	R0 = R0 | R2;
ffa08b40:	18 56       	R0 = R0 | R3;
ffa08b42:	00 9e       	[I0++] = R0;
ffa08b44:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08b48:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08b4c:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08b50:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08b54:	08 56       	R0 = R0 | R1;
ffa08b56:	10 56       	R0 = R0 | R2;
ffa08b58:	18 56       	R0 = R0 | R3;
ffa08b5a:	00 9e       	[I0++] = R0;
ffa08b5c:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa08b60:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08b64:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08b68:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08b6c:	08 56       	R0 = R0 | R1;
ffa08b6e:	10 56       	R0 = R0 | R2;
ffa08b70:	18 56       	R0 = R0 | R3;
ffa08b72:	00 9e       	[I0++] = R0;
ffa08b74:	20 e1 84 00 	R0 = 0x84 (X);		/*		R0=0x84(132) */
ffa08b78:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08b7c:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08b80:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08b84:	08 56       	R0 = R0 | R1;
ffa08b86:	10 56       	R0 = R0 | R2;
ffa08b88:	18 56       	R0 = R0 | R3;
ffa08b8a:	00 9e       	[I0++] = R0;
ffa08b8c:	20 e1 9b 00 	R0 = 0x9b (X);		/*		R0=0x9b(155) */
ffa08b90:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08b94:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08b98:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08b9c:	08 56       	R0 = R0 | R1;
ffa08b9e:	10 56       	R0 = R0 | R2;
ffa08ba0:	18 56       	R0 = R0 | R3;
ffa08ba2:	00 9e       	[I0++] = R0;
ffa08ba4:	20 e1 c3 00 	R0 = 0xc3 (X);		/*		R0=0xc3(195) */
ffa08ba8:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08bac:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08bb0:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08bb4:	08 56       	R0 = R0 | R1;
ffa08bb6:	10 56       	R0 = R0 | R2;
ffa08bb8:	18 56       	R0 = R0 | R3;
ffa08bba:	00 9e       	[I0++] = R0;
ffa08bbc:	20 e1 eb 00 	R0 = 0xeb (X);		/*		R0=0xeb(235) */
ffa08bc0:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08bc4:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08bc8:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08bcc:	08 56       	R0 = R0 | R1;
ffa08bce:	10 56       	R0 = R0 | R2;
ffa08bd0:	18 56       	R0 = R0 | R3;
ffa08bd2:	00 9e       	[I0++] = R0;
ffa08bd4:	20 e1 fa 00 	R0 = 0xfa (X);		/*		R0=0xfa(250) */
ffa08bd8:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08bdc:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08be0:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08be4:	08 56       	R0 = R0 | R1;
ffa08be6:	10 56       	R0 = R0 | R2;
ffa08be8:	18 56       	R0 = R0 | R3;
ffa08bea:	00 9e       	[I0++] = R0;
ffa08bec:	20 e1 e0 00 	R0 = 0xe0 (X);		/*		R0=0xe0(224) */
ffa08bf0:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08bf4:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08bf8:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08bfc:	08 56       	R0 = R0 | R1;
ffa08bfe:	10 56       	R0 = R0 | R2;
ffa08c00:	18 56       	R0 = R0 | R3;
ffa08c02:	00 9e       	[I0++] = R0;
ffa08c04:	20 e1 bb 00 	R0 = 0xbb (X);		/*		R0=0xbb(187) */
ffa08c08:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08c0c:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08c10:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08c14:	08 56       	R0 = R0 | R1;
ffa08c16:	10 56       	R0 = R0 | R2;
ffa08c18:	18 56       	R0 = R0 | R3;
ffa08c1a:	00 9e       	[I0++] = R0;
ffa08c1c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa08c20:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08c24:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08c28:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08c2c:	08 56       	R0 = R0 | R1;
ffa08c2e:	10 56       	R0 = R0 | R2;
ffa08c30:	18 56       	R0 = R0 | R3;
ffa08c32:	00 9e       	[I0++] = R0;
ffa08c34:	20 e1 8e 00 	R0 = 0x8e (X);		/*		R0=0x8e(142) */
ffa08c38:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08c3c:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08c40:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08c44:	08 56       	R0 = R0 | R1;
ffa08c46:	10 56       	R0 = R0 | R2;
ffa08c48:	18 56       	R0 = R0 | R3;
ffa08c4a:	00 9e       	[I0++] = R0;
ffa08c4c:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa08c50:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08c54:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08c58:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08c5c:	08 56       	R0 = R0 | R1;
ffa08c5e:	10 56       	R0 = R0 | R2;
ffa08c60:	18 56       	R0 = R0 | R3;
ffa08c62:	00 9e       	[I0++] = R0;
ffa08c64:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa08c68:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08c6c:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08c70:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08c74:	08 56       	R0 = R0 | R1;
ffa08c76:	10 56       	R0 = R0 | R2;
ffa08c78:	18 56       	R0 = R0 | R3;
ffa08c7a:	00 9e       	[I0++] = R0;
ffa08c7c:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa08c80:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08c84:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08c88:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08c8c:	08 56       	R0 = R0 | R1;
ffa08c8e:	10 56       	R0 = R0 | R2;
ffa08c90:	18 56       	R0 = R0 | R3;
ffa08c92:	00 9e       	[I0++] = R0;
ffa08c94:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0x38( 56) */
ffa08c98:	40 e1 38 00 	R0.H = 0x38;		/* ( 56)	R0=0x380038(3670072) */
ffa08c9c:	00 9e       	[I0++] = R0;
ffa08c9e:	00 9e       	[I0++] = R0;
ffa08ca0:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa08ca4:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08ca8:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08cac:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08cb0:	08 56       	R0 = R0 | R1;
ffa08cb2:	10 56       	R0 = R0 | R2;
ffa08cb4:	18 56       	R0 = R0 | R3;
ffa08cb6:	00 9e       	[I0++] = R0;
ffa08cb8:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa08cbc:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08cc0:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08cc4:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08cc8:	08 56       	R0 = R0 | R1;
ffa08cca:	10 56       	R0 = R0 | R2;
ffa08ccc:	18 56       	R0 = R0 | R3;
ffa08cce:	00 9e       	[I0++] = R0;
ffa08cd0:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08cd4:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08cd8:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08cdc:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08ce0:	08 56       	R0 = R0 | R1;
ffa08ce2:	10 56       	R0 = R0 | R2;
ffa08ce4:	18 56       	R0 = R0 | R3;
ffa08ce6:	00 9e       	[I0++] = R0;
ffa08ce8:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa08cec:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08cf0:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08cf4:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08cf8:	08 56       	R0 = R0 | R1;
ffa08cfa:	10 56       	R0 = R0 | R2;
ffa08cfc:	18 56       	R0 = R0 | R3;
ffa08cfe:	00 9e       	[I0++] = R0;
ffa08d00:	20 e1 84 00 	R0 = 0x84 (X);		/*		R0=0x84(132) */
ffa08d04:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d08:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d0c:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08d10:	08 56       	R0 = R0 | R1;
ffa08d12:	10 56       	R0 = R0 | R2;
ffa08d14:	18 56       	R0 = R0 | R3;
ffa08d16:	00 9e       	[I0++] = R0;
ffa08d18:	20 e1 9b 00 	R0 = 0x9b (X);		/*		R0=0x9b(155) */
ffa08d1c:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d20:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d24:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08d28:	08 56       	R0 = R0 | R1;
ffa08d2a:	10 56       	R0 = R0 | R2;
ffa08d2c:	18 56       	R0 = R0 | R3;
ffa08d2e:	00 9e       	[I0++] = R0;
ffa08d30:	20 e1 c3 00 	R0 = 0xc3 (X);		/*		R0=0xc3(195) */
ffa08d34:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d38:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d3c:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08d40:	08 56       	R0 = R0 | R1;
ffa08d42:	10 56       	R0 = R0 | R2;
ffa08d44:	18 56       	R0 = R0 | R3;
ffa08d46:	00 9e       	[I0++] = R0;
ffa08d48:	20 e1 eb 00 	R0 = 0xeb (X);		/*		R0=0xeb(235) */
ffa08d4c:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d50:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d54:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08d58:	08 56       	R0 = R0 | R1;
ffa08d5a:	10 56       	R0 = R0 | R2;
ffa08d5c:	18 56       	R0 = R0 | R3;
ffa08d5e:	00 9e       	[I0++] = R0;
ffa08d60:	20 e1 fa 00 	R0 = 0xfa (X);		/*		R0=0xfa(250) */
ffa08d64:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d68:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d6c:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08d70:	08 56       	R0 = R0 | R1;
ffa08d72:	10 56       	R0 = R0 | R2;
ffa08d74:	18 56       	R0 = R0 | R3;
ffa08d76:	00 9e       	[I0++] = R0;
ffa08d78:	20 e1 e0 00 	R0 = 0xe0 (X);		/*		R0=0xe0(224) */
ffa08d7c:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d80:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d84:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08d88:	08 56       	R0 = R0 | R1;
ffa08d8a:	10 56       	R0 = R0 | R2;
ffa08d8c:	18 56       	R0 = R0 | R3;
ffa08d8e:	00 9e       	[I0++] = R0;
ffa08d90:	20 e1 bb 00 	R0 = 0xbb (X);		/*		R0=0xbb(187) */
ffa08d94:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08d98:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08d9c:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08da0:	08 56       	R0 = R0 | R1;
ffa08da2:	10 56       	R0 = R0 | R2;
ffa08da4:	18 56       	R0 = R0 | R3;
ffa08da6:	00 9e       	[I0++] = R0;
ffa08da8:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa08dac:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08db0:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08db4:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08db8:	08 56       	R0 = R0 | R1;
ffa08dba:	10 56       	R0 = R0 | R2;
ffa08dbc:	18 56       	R0 = R0 | R3;
ffa08dbe:	00 9e       	[I0++] = R0;
ffa08dc0:	20 e1 8e 00 	R0 = 0x8e (X);		/*		R0=0x8e(142) */
ffa08dc4:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08dc8:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08dcc:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08dd0:	08 56       	R0 = R0 | R1;
ffa08dd2:	10 56       	R0 = R0 | R2;
ffa08dd4:	18 56       	R0 = R0 | R3;
ffa08dd6:	00 9e       	[I0++] = R0;
ffa08dd8:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa08ddc:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08de0:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08de4:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08de8:	08 56       	R0 = R0 | R1;
ffa08dea:	10 56       	R0 = R0 | R2;
ffa08dec:	18 56       	R0 = R0 | R3;
ffa08dee:	00 9e       	[I0++] = R0;
ffa08df0:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa08df4:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08df8:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08dfc:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08e00:	08 56       	R0 = R0 | R1;
ffa08e02:	10 56       	R0 = R0 | R2;
ffa08e04:	18 56       	R0 = R0 | R3;
ffa08e06:	00 9e       	[I0++] = R0;
ffa08e08:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa08e0c:	82 c6 40 82 	R1 = R0 << 0x8;
ffa08e10:	82 c6 41 84 	R2 = R1 << 0x8;
ffa08e14:	82 c6 42 86 	R3 = R2 << 0x8;
ffa08e18:	08 56       	R0 = R0 | R1;
ffa08e1a:	10 56       	R0 = R0 | R2;
ffa08e1c:	18 56       	R0 = R0 | R3;
ffa08e1e:	00 9e       	[I0++] = R0;
ffa08e20:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0x38( 56) */
ffa08e24:	40 e1 38 00 	R0.H = 0x38;		/* ( 56)	R0=0x380038(3670072) */
ffa08e28:	00 9e       	[I0++] = R0;
ffa08e2a:	00 9e       	[I0++] = R0;

ffa08e2c <lt_bot>:
ffa08e2c:	00 00       	NOP;
ffa08e2e:	2d e1 e4 06 	P5 = 0x6e4 (X);		/*		P5=0x6e4(1764) */
ffa08e32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08e34:	a2 e0 04 50 	LSETUP(0xffa08e38 <zer_top>, 0xffa08e3c <zer_bot>) LC0 = P5;

ffa08e38 <zer_top>:
ffa08e38:	08 9e       	[I1++] = R0;
ffa08e3a:	11 9c       	R1 = [I2++];

ffa08e3c <zer_bot>:
ffa08e3c:	0d e1 00 60 	P5.L = 0x6000;		/* (24576)	P5=0x6000 */
ffa08e40:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806000 */
ffa08e44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08e46:	28 92       	[P5++] = R0;
ffa08e48:	28 92       	[P5++] = R0;
ffa08e4a:	28 92       	[P5++] = R0;
ffa08e4c:	28 92       	[P5++] = R0;
ffa08e4e:	28 92       	[P5++] = R0;
ffa08e50:	28 92       	[P5++] = R0;
ffa08e52:	28 92       	[P5++] = R0;
ffa08e54:	28 92       	[P5++] = R0;
ffa08e56:	00 e3 1d 01 	CALL 0xffa09090 <_enc_create>;
ffa08e5a:	0d e1 04 02 	P5.L = 0x204;		/* (516)	P5=0xff800204 */
ffa08e5e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00204(-4193788) */
ffa08e62:	40 e1 0c 00 	R0.H = 0xc;		/* ( 12)	R0=0xc0000(786432) */
ffa08e66:	00 e1 00 35 	R0.L = 0x3500;		/* (13568)	R0=0xc3500(800000) */
ffa08e6a:	a8 92       	[P5--] = R0;
ffa08e6c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08e6e:	28 97       	W[P5] = R0;
ffa08e70:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08e74:	0f b5       	W[P1 + 0x8] = R7;
ffa08e76:	24 00       	SSYNC;
ffa08e78:	0d e1 20 09 	P5.L = 0x920;		/* (2336)	P5=0xffc00920(-4191968) */
ffa08e7c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00920(-4191968) */
ffa08e80:	00 e1 01 04 	R0.L = 0x401;		/* (1025)	R0=0x401(1025) */
ffa08e84:	28 97       	W[P5] = R0;
ffa08e86:	0d e1 20 08 	P5.L = 0x820;		/* (2080)	P5=0xffc00820(-4192224) */
ffa08e8a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00820(-4192224) */
ffa08e8e:	00 e1 03 06 	R0.L = 0x603;		/* (1539)	R0=0x603(1539) */
ffa08e92:	28 97       	W[P5] = R0;

ffa08e94 <radio_loop>:
ffa08e94:	ff e3 d2 f9 	CALL 0xffa08238 <_get_asm>;
ffa08e98:	d5 b9       	R5 = [FP -0xc];
ffa08e9a:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa08e9c:	fc 13       	IF !CC JUMP 0xffa08e94 <radio_loop>;
ffa08e9e:	ff e3 cd f9 	CALL 0xffa08238 <_get_asm>;
ffa08ea2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08ea4:	d5 bb       	[FP -0xc] = R5;
ffa08ea6:	ff e3 1c fd 	CALL 0xffa088de <_clearfifos_asm>;
ffa08eaa:	ff e3 f0 fc 	CALL 0xffa0888a <_clearirq_asm>;
ffa08eae:	85 68       	P5 = 0x10 (X);		/*		P5=0x0(  0) */
ffa08eb0:	a2 e0 24 50 	LSETUP(0xffa08eb4 <wp_top>, 0xffa08ef8 <wp_bot>) LC0 = P5;

ffa08eb4 <wp_top>:
ffa08eb4:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08eb6:	8f b4       	W[P1 + 0x4] = R7;
ffa08eb8:	ff e3 c0 f9 	CALL 0xffa08238 <_get_asm>;
ffa08ebc:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa08ec0:	1e 97       	W[P3] = R6;
ffa08ec2:	ff e3 bb f9 	CALL 0xffa08238 <_get_asm>;
ffa08ec6:	05 69       	P5 = 0x20 (X);		/*		P5=0x0(  0) */
ffa08ec8:	b2 e0 06 50 	LSETUP(0xffa08ecc <pb_top>, 0xffa08ed4 <pb_bot>) LC1 = P5;

ffa08ecc <pb_top>:
ffa08ecc:	16 98       	R6 = B[P2++] (Z);
ffa08ece:	1e 97       	W[P3] = R6;
ffa08ed0:	ff e3 b4 f9 	CALL 0xffa08238 <_get_asm>;

ffa08ed4 <pb_bot>:
ffa08ed4:	00 00       	NOP;
ffa08ed6:	7a 30       	R7 = P2;
ffa08ed8:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08eda:	17 32       	P2 = R7;
ffa08edc:	ff e3 ae f9 	CALL 0xffa08238 <_get_asm>;
ffa08ee0:	1f 60       	R7 = 0x3 (X);		/*		R7=0x0(  0) */
ffa08ee2:	0f b5       	W[P1 + 0x8] = R7;
ffa08ee4:	ff e3 aa f9 	CALL 0xffa08238 <_get_asm>;
ffa08ee8:	87 60       	R7 = 0x10 (X);		/*		R7=0x0(  0) */
ffa08eea:	b0 31       	R6 = LC0;
ffa08eec:	37 08       	CC = R7 == R6;
ffa08eee:	05 18       	IF CC JUMP 0xffa08ef8 <wp_bot>;
ffa08ef0:	ff e3 e1 fc 	CALL 0xffa088b2 <_waitirq_asm>;
ffa08ef4:	ff e3 cb fc 	CALL 0xffa0888a <_clearirq_asm>;

ffa08ef8 <wp_bot>:
ffa08ef8:	00 00       	NOP;
ffa08efa:	ff e3 dc fc 	CALL 0xffa088b2 <_waitirq_asm>;
ffa08efe:	ff e3 c6 fc 	CALL 0xffa0888a <_clearirq_asm>;
ffa08f02:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa08f04:	8f b4       	W[P1 + 0x4] = R7;
ffa08f06:	ff e3 99 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f0a:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08f0c:	8f b4       	W[P1 + 0x4] = R7;
ffa08f0e:	ff e3 95 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f12:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08f16:	1e 97       	W[P3] = R6;
ffa08f18:	ff e3 90 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f1c:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08f1e:	0f b5       	W[P1 + 0x8] = R7;
ffa08f20:	ff e3 8c f9 	CALL 0xffa08238 <_get_asm>;
ffa08f24:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08f26:	8f b4       	W[P1 + 0x4] = R7;
ffa08f28:	ff e3 88 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f2c:	06 61       	R6 = 0x20 (X);		/*		R6=0x0(  0) */
ffa08f2e:	1e 97       	W[P3] = R6;
ffa08f30:	ff e3 84 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f34:	fe 60       	R6 = 0x1f (X);		/*		R6=0x0(  0) */
ffa08f36:	1e 97       	W[P3] = R6;
ffa08f38:	ff e3 80 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f3c:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08f3e:	0f b5       	W[P1 + 0x8] = R7;
ffa08f40:	ff e3 7c f9 	CALL 0xffa08238 <_get_asm>;
ffa08f44:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa08f46:	0f b5       	W[P1 + 0x8] = R7;
ffa08f48:	ff e3 78 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f4c:	ff e3 b3 fc 	CALL 0xffa088b2 <_waitirq_asm>;
ffa08f50:	0f 95       	R7 = W[P1] (Z);
ffa08f52:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa08f54:	63 18       	IF CC JUMP 0xffa0901a <no_rxpacket>;
ffa08f56:	ff e3 9a fc 	CALL 0xffa0888a <_clearirq_asm>;
ffa08f5a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa08f5c:	8f b4       	W[P1 + 0x4] = R7;
ffa08f5e:	ff e3 6d f9 	CALL 0xffa08238 <_get_asm>;
ffa08f62:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08f64:	8f b4       	W[P1 + 0x4] = R7;
ffa08f66:	ff e3 69 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f6a:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa08f6e:	1e 97       	W[P3] = R6;
ffa08f70:	ff e3 64 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f74:	25 68       	P5 = 0x4 (X);		/*		P5=0x0(  0) */
ffa08f76:	a2 e0 4b 50 	LSETUP(0xffa08f7a <rp_top>, 0xffa0900c <rp_bot>) LC0 = P5;

ffa08f7a <rp_top>:
ffa08f7a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa08f7c:	c7 bb       	[FP -0x10] = R7;
ffa08f7e:	b7 bb       	[FP -0x14] = R7;
ffa08f80:	ff e3 5c f9 	CALL 0xffa08238 <_get_asm>;
ffa08f84:	25 68       	P5 = 0x4 (X);		/*		P5=0x0(  0) */
ffa08f86:	b2 e0 0e 50 	LSETUP(0xffa08f8a <a32_top>, 0xffa08fa2 <a32_bot>) LC1 = P5;

ffa08f8a <a32_top>:
ffa08f8a:	1f 97       	W[P3] = R7;
ffa08f8c:	ff e3 56 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f90:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08f92:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08f96:	f7 55       	R7 = R7 & R6;
ffa08f98:	c6 b9       	R6 = [FP -0x10];
ffa08f9a:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08f9e:	be 51       	R6 = R6 + R7;
ffa08fa0:	c6 bb       	[FP -0x10] = R6;

ffa08fa2 <a32_bot>:
ffa08fa2:	00 00       	NOP;
ffa08fa4:	ff e3 4a f9 	CALL 0xffa08238 <_get_asm>;
ffa08fa8:	25 68       	P5 = 0x4 (X);		/*		P5=0x0(  0) */
ffa08faa:	b2 e0 0e 50 	LSETUP(0xffa08fae <v32_top>, 0xffa08fc6 <v32_bot>) LC1 = P5;

ffa08fae <v32_top>:
ffa08fae:	1f 97       	W[P3] = R7;
ffa08fb0:	ff e3 44 f9 	CALL 0xffa08238 <_get_asm>;
ffa08fb4:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08fb6:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08fba:	f7 55       	R7 = R7 & R6;
ffa08fbc:	b6 b9       	R6 = [FP -0x14];
ffa08fbe:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08fc2:	be 51       	R6 = R6 + R7;
ffa08fc4:	b6 bb       	[FP -0x14] = R6;

ffa08fc6 <v32_bot>:
ffa08fc6:	00 00       	NOP;
ffa08fc8:	ff e3 38 f9 	CALL 0xffa08238 <_get_asm>;
ffa08fcc:	c7 b9       	R7 = [FP -0x10];
ffa08fce:	82 c6 27 8d 	R6 = R7 >> 0x1c;
ffa08fd2:	06 32       	P0 = R6;
ffa08fd4:	bd b8       	P5 = [FP -0x54];
ffa08fd6:	7e 60       	R6 = 0xf (X);		/*		R6=0x0(  0) */
ffa08fd8:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa08fdc:	f7 57       	R7 = R7 | R6;
ffa08fde:	c7 bb       	[FP -0x10] = R7;
ffa08fe0:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa08fe2:	2f 91       	R7 = [P5];
ffa08fe4:	a7 ba       	[FP -0x58] = R7;
ffa08fe6:	ff e3 29 f9 	CALL 0xffa08238 <_get_asm>;
ffa08fea:	c7 b9       	R7 = [FP -0x10];
ffa08fec:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef0000(-1114112) */
ffa08ff0:	06 e1 03 c0 	R6.L = 0xc003;		/* (-16381)	R6=0xffefc003(-1064957) */
ffa08ff4:	77 55       	R5 = R7 & R6;
ffa08ff6:	46 e1 80 ff 	R6.H = 0xff80;		/* (-128)	R6=0xff80c003(-8339453) */
ffa08ffa:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff804000(-8372224) */
ffa08ffe:	35 08       	CC = R5 == R6;
ffa09000:	04 10       	IF !CC JUMP 0xffa09008 <invalid>;
ffa09002:	2f 32       	P5 = R7;
ffa09004:	b6 b9       	R6 = [FP -0x14];
ffa09006:	2e 93       	[P5] = R6;

ffa09008 <invalid>:
ffa09008:	ff e3 18 f9 	CALL 0xffa08238 <_get_asm>;

ffa0900c <rp_bot>:
ffa0900c:	00 00       	NOP;
ffa0900e:	ff e3 15 f9 	CALL 0xffa08238 <_get_asm>;
ffa09012:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09014:	0f b5       	W[P1 + 0x8] = R7;
ffa09016:	ff e3 11 f9 	CALL 0xffa08238 <_get_asm>;

ffa0901a <no_rxpacket>:
ffa0901a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa0901c:	8f b4       	W[P1 + 0x4] = R7;
ffa0901e:	ff e3 0d f9 	CALL 0xffa08238 <_get_asm>;
ffa09022:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09024:	8f b4       	W[P1 + 0x4] = R7;
ffa09026:	ff e3 09 f9 	CALL 0xffa08238 <_get_asm>;
ffa0902a:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa0902e:	1e 97       	W[P3] = R6;
ffa09030:	ff e3 04 f9 	CALL 0xffa08238 <_get_asm>;
ffa09034:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09036:	0f b5       	W[P1 + 0x8] = R7;
ffa09038:	ff e3 00 f9 	CALL 0xffa08238 <_get_asm>;
ffa0903c:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0903e:	8f b4       	W[P1 + 0x4] = R7;
ffa09040:	ff e3 fc f8 	CALL 0xffa08238 <_get_asm>;
ffa09044:	06 61       	R6 = 0x20 (X);		/*		R6=0x0(  0) */
ffa09046:	1e 97       	W[P3] = R6;
ffa09048:	ff e3 f8 f8 	CALL 0xffa08238 <_get_asm>;
ffa0904c:	f6 60       	R6 = 0x1e (X);		/*		R6=0x0(  0) */
ffa0904e:	1e 97       	W[P3] = R6;
ffa09050:	ff e3 f4 f8 	CALL 0xffa08238 <_get_asm>;
ffa09054:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09056:	0f b5       	W[P1 + 0x8] = R7;
ffa09058:	ff e3 f0 f8 	CALL 0xffa08238 <_get_asm>;
ffa0905c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa09060:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa09064:	2f 93       	[P5] = R7;
ffa09066:	ff e3 e9 f8 	CALL 0xffa08238 <_get_asm>;
ffa0906a:	87 60       	R7 = 0x10 (X);		/*		R7=0x0(  0) */
ffa0906c:	8f b4       	W[P1 + 0x4] = R7;
ffa0906e:	ff e3 e5 f8 	CALL 0xffa08238 <_get_asm>;
ffa09072:	97 b8       	R7 = [FP -0x5c];
ffa09074:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa09078:	f7 51       	R7 = R7 + R6;
ffa0907a:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa0907e:	0e b5       	W[P1 + 0x8] = R6;
ffa09080:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa09082:	97 ba       	[FP -0x5c] = R7;
ffa09084:	ff e3 da f8 	CALL 0xffa08238 <_get_asm>;
ffa09088:	06 2f       	JUMP.S 0xffa08e94 <radio_loop>;
ffa0908a:	00 00       	NOP;
ffa0908c:	00 00       	NOP;
	...

ffa09090 <_enc_create>:
ffa09090:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0xffc06100(-4169472) */
ffa09094:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa09098:	70 61       	R0 = 0x2e (X);		/*		R0=0x0(  0) */
ffa0909a:	28 9a       	B[P5++] = R0;
ffa0909c:	78 61       	R0 = 0x2f (X);		/*		R0=0x0(  0) */
ffa0909e:	28 9a       	B[P5++] = R0;
ffa090a0:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa090a2:	28 9a       	B[P5++] = R0;
ffa090a4:	88 61       	R0 = 0x31 (X);		/*		R0=0x0(  0) */
ffa090a6:	28 9a       	B[P5++] = R0;
ffa090a8:	90 61       	R0 = 0x32 (X);		/*		R0=0x0(  0) */
ffa090aa:	28 9a       	B[P5++] = R0;
ffa090ac:	78 61       	R0 = 0x2f (X);		/*		R0=0x0(  0) */
ffa090ae:	28 9a       	B[P5++] = R0;
ffa090b0:	98 61       	R0 = 0x33 (X);		/*		R0=0x0(  0) */
ffa090b2:	28 9a       	B[P5++] = R0;
ffa090b4:	88 61       	R0 = 0x31 (X);		/*		R0=0x0(  0) */
ffa090b6:	28 9a       	B[P5++] = R0;
ffa090b8:	a0 61       	R0 = 0x34 (X);		/*		R0=0x0(  0) */
ffa090ba:	28 9a       	B[P5++] = R0;
ffa090bc:	a8 61       	R0 = 0x35 (X);		/*		R0=0x0(  0) */
ffa090be:	28 9a       	B[P5++] = R0;
ffa090c0:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa090c2:	28 9a       	B[P5++] = R0;
ffa090c4:	88 61       	R0 = 0x31 (X);		/*		R0=0x0(  0) */
ffa090c6:	28 9a       	B[P5++] = R0;
ffa090c8:	b0 61       	R0 = 0x36 (X);		/*		R0=0x0(  0) */
ffa090ca:	28 9a       	B[P5++] = R0;
ffa090cc:	a8 61       	R0 = 0x35 (X);		/*		R0=0x0(  0) */
ffa090ce:	28 9a       	B[P5++] = R0;
ffa090d0:	98 61       	R0 = 0x33 (X);		/*		R0=0x0(  0) */
ffa090d2:	28 9a       	B[P5++] = R0;
ffa090d4:	88 61       	R0 = 0x31 (X);		/*		R0=0x0(  0) */
ffa090d6:	28 9a       	B[P5++] = R0;
ffa090d8:	b8 61       	R0 = 0x37 (X);		/*		R0=0x0(  0) */
ffa090da:	28 9a       	B[P5++] = R0;
ffa090dc:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa090de:	28 9a       	B[P5++] = R0;
ffa090e0:	c8 61       	R0 = 0x39 (X);		/*		R0=0x0(  0) */
ffa090e2:	28 9a       	B[P5++] = R0;
ffa090e4:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa090e6:	28 9a       	B[P5++] = R0;
ffa090e8:	d8 61       	R0 = 0x3b (X);		/*		R0=0x0(  0) */
ffa090ea:	28 9a       	B[P5++] = R0;
ffa090ec:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa090ee:	28 9a       	B[P5++] = R0;
ffa090f0:	e0 61       	R0 = 0x3c (X);		/*		R0=0x0(  0) */
ffa090f2:	28 9a       	B[P5++] = R0;
ffa090f4:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa090f6:	28 9a       	B[P5++] = R0;
ffa090f8:	e8 61       	R0 = 0x3d (X);		/*		R0=0x0(  0) */
ffa090fa:	28 9a       	B[P5++] = R0;
ffa090fc:	f0 61       	R0 = 0x3e (X);		/*		R0=0x0(  0) */
ffa090fe:	28 9a       	B[P5++] = R0;
ffa09100:	c8 61       	R0 = 0x39 (X);		/*		R0=0x0(  0) */
ffa09102:	28 9a       	B[P5++] = R0;
ffa09104:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa09106:	28 9a       	B[P5++] = R0;
ffa09108:	f8 61       	R0 = 0x3f (X);		/*		R0=0x0(  0) */
ffa0910a:	28 9a       	B[P5++] = R0;
ffa0910c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x0(  0) */
ffa0910e:	28 9a       	B[P5++] = R0;
ffa09110:	e0 61       	R0 = 0x3c (X);		/*		R0=0x0(  0) */
ffa09112:	28 9a       	B[P5++] = R0;
ffa09114:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa09116:	28 9a       	B[P5++] = R0;
ffa09118:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0911c:	28 9a       	B[P5++] = R0;
ffa0911e:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa09122:	28 9a       	B[P5++] = R0;
ffa09124:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09128:	28 9a       	B[P5++] = R0;
ffa0912a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0912e:	28 9a       	B[P5++] = R0;
ffa09130:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09134:	28 9a       	B[P5++] = R0;
ffa09136:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa0913a:	28 9a       	B[P5++] = R0;
ffa0913c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa09140:	28 9a       	B[P5++] = R0;
ffa09142:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09146:	28 9a       	B[P5++] = R0;
ffa09148:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa0914c:	28 9a       	B[P5++] = R0;
ffa0914e:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa09152:	28 9a       	B[P5++] = R0;
ffa09154:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09158:	28 9a       	B[P5++] = R0;
ffa0915a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0915e:	28 9a       	B[P5++] = R0;
ffa09160:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa09164:	28 9a       	B[P5++] = R0;
ffa09166:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa0916a:	28 9a       	B[P5++] = R0;
ffa0916c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa09170:	28 9a       	B[P5++] = R0;
ffa09172:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09176:	28 9a       	B[P5++] = R0;
ffa09178:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa0917c:	28 9a       	B[P5++] = R0;
ffa0917e:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa09182:	28 9a       	B[P5++] = R0;
ffa09184:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa09188:	28 9a       	B[P5++] = R0;
ffa0918a:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa0918e:	28 9a       	B[P5++] = R0;
ffa09190:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa09194:	28 9a       	B[P5++] = R0;
ffa09196:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa0919a:	28 9a       	B[P5++] = R0;
ffa0919c:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa091a0:	28 9a       	B[P5++] = R0;
ffa091a2:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa091a6:	28 9a       	B[P5++] = R0;
ffa091a8:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa091ac:	28 9a       	B[P5++] = R0;
ffa091ae:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa091b2:	28 9a       	B[P5++] = R0;
ffa091b4:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa091b8:	28 9a       	B[P5++] = R0;
ffa091ba:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa091be:	28 9a       	B[P5++] = R0;
ffa091c0:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa091c4:	28 9a       	B[P5++] = R0;
ffa091c6:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa091ca:	28 9a       	B[P5++] = R0;
ffa091cc:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa091d0:	28 9a       	B[P5++] = R0;
ffa091d2:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa091d6:	28 9a       	B[P5++] = R0;
ffa091d8:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa091dc:	28 9a       	B[P5++] = R0;
ffa091de:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa091e2:	28 9a       	B[P5++] = R0;
ffa091e4:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa091e8:	28 9a       	B[P5++] = R0;
ffa091ea:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa091ee:	28 9a       	B[P5++] = R0;
ffa091f0:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa091f4:	28 9a       	B[P5++] = R0;
ffa091f6:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa091fa:	28 9a       	B[P5++] = R0;
ffa091fc:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa09200:	28 9a       	B[P5++] = R0;
ffa09202:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09206:	28 9a       	B[P5++] = R0;
ffa09208:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa0920c:	28 9a       	B[P5++] = R0;
ffa0920e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09212:	28 9a       	B[P5++] = R0;
ffa09214:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa09218:	28 9a       	B[P5++] = R0;
ffa0921a:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa0921e:	28 9a       	B[P5++] = R0;
ffa09220:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09224:	28 9a       	B[P5++] = R0;
ffa09226:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa0922a:	28 9a       	B[P5++] = R0;
ffa0922c:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa09230:	28 9a       	B[P5++] = R0;
ffa09232:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09236:	28 9a       	B[P5++] = R0;
ffa09238:	b8 61       	R0 = 0x37 (X);		/*		R0=0x0(  0) */
ffa0923a:	28 9a       	B[P5++] = R0;
ffa0923c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	c8 61       	R0 = 0x39 (X);		/*		R0=0x0(  0) */
ffa09242:	28 9a       	B[P5++] = R0;
ffa09244:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa09246:	28 9a       	B[P5++] = R0;
ffa09248:	d8 61       	R0 = 0x3b (X);		/*		R0=0x0(  0) */
ffa0924a:	28 9a       	B[P5++] = R0;
ffa0924c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa0924e:	28 9a       	B[P5++] = R0;
ffa09250:	e0 61       	R0 = 0x3c (X);		/*		R0=0x0(  0) */
ffa09252:	28 9a       	B[P5++] = R0;
ffa09254:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa09256:	28 9a       	B[P5++] = R0;
ffa09258:	e8 61       	R0 = 0x3d (X);		/*		R0=0x0(  0) */
ffa0925a:	28 9a       	B[P5++] = R0;
ffa0925c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x0(  0) */
ffa0925e:	28 9a       	B[P5++] = R0;
ffa09260:	c8 61       	R0 = 0x39 (X);		/*		R0=0x0(  0) */
ffa09262:	28 9a       	B[P5++] = R0;
ffa09264:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa09266:	28 9a       	B[P5++] = R0;
ffa09268:	f8 61       	R0 = 0x3f (X);		/*		R0=0x0(  0) */
ffa0926a:	28 9a       	B[P5++] = R0;
ffa0926c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x0(  0) */
ffa0926e:	28 9a       	B[P5++] = R0;
ffa09270:	e0 61       	R0 = 0x3c (X);		/*		R0=0x0(  0) */
ffa09272:	28 9a       	B[P5++] = R0;
ffa09274:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa09276:	28 9a       	B[P5++] = R0;
ffa09278:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0927c:	28 9a       	B[P5++] = R0;
ffa0927e:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09282:	28 9a       	B[P5++] = R0;
ffa09284:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09288:	28 9a       	B[P5++] = R0;
ffa0928a:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa0928e:	28 9a       	B[P5++] = R0;
ffa09290:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09294:	28 9a       	B[P5++] = R0;
ffa09296:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0929a:	28 9a       	B[P5++] = R0;
ffa0929c:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa092a0:	28 9a       	B[P5++] = R0;
ffa092a2:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa092a6:	28 9a       	B[P5++] = R0;
ffa092a8:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa092ac:	28 9a       	B[P5++] = R0;
ffa092ae:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa092b2:	28 9a       	B[P5++] = R0;
ffa092b4:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa092b8:	28 9a       	B[P5++] = R0;
ffa092ba:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa092be:	28 9a       	B[P5++] = R0;
ffa092c0:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa092c4:	28 9a       	B[P5++] = R0;
ffa092c6:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa092ca:	28 9a       	B[P5++] = R0;
ffa092cc:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa092d0:	28 9a       	B[P5++] = R0;
ffa092d2:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa092d6:	28 9a       	B[P5++] = R0;
ffa092d8:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa092dc:	28 9a       	B[P5++] = R0;
ffa092de:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa092e2:	28 9a       	B[P5++] = R0;
ffa092e4:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa092e8:	28 9a       	B[P5++] = R0;
ffa092ea:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa092ee:	28 9a       	B[P5++] = R0;
ffa092f0:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa092f4:	28 9a       	B[P5++] = R0;
ffa092f6:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa092fa:	28 9a       	B[P5++] = R0;
ffa092fc:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09300:	28 9a       	B[P5++] = R0;
ffa09302:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa09306:	28 9a       	B[P5++] = R0;
ffa09308:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0930c:	28 9a       	B[P5++] = R0;
ffa0930e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09312:	28 9a       	B[P5++] = R0;
ffa09314:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa09318:	28 9a       	B[P5++] = R0;
ffa0931a:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa0931e:	28 9a       	B[P5++] = R0;
ffa09320:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09324:	28 9a       	B[P5++] = R0;
ffa09326:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0932a:	28 9a       	B[P5++] = R0;
ffa0932c:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09330:	28 9a       	B[P5++] = R0;
ffa09332:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa09336:	28 9a       	B[P5++] = R0;
ffa09338:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0933c:	28 9a       	B[P5++] = R0;
ffa0933e:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa09342:	28 9a       	B[P5++] = R0;
ffa09344:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09348:	28 9a       	B[P5++] = R0;
ffa0934a:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0934e:	28 9a       	B[P5++] = R0;
ffa09350:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa09354:	28 9a       	B[P5++] = R0;
ffa09356:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa0935a:	28 9a       	B[P5++] = R0;
ffa0935c:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09360:	28 9a       	B[P5++] = R0;
ffa09362:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa09366:	28 9a       	B[P5++] = R0;
ffa09368:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa0936c:	28 9a       	B[P5++] = R0;
ffa0936e:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa09372:	28 9a       	B[P5++] = R0;
ffa09374:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09378:	28 9a       	B[P5++] = R0;
ffa0937a:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0937e:	28 9a       	B[P5++] = R0;
ffa09380:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa09384:	28 9a       	B[P5++] = R0;
ffa09386:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa0938a:	28 9a       	B[P5++] = R0;
ffa0938c:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09390:	28 9a       	B[P5++] = R0;
ffa09392:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa09396:	28 9a       	B[P5++] = R0;
ffa09398:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa0939c:	28 9a       	B[P5++] = R0;
ffa0939e:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa093a2:	28 9a       	B[P5++] = R0;
ffa093a4:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa093a8:	28 9a       	B[P5++] = R0;
ffa093aa:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa093ae:	28 9a       	B[P5++] = R0;
ffa093b0:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa093b4:	28 9a       	B[P5++] = R0;
ffa093b6:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa093ba:	28 9a       	B[P5++] = R0;
ffa093bc:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa093c0:	28 9a       	B[P5++] = R0;
ffa093c2:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa093c6:	28 9a       	B[P5++] = R0;
ffa093c8:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa093cc:	28 9a       	B[P5++] = R0;
ffa093ce:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa093d2:	28 9a       	B[P5++] = R0;
ffa093d4:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa093d8:	28 9a       	B[P5++] = R0;
ffa093da:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa093de:	28 9a       	B[P5++] = R0;
ffa093e0:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa093e4:	28 9a       	B[P5++] = R0;
ffa093e6:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa093ea:	28 9a       	B[P5++] = R0;
ffa093ec:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa093f0:	28 9a       	B[P5++] = R0;
ffa093f2:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa093f6:	28 9a       	B[P5++] = R0;
ffa093f8:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa093fc:	28 9a       	B[P5++] = R0;
ffa093fe:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa09402:	28 9a       	B[P5++] = R0;
ffa09404:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09408:	28 9a       	B[P5++] = R0;
ffa0940a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0940e:	28 9a       	B[P5++] = R0;
ffa09410:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09414:	28 9a       	B[P5++] = R0;
ffa09416:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa0941a:	28 9a       	B[P5++] = R0;
ffa0941c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa09420:	28 9a       	B[P5++] = R0;
ffa09422:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09426:	28 9a       	B[P5++] = R0;
ffa09428:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa0942c:	28 9a       	B[P5++] = R0;
ffa0942e:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa09432:	28 9a       	B[P5++] = R0;
ffa09434:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09438:	28 9a       	B[P5++] = R0;
ffa0943a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0943e:	28 9a       	B[P5++] = R0;
ffa09440:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa09444:	28 9a       	B[P5++] = R0;
ffa09446:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa0944a:	28 9a       	B[P5++] = R0;
ffa0944c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa09450:	28 9a       	B[P5++] = R0;
ffa09452:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09456:	28 9a       	B[P5++] = R0;
ffa09458:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa0945c:	28 9a       	B[P5++] = R0;
ffa0945e:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa09462:	28 9a       	B[P5++] = R0;
ffa09464:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa09468:	28 9a       	B[P5++] = R0;
ffa0946a:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa0946e:	28 9a       	B[P5++] = R0;
ffa09470:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa09474:	28 9a       	B[P5++] = R0;
ffa09476:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa0947a:	28 9a       	B[P5++] = R0;
ffa0947c:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09480:	28 9a       	B[P5++] = R0;
ffa09482:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa09486:	28 9a       	B[P5++] = R0;
ffa09488:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0948c:	28 9a       	B[P5++] = R0;
ffa0948e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09492:	28 9a       	B[P5++] = R0;
ffa09494:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa09498:	28 9a       	B[P5++] = R0;
ffa0949a:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa0949e:	28 9a       	B[P5++] = R0;
ffa094a0:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa094a4:	28 9a       	B[P5++] = R0;
ffa094a6:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa094aa:	28 9a       	B[P5++] = R0;
ffa094ac:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa094b0:	28 9a       	B[P5++] = R0;
ffa094b2:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa094b6:	28 9a       	B[P5++] = R0;
ffa094b8:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa094bc:	28 9a       	B[P5++] = R0;
ffa094be:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa094c2:	28 9a       	B[P5++] = R0;
ffa094c4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa094c8:	28 9a       	B[P5++] = R0;
ffa094ca:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa094ce:	28 9a       	B[P5++] = R0;
ffa094d0:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa094d4:	28 9a       	B[P5++] = R0;
ffa094d6:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa094da:	28 9a       	B[P5++] = R0;
ffa094dc:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa094e0:	28 9a       	B[P5++] = R0;
ffa094e2:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa094e6:	28 9a       	B[P5++] = R0;
ffa094e8:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa094ec:	28 9a       	B[P5++] = R0;
ffa094ee:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa094f2:	28 9a       	B[P5++] = R0;
ffa094f4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa094f8:	28 9a       	B[P5++] = R0;
ffa094fa:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa094fe:	28 9a       	B[P5++] = R0;
ffa09500:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09504:	28 9a       	B[P5++] = R0;
ffa09506:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa0950a:	28 9a       	B[P5++] = R0;
ffa0950c:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa09510:	28 9a       	B[P5++] = R0;
ffa09512:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09516:	28 9a       	B[P5++] = R0;
ffa09518:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa0951c:	28 9a       	B[P5++] = R0;
ffa0951e:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa09522:	28 9a       	B[P5++] = R0;
ffa09524:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa09528:	28 9a       	B[P5++] = R0;
ffa0952a:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa0952e:	28 9a       	B[P5++] = R0;
ffa09530:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa09534:	28 9a       	B[P5++] = R0;
ffa09536:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa0953a:	28 9a       	B[P5++] = R0;
ffa0953c:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa09540:	28 9a       	B[P5++] = R0;
ffa09542:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09546:	28 9a       	B[P5++] = R0;
ffa09548:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa0954c:	28 9a       	B[P5++] = R0;
ffa0954e:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa09552:	28 9a       	B[P5++] = R0;
ffa09554:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa09558:	28 9a       	B[P5++] = R0;
ffa0955a:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa0955e:	28 9a       	B[P5++] = R0;
ffa09560:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa09564:	28 9a       	B[P5++] = R0;
ffa09566:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa0956a:	28 9a       	B[P5++] = R0;
ffa0956c:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa09570:	28 9a       	B[P5++] = R0;
ffa09572:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09576:	28 9a       	B[P5++] = R0;
ffa09578:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0957c:	28 9a       	B[P5++] = R0;
ffa0957e:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09582:	28 9a       	B[P5++] = R0;
ffa09584:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09588:	28 9a       	B[P5++] = R0;
ffa0958a:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa0958e:	28 9a       	B[P5++] = R0;
ffa09590:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09594:	28 9a       	B[P5++] = R0;
ffa09596:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0959a:	28 9a       	B[P5++] = R0;
ffa0959c:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa095a0:	28 9a       	B[P5++] = R0;
ffa095a2:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa095a6:	28 9a       	B[P5++] = R0;
ffa095a8:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa095ac:	28 9a       	B[P5++] = R0;
ffa095ae:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa095b2:	28 9a       	B[P5++] = R0;
ffa095b4:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa095b8:	28 9a       	B[P5++] = R0;
ffa095ba:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa095be:	28 9a       	B[P5++] = R0;
ffa095c0:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa095c4:	28 9a       	B[P5++] = R0;
ffa095c6:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa095ca:	28 9a       	B[P5++] = R0;
ffa095cc:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa095d0:	28 9a       	B[P5++] = R0;
ffa095d2:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa095d6:	28 9a       	B[P5++] = R0;
ffa095d8:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa095dc:	28 9a       	B[P5++] = R0;
ffa095de:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa095e2:	28 9a       	B[P5++] = R0;
ffa095e4:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa095e8:	28 9a       	B[P5++] = R0;
ffa095ea:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa095ee:	28 9a       	B[P5++] = R0;
ffa095f0:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa095f4:	28 9a       	B[P5++] = R0;
ffa095f6:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa095fa:	28 9a       	B[P5++] = R0;
ffa095fc:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09600:	28 9a       	B[P5++] = R0;
ffa09602:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa09606:	28 9a       	B[P5++] = R0;
ffa09608:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0960c:	28 9a       	B[P5++] = R0;
ffa0960e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09612:	28 9a       	B[P5++] = R0;
ffa09614:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa09618:	28 9a       	B[P5++] = R0;
ffa0961a:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa0961e:	28 9a       	B[P5++] = R0;
ffa09620:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09624:	28 9a       	B[P5++] = R0;
ffa09626:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0962a:	28 9a       	B[P5++] = R0;
ffa0962c:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09630:	28 9a       	B[P5++] = R0;
ffa09632:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa09636:	28 9a       	B[P5++] = R0;
ffa09638:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0xff806200 */
ffa0963c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa09640:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09644:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09648:	28 92       	[P5++] = R0;
ffa0964a:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa0964e:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa09652:	28 92       	[P5++] = R0;
ffa09654:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa09658:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa0965c:	28 92       	[P5++] = R0;
ffa0965e:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa09662:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa09666:	28 92       	[P5++] = R0;
ffa09668:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa0966c:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa09670:	28 92       	[P5++] = R0;
ffa09672:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09676:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa0967a:	28 92       	[P5++] = R0;
ffa0967c:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa09680:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa09684:	28 92       	[P5++] = R0;
ffa09686:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa0968a:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa0968e:	28 92       	[P5++] = R0;
ffa09690:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa09694:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa09698:	28 92       	[P5++] = R0;
ffa0969a:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa0969e:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa096a2:	28 92       	[P5++] = R0;
ffa096a4:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa096a8:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa096ac:	28 92       	[P5++] = R0;
ffa096ae:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa096b2:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa096b6:	28 92       	[P5++] = R0;
ffa096b8:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa096bc:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa096c0:	28 92       	[P5++] = R0;
ffa096c2:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa096c6:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa096ca:	28 92       	[P5++] = R0;
ffa096cc:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa096d0:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa096d4:	28 92       	[P5++] = R0;
ffa096d6:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa096da:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa096de:	28 92       	[P5++] = R0;
ffa096e0:	10 00       	RTS;
	...

ffa096e4 <___divsi3>:
ffa096e4:	c8 58       	R3 = R0 ^ R1;
ffa096e6:	07 c4 00 80 	R0 = ABS R0;
ffa096ea:	18 03       	CC = V;
ffa096ec:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa096f0:	07 c4 08 82 	R1 = ABS R1;
ffa096f4:	88 08       	CC = R0 < R1;
ffa096f6:	76 18       	IF CC JUMP 0xffa097e2 <___divsi3+0xfe>;
ffa096f8:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa096fc:	0a 02       	CC = R2;
ffa096fe:	1e 18       	IF CC JUMP 0xffa0973a <___divsi3+0x56>;
ffa09700:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09704:	02 09       	CC = R2 <= R0;
ffa09706:	1a 18       	IF CC JUMP 0xffa0973a <___divsi3+0x56>;
ffa09708:	48 42       	DIVS (R0, R1);
ffa0970a:	08 42       	DIVQ (R0, R1);
ffa0970c:	08 42       	DIVQ (R0, R1);
ffa0970e:	08 42       	DIVQ (R0, R1);
ffa09710:	08 42       	DIVQ (R0, R1);
ffa09712:	08 42       	DIVQ (R0, R1);
ffa09714:	08 42       	DIVQ (R0, R1);
ffa09716:	08 42       	DIVQ (R0, R1);
ffa09718:	08 42       	DIVQ (R0, R1);
ffa0971a:	08 42       	DIVQ (R0, R1);
ffa0971c:	08 42       	DIVQ (R0, R1);
ffa0971e:	08 42       	DIVQ (R0, R1);
ffa09720:	08 42       	DIVQ (R0, R1);
ffa09722:	08 42       	DIVQ (R0, R1);
ffa09724:	08 42       	DIVQ (R0, R1);
ffa09726:	08 42       	DIVQ (R0, R1);
ffa09728:	08 42       	DIVQ (R0, R1);
ffa0972a:	c0 42       	R0 = R0.L (Z);
ffa0972c:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09730:	08 50       	R0 = R0 + R1;
ffa09732:	81 43       	R1 = -R0;
ffa09734:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09736:	01 07       	IF CC R0 = R1;
ffa09738:	10 00       	RTS;
ffa0973a:	01 0c       	CC = R1 == 0x0;
ffa0973c:	34 18       	IF CC JUMP 0xffa097a4 <___divsi3+0xc0>;
ffa0973e:	00 0c       	CC = R0 == 0x0;
ffa09740:	3f 18       	IF CC JUMP 0xffa097be <___divsi3+0xda>;
ffa09742:	08 08       	CC = R0 == R1;
ffa09744:	30 18       	IF CC JUMP 0xffa097a4 <___divsi3+0xc0>;
ffa09746:	09 0c       	CC = R1 == 0x1;
ffa09748:	2e 18       	IF CC JUMP 0xffa097a4 <___divsi3+0xc0>;
ffa0974a:	06 c6 01 c4 	R2.L = ONES R1;
ffa0974e:	d2 42       	R2 = R2.L (Z);
ffa09750:	0a 0c       	CC = R2 == 0x1;
ffa09752:	37 18       	IF CC JUMP 0xffa097c0 <___divsi3+0xdc>;
ffa09754:	f9 68       	P1 = 0x1f (X);		/*		P1=0x0(  0) */
ffa09756:	68 05       	[--SP] = (R7:5);
ffa09758:	8a 43       	R2 = -R1;
ffa0975a:	42 01       	[--SP] = R2;
ffa0975c:	82 c6 08 84 	R2 = R0 << 0x1;
ffa09760:	88 59       	R6 = R0 ^ R1;
ffa09762:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa09766:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09768:	aa 56       	R2 = R2 | R5;
ffa0976a:	88 59       	R6 = R0 ^ R1;
ffa0976c:	a2 e0 12 10 	LSETUP(0xffa09770 <___divsi3+0x8c>, 0xffa09790 <___divsi3+0xac>) LC0 = P1;
ffa09770:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09774:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa09778:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa0977c:	35 91 00 00 
ffa09780:	38 56       	R0 = R0 | R7;
ffa09782:	86 0c       	CC = R6 < 0x0;
ffa09784:	29 07       	IF CC R5 = R1;
ffa09786:	28 50       	R0 = R0 + R5;
ffa09788:	88 59       	R6 = R0 ^ R1;
ffa0978a:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0978e:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa09790:	aa 50       	R2 = R2 + R5;
ffa09792:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09796:	8a 50       	R2 = R2 + R1;
ffa09798:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0979a:	90 43       	R0 = -R2;
ffa0979c:	02 06       	IF !CC R0 = R2;
ffa0979e:	26 6c       	SP += 0x4;		/* (  4) */
ffa097a0:	28 05       	(R7:5) = [SP++];
ffa097a2:	10 00       	RTS;
ffa097a4:	01 0c       	CC = R1 == 0x0;
ffa097a6:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffff80(-128) */
ffa097a8:	0a 4e       	R2 >>= 0x1;
ffa097aa:	06 18       	IF CC JUMP 0xffa097b6 <___divsi3+0xd2>;
ffa097ac:	08 08       	CC = R0 == R1;
ffa097ae:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa097b2:	02 18       	IF CC JUMP 0xffa097b6 <___divsi3+0xd2>;
ffa097b4:	10 30       	R2 = R0;
ffa097b6:	02 30       	R0 = R2;
ffa097b8:	92 43       	R2 = -R2;
ffa097ba:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa097bc:	02 07       	IF CC R0 = R2;
ffa097be:	10 00       	RTS;
ffa097c0:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa097c4:	81 0c       	CC = R1 < 0x0;
ffa097c6:	f8 1b       	IF CC JUMP 0xffa097b6 <___divsi3+0xd2>;
ffa097c8:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa097cc:	c9 42       	R1 = R1.L (Z);
ffa097ce:	11 67       	R1 += -0x1e;		/* (-30) */
ffa097d0:	02 c6 08 80 	R0 = LSHIFT R0 BY R1.L;
ffa097d4:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa097d8:	08 50       	R0 = R0 + R1;
ffa097da:	82 43       	R2 = -R0;
ffa097dc:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa097de:	02 07       	IF CC R0 = R2;
ffa097e0:	10 00       	RTS;
ffa097e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097e4:	10 00       	RTS;
	...

ffa097e8 <_sample>:
ffa097e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa097ec:	60 05       	[--SP] = (R7:4);
ffa097ee:	0a e1 30 08 	P2.L = 0x830;		/* (2096)	P2=0xffc00830(-4192208) */
ffa097f2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa097f6:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa097f8:	0b 60       	R3 = 0x1 (X);		/*		R3=0x0(  0) */
ffa097fa:	42 34       	I0 = P2;
ffa097fc:	00 00       	NOP;
ffa097fe:	20 9d       	R0.L = W[I0];
ffa09800:	01 54       	R0 = R1 & R0;
ffa09802:	00 0c       	CC = R0 == 0x0;
ffa09804:	fc 1f       	IF CC JUMP 0xffa097fc <_sample+0x14> (BP);
ffa09806:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00830(-4192208) */
ffa0980a:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa0980e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09812:	10 97       	W[P2] = R0;
ffa09814:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa09818:	09 e1 18 08 	P1.L = 0x818;		/* (2072)	P1=0xffc00818(-4192232) */
ffa0981c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa09820:	09 95       	R1 = W[P1] (Z);
ffa09822:	0a e1 3e 71 	P2.L = 0x713e;		/* (28990)	P2=0xff90713e <_samp1> */
ffa09826:	11 97       	W[P2] = R1;
ffa09828:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713e <_samp1> */
ffa0982c:	0e 95       	R6 = W[P1] (Z);
ffa0982e:	0a e1 42 71 	P2.L = 0x7142;		/* (28994)	P2=0xff907142 <_samp2> */
ffa09832:	16 97       	W[P2] = R6;
ffa09834:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907142 <_samp2> */
ffa09838:	0a e1 3c 71 	P2.L = 0x713c;		/* (28988)	P2=0xff90713c <_chan> */
ffa0983c:	15 99       	R5 = B[P2] (Z);
ffa0983e:	7c 60       	R4 = 0xf (X);		/*		R4=0x0(  0) */
ffa09840:	25 54       	R0 = R5 & R4;
ffa09842:	82 c6 08 8e 	R7 = R0 << 0x1;
ffa09846:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900100(-7339776) */
ffa0984a:	00 e1 48 71 	R0.L = 0x7148;		/* (29000)	R0=0xff907148 <_kk>(-7311032) */
ffa0984e:	38 50       	R0 = R0 + R7;
ffa09850:	10 32       	P2 = R0;
ffa09852:	3a 60       	R2 = 0x7 (X);		/*		R2=0x0(  0) */
ffa09854:	10 95       	R0 = W[P2] (Z);
ffa09856:	88 c2 02 20 	R0 = R0.L * R2.L (FU);
ffa0985a:	08 50       	R0 = R0 + R1;
ffa0985c:	c0 42       	R0 = R0.L (Z);
ffa0985e:	18 4e       	R0 >>= 0x3;
ffa09860:	10 97       	W[P2] = R0;
ffa09862:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907148 <_kk>(-7311032) */
ffa09866:	00 e1 8a 71 	R0.L = 0x718a;		/* (29066)	R0=0xff90718a <_jj>(-7310966) */
ffa0986a:	38 50       	R0 = R0 + R7;
ffa0986c:	10 32       	P2 = R0;
ffa0986e:	89 42       	R1 = R1.L (X);
ffa09870:	10 95       	R0 = W[P2] (Z);
ffa09872:	88 c2 02 20 	R0 = R0.L * R2.L (FU);
ffa09876:	30 50       	R0 = R0 + R6;
ffa09878:	c0 42       	R0 = R0.L (Z);
ffa0987a:	18 4e       	R0 >>= 0x3;
ffa0987c:	10 97       	W[P2] = R0;
ffa0987e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90718a <_jj>(-7310966) */
ffa09882:	00 e1 68 71 	R0.L = 0x7168;		/* (29032)	R0=0xff907168 <_thresh_1>(-7311000) */
ffa09886:	38 50       	R0 = R0 + R7;
ffa09888:	10 32       	P2 = R0;
ffa0988a:	50 95       	R0 = W[P2] (X);
ffa0988c:	01 09       	CC = R1 <= R0;
ffa0988e:	0a 1c       	IF CC JUMP 0xffa098a2 <_sample+0xba> (BP);
ffa09890:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713c <_chan> */
ffa09894:	0a e1 46 72 	P2.L = 0x7246;		/* (29254)	P2=0xff907246 <_exceeded_1> */
ffa09898:	ab 40       	R3 <<= R5;
ffa0989a:	11 95       	R1 = W[P2] (Z);
ffa0989c:	23 54       	R0 = R3 & R4;
ffa0989e:	08 56       	R0 = R0 | R1;
ffa098a0:	10 97       	W[P2] = R0;
ffa098a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907168 <_thresh_1>(-7311000) */
ffa098a6:	00 e1 24 72 	R0.L = 0x7224;		/* (29220)	R0=0xff907224 <_thresh_2>(-7310812) */
ffa098aa:	f8 51       	R7 = R0 + R7;
ffa098ac:	17 32       	P2 = R7;
ffa098ae:	b1 42       	R1 = R6.L (X);
ffa098b0:	50 95       	R0 = W[P2] (X);
ffa098b2:	01 09       	CC = R1 <= R0;
ffa098b4:	0c 18       	IF CC JUMP 0xffa098cc <_sample+0xe4>;
ffa098b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa098b8:	79 60       	R1 = 0xf (X);		/*		R1=0x0(  0) */
ffa098ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907246 <_exceeded_1> */
ffa098be:	a8 40       	R0 <<= R5;
ffa098c0:	0a e1 40 71 	P2.L = 0x7140;		/* (28992)	P2=0xff907140 <_exceeded_2> */
ffa098c4:	08 54       	R0 = R0 & R1;
ffa098c6:	11 95       	R1 = W[P2] (Z);
ffa098c8:	08 56       	R0 = R0 | R1;
ffa098ca:	10 97       	W[P2] = R0;
ffa098cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07140(-4165312) */
ffa098d0:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa098d4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa098d8:	10 97       	W[P2] = R0;
ffa098da:	01 e8 00 00 	UNLINK;
ffa098de:	20 05       	(R7:4) = [SP++];
ffa098e0:	10 00       	RTS;
	...

ffa098e4 <_get>:
ffa098e4:	c3 04       	[--SP] = (P5:3);
ffa098e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa098ea:	ff e3 7f ff 	CALL 0xffa097e8 <_sample>;
ffa098ee:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff907000 <_l1_data_a> */
ffa098f2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900818 */
ffa098f6:	0c e1 3c 71 	P4.L = 0x713c;		/* (28988)	P4=0xff90713c <_chan> */
ffa098fa:	09 e1 88 71 	P1.L = 0x7188;		/* (29064)	P1=0xff907188 <_tx_chan> */
ffa098fe:	21 99       	R1 = B[P4] (Z);
ffa09900:	08 99       	R0 = B[P1] (Z);
ffa09902:	01 08       	CC = R1 == R0;
ffa09904:	11 18       	IF CC JUMP 0xffa09926 <_get+0x42>;
ffa09906:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900818 */
ffa0990a:	08 e1 30 71 	P0.L = 0x7130;		/* (28976)	P0=0xff907130 <_txbuf> */
ffa0990e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x0(  0) */
ffa09910:	00 91       	R0 = [P0];
ffa09912:	50 4c       	BITCLR (R0, 0xa);		/* bit 10 */
ffa09914:	00 93       	[P0] = R0;
ffa09916:	60 99       	R0 = B[P4] (X);
ffa09918:	08 64       	R0 += 0x1;		/* (  1) */
ffa0991a:	08 54       	R0 = R0 & R1;
ffa0991c:	20 9b       	B[P4] = R0;
ffa0991e:	01 e8 00 00 	UNLINK;
ffa09922:	83 04       	(P5:3) = [SP++];
ffa09924:	10 00       	RTS;
ffa09926:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa0992a:	0a e1 46 71 	P2.L = 0x7146;		/* (28998)	P2=0xff907146 <_ramp> */
ffa0992e:	10 95       	R0 = W[P2] (Z);
ffa09930:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff907130 <_txbuf> */
ffa09934:	08 64       	R0 += 0x1;		/* (  1) */
ffa09936:	08 e1 30 71 	P0.L = 0x7130;		/* (28976)	P0=0xff907130 <_txbuf> */
ffa0993a:	10 97       	W[P2] = R0;
ffa0993c:	45 91       	P5 = [P0];
ffa0993e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907146 <_ramp> */
ffa09942:	0a e1 3e 71 	P2.L = 0x713e;		/* (28990)	P2=0xff90713e <_samp1> */
ffa09946:	50 95       	R0 = W[P2] (X);
ffa09948:	20 4e       	R0 >>= 0x4;
ffa0994a:	55 32       	P2 = P5;
ffa0994c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa09950:	10 9a       	B[P2++] = R0;
ffa09952:	0b e1 38 71 	P3.L = 0x7138;		/* (28984)	P3=0xff907138 <__bss_start> */
ffa09956:	58 99       	R0 = B[P3] (X);
ffa09958:	08 64       	R0 += 0x1;		/* (  1) */
ffa0995a:	18 9b       	B[P3] = R0;
ffa0995c:	40 43       	R0 = R0.B (Z);
ffa0995e:	d9 60       	R1 = 0x1b (X);		/*		R1=0x0(  0) */
ffa09960:	42 93       	[P0] = P2;
ffa09962:	08 08       	CC = R0 == R1;
ffa09964:	d5 17       	IF !CC JUMP 0xffa0990e <_get+0x2a> (BP);
ffa09966:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900000(-7340032) */
ffa0996a:	48 99       	R0 = B[P1] (X);
ffa0996c:	02 e1 89 71 	R2.L = 0x7189;		/* (29065)	R2=0xff907189 <_qpackets>(-7310967) */
ffa09970:	0a 32       	P1 = R2;
ffa09972:	18 4f       	R0 <<= 0x3;
ffa09974:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa09976:	49 99       	R1 = B[P1] (X);
ffa09978:	08 50       	R0 = R0 + R1;
ffa0997a:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa0997e:	20 e1 b9 fd 	R0 = -0x247 (X);		/*		R0=0xfffffdb9(-583) */
ffa09982:	10 97       	W[P2] = R0;
ffa09984:	20 e1 31 75 	R0 = 0x7531 (X);		/*		R0=0x7531(30001) */
ffa09988:	a8 b4       	W[P5 + 0x4] = R0;
ffa0998a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0998c:	18 9b       	B[P3] = R0;
ffa0998e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713e <_samp1> */
ffa09992:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09994:	0a e1 46 72 	P2.L = 0x7246;		/* (29254)	P2=0xff907246 <_exceeded_1> */
ffa09998:	10 97       	W[P2] = R0;
ffa0999a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907246 <_exceeded_1> */
ffa0999e:	0a e1 40 71 	P2.L = 0x7140;		/* (28992)	P2=0xff907140 <_exceeded_2> */
ffa099a2:	10 97       	W[P2] = R0;
ffa099a4:	48 99       	R0 = B[P1] (X);
ffa099a6:	08 64       	R0 += 0x1;		/* (  1) */
ffa099a8:	4d 30       	R1 = P5;
ffa099aa:	08 9b       	B[P1] = R0;
ffa099ac:	31 64       	R1 += 0x6;		/* (  6) */
ffa099ae:	20 e1 fc fb 	R0 = -0x404 (X);		/*		R0=0xfffffbfc(-1028) */
ffa099b2:	41 54       	R1 = R1 & R0;
ffa099b4:	01 93       	[P0] = R1;
ffa099b6:	ac 2f       	JUMP.S 0xffa0990e <_get+0x2a>;

ffa099b8 <_radio_clearfifos>:
ffa099b8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa099ba:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc07138(-4165320) */
ffa099be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa099c2:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa099c4:	0b e1 04 07 	P3.L = 0x704;		/* (1796)	P3=0xffc00704(-4192508) */
ffa099c8:	1f 97       	W[P3] = R7;
ffa099ca:	ff e3 8d ff 	CALL 0xffa098e4 <_get>;
ffa099ce:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0713c(-4165316) */
ffa099d2:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa099d6:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa099da:	20 97       	W[P4] = R0;
ffa099dc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc06200(-4169216) */
ffa099e0:	ff e3 82 ff 	CALL 0xffa098e4 <_get>;
ffa099e4:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa099e8:	2f 97       	W[P5] = R7;
ffa099ea:	ff e3 7d ff 	CALL 0xffa098e4 <_get>;
ffa099ee:	1f 97       	W[P3] = R7;
ffa099f0:	ff e3 7a ff 	CALL 0xffa098e4 <_get>;
ffa099f4:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa099f8:	20 97       	W[P4] = R0;
ffa099fa:	ff e3 75 ff 	CALL 0xffa098e4 <_get>;
ffa099fe:	2f 97       	W[P5] = R7;
ffa09a00:	01 e8 00 00 	UNLINK;
ffa09a04:	bb 05       	(R7:7, P5:3) = [SP++];
ffa09a06:	ff e2 6f ff 	JUMP.L 0xffa098e4 <_get>;
	...

ffa09a0c <_radio_clearirq>:
ffa09a0c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa09a0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07140(-4165312) */
ffa09a12:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09a16:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09a1a:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09a1c:	17 97       	W[P2] = R7;
ffa09a1e:	ff e3 63 ff 	CALL 0xffa098e4 <_get>;
ffa09a22:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00708(-4192504) */
ffa09a26:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa09a2a:	38 61       	R0 = 0x27 (X);		/*		R0=0x0(  0) */
ffa09a2c:	28 97       	W[P5] = R0;
ffa09a2e:	ff e3 5b ff 	CALL 0xffa098e4 <_get>;
ffa09a32:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09a36:	28 97       	W[P5] = R0;
ffa09a38:	ff e3 56 ff 	CALL 0xffa098e4 <_get>;
ffa09a3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09a40:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09a44:	17 97       	W[P2] = R7;
ffa09a46:	01 e8 00 00 	UNLINK;
ffa09a4a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa09a4c:	ff e2 4c ff 	JUMP.L 0xffa098e4 <_get>;

ffa09a50 <_radio_waitirq>:
ffa09a50:	f5 05       	[--SP] = (R7:6, P5:5);
ffa09a52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09a56:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09a5a:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09a5e:	10 95       	R0 = W[P2] (Z);
ffa09a60:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa09a62:	0f 18       	IF CC JUMP 0xffa09a80 <_radio_waitirq+0x30>;
ffa09a64:	27 e1 45 01 	R7 = 0x145 (X);		/*		R7=0x145(325) */
ffa09a68:	6a 32       	P5 = P2;
ffa09a6a:	46 60       	R6 = 0x8 (X);		/*		R6=0x0(  0) */
ffa09a6c:	04 20       	JUMP.S 0xffa09a74 <_radio_waitirq+0x24>;
ffa09a6e:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa09a70:	07 0c       	CC = R7 == 0x0;
ffa09a72:	07 18       	IF CC JUMP 0xffa09a80 <_radio_waitirq+0x30>;
ffa09a74:	ff e3 38 ff 	CALL 0xffa098e4 <_get>;
ffa09a78:	28 95       	R0 = W[P5] (Z);
ffa09a7a:	06 54       	R0 = R6 & R0;
ffa09a7c:	00 0c       	CC = R0 == 0x0;
ffa09a7e:	f8 17       	IF !CC JUMP 0xffa09a6e <_radio_waitirq+0x1e> (BP);
ffa09a80:	01 e8 00 00 	UNLINK;
ffa09a84:	b5 05       	(R7:6, P5:5) = [SP++];
ffa09a86:	10 00       	RTS;

ffa09a88 <_radio_tst_bidi>:
ffa09a88:	e3 05       	[--SP] = (R7:4, P5:3);
ffa09a8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900700 */
ffa09a8e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09a92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a94:	0a e1 3c 71 	P2.L = 0x713c;		/* (28988)	P2=0xff90713c <_chan> */
ffa09a98:	10 9b       	B[P2] = R0;
ffa09a9a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713c <_chan> */
ffa09a9e:	0a e1 88 71 	P2.L = 0x7188;		/* (29064)	P2=0xff907188 <_tx_chan> */
ffa09aa2:	10 9b       	B[P2] = R0;
ffa09aa4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa09aa8:	20 e1 07 f8 	R0 = -0x7f9 (X);		/*		R0=0xfffff807(-2041) */
ffa09aac:	60 4f       	R0 <<= 0xc;
ffa09aae:	0d e1 30 71 	P5.L = 0x7130;		/* (28976)	P5=0xff907130 <_txbuf> */
ffa09ab2:	28 93       	[P5] = R0;
ffa09ab4:	ff e3 82 ff 	CALL 0xffa099b8 <_radio_clearfifos>;
ffa09ab8:	ff e3 aa ff 	CALL 0xffa09a0c <_radio_clearirq>;
ffa09abc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09abe:	65 32       	P4 = P5;
ffa09ac0:	26 e1 a5 ff 	R6 = -0x5b (X);		/*		R6=0xffffffa5(-91) */
ffa09ac4:	25 e1 b4 ff 	R5 = -0x4c (X);		/*		R5=0xffffffb4(-76) */
ffa09ac8:	1c 62       	R4 = -0x3d (X);		/*		R4=0xffffff80(-128) */
ffa09aca:	93 6a       	P3 = -0x2e (X);		/*		P3=0xffffff80(-128) */
ffa09acc:	00 69       	P0 = 0x20 (X);		/*		P0=0x0(  0) */
ffa09ace:	db 60       	R3 = 0x1b (X);		/*		R3=0x0(  0) */
ffa09ad0:	b2 e0 1f 00 	LSETUP(0xffa09ad4 <_radio_tst_bidi+0x4c>, 0xffa09b0e <_radio_tst_bidi+0x86>) LC1 = P0;
ffa09ad4:	0a 34       	I1 = R2;
ffa09ad6:	82 c6 2a 8e 	R7 = R2 << 0x5;
ffa09ada:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09adc:	39 50       	R0 = R1 + R7;
ffa09ade:	69 91       	P1 = [P5];
ffa09ae0:	09 64       	R1 += 0x1;		/* (  1) */
ffa09ae2:	08 9a       	B[P1++] = R0;
ffa09ae4:	48 43       	R0 = R1.B (Z);
ffa09ae6:	69 93       	[P5] = P1;
ffa09ae8:	18 08       	CC = R0 == R3;
ffa09aea:	f9 17       	IF !CC JUMP 0xffa09adc <_radio_tst_bidi+0x54> (BP);
ffa09aec:	51 32       	P2 = P1;
ffa09aee:	81 30       	R0 = I1;
ffa09af0:	10 9a       	B[P2++] = R0;
ffa09af2:	8e e6 01 00 	B[P1 + 0x1] = R6;
ffa09af6:	4a 32       	P1 = P2;
ffa09af8:	95 e6 01 00 	B[P2 + 0x1] = R5;
ffa09afc:	09 6c       	P1 += 0x1;		/* (  1) */
ffa09afe:	12 6c       	P2 += 0x2;		/* (  2) */
ffa09b00:	8c e6 01 00 	B[P1 + 0x1] = R4;
ffa09b04:	4b 30       	R1 = P3;
ffa09b06:	91 e6 01 00 	B[P2 + 0x1] = R1;
ffa09b0a:	12 6c       	P2 += 0x2;		/* (  2) */
ffa09b0c:	62 93       	[P4] = P2;
ffa09b0e:	0a 64       	R2 += 0x1;		/* (  1) */
ffa09b10:	20 e1 07 f8 	R0 = -0x7f9 (X);		/*		R0=0xfffff807(-2041) */
ffa09b14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907188 <_tx_chan> */
ffa09b18:	60 4f       	R0 <<= 0xc;
ffa09b1a:	0a e1 30 71 	P2.L = 0x7130;		/* (28976)	P2=0xff907130 <_txbuf> */
ffa09b1e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90ff80 */
ffa09b22:	10 93       	[P2] = R0;
ffa09b24:	0b e1 34 71 	P3.L = 0x7134;		/* (28980)	P3=0xff907134 <_rbuf> */
ffa09b28:	18 93       	[P3] = R0;
ffa09b2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907130 <_txbuf> */
ffa09b2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b30:	0a e1 46 71 	P2.L = 0x7146;		/* (28998)	P2=0xff907146 <_ramp> */
ffa09b34:	10 97       	W[P2] = R0;
ffa09b36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907146 <_ramp> */
ffa09b3a:	0a e1 89 71 	P2.L = 0x7189;		/* (29065)	P2=0xff907189 <_qpackets> */
ffa09b3e:	10 9b       	B[P2] = R0;
ffa09b40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907189 <_qpackets> */
ffa09b44:	0a e1 38 71 	P2.L = 0x7138;		/* (28984)	P2=0xff907138 <__bss_start> */
ffa09b48:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc0ff80(-4128896) */
ffa09b4c:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa09b50:	10 9b       	B[P2] = R0;
ffa09b52:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa09b56:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa09b5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907138 <__bss_start> */
ffa09b5e:	0a e1 89 71 	P2.L = 0x7189;		/* (29065)	P2=0xff907189 <_qpackets> */
ffa09b62:	50 99       	R0 = B[P2] (X);
ffa09b64:	39 60       	R1 = 0x7 (X);		/*		R1=0x0(  0) */
ffa09b66:	08 09       	CC = R0 <= R1;
ffa09b68:	f1 18       	IF CC JUMP 0xffa09d4a <_radio_tst_bidi+0x2c2>;
ffa09b6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b6c:	10 9b       	B[P2] = R0;
ffa09b6e:	ff e3 25 ff 	CALL 0xffa099b8 <_radio_clearfifos>;
ffa09b72:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa09b74:	1d 60       	R5 = 0x3 (X);		/*		R5=0x0(  0) */
ffa09b76:	14 32       	P2 = R4;
ffa09b78:	13 60       	R3 = 0x2 (X);		/*		R3=0x0(  0) */
ffa09b7a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09b7c:	13 97       	W[P2] = R3;
ffa09b7e:	ff e3 b3 fe 	CALL 0xffa098e4 <_get>;
ffa09b82:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa09b86:	20 97       	W[P4] = R0;
ffa09b88:	ff e3 ae fe 	CALL 0xffa098e4 <_get>;
ffa09b8c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09b8e:	18 91       	R0 = [P3];
ffa09b90:	10 32       	P2 = R0;
ffa09b92:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b94:	50 4c       	BITCLR (R0, 0xa);		/* bit 10 */
ffa09b96:	11 98       	R1 = B[P2++] (Z);
ffa09b98:	18 93       	[P3] = R0;
ffa09b9a:	21 97       	W[P4] = R1;
ffa09b9c:	ff e3 a4 fe 	CALL 0xffa098e4 <_get>;
ffa09ba0:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa09ba2:	07 08       	CC = R7 == R0;
ffa09ba4:	f4 17       	IF !CC JUMP 0xffa09b8c <_radio_tst_bidi+0x104> (BP);
ffa09ba6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc07130(-4165328) */
ffa09baa:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa09bae:	2d 97       	W[P5] = R5;
ffa09bb0:	ff e3 9a fe 	CALL 0xffa098e4 <_get>;
ffa09bb4:	06 0c       	CC = R6 == 0x0;
ffa09bb6:	cd 18       	IF CC JUMP 0xffa09d50 <_radio_tst_bidi+0x2c8>;
ffa09bb8:	ff e3 4c ff 	CALL 0xffa09a50 <_radio_waitirq>;
ffa09bbc:	ff e3 28 ff 	CALL 0xffa09a0c <_radio_clearirq>;
ffa09bc0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa09bc2:	39 60       	R1 = 0x7 (X);		/*		R1=0x0(  0) */
ffa09bc4:	0e 09       	CC = R6 <= R1;
ffa09bc6:	d8 1f       	IF CC JUMP 0xffa09b76 <_radio_tst_bidi+0xee> (BP);
ffa09bc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907189 <_qpackets> */
ffa09bcc:	0a e1 34 71 	P2.L = 0x7134;		/* (28980)	P2=0xff907134 <_rbuf> */
ffa09bd0:	10 91       	R0 = [P2];
ffa09bd2:	40 4d       	R0 >>>= 0x8;
ffa09bd4:	40 4f       	R0 <<= 0x8;
ffa09bd6:	10 93       	[P2] = R0;
ffa09bd8:	ff e3 3c ff 	CALL 0xffa09a50 <_radio_waitirq>;
ffa09bdc:	ff e3 18 ff 	CALL 0xffa09a0c <_radio_clearirq>;
ffa09be0:	14 32       	P2 = R4;
ffa09be2:	0e 60       	R6 = 0x1 (X);		/*		R6=0x0(  0) */
ffa09be4:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09be6:	16 97       	W[P2] = R6;
ffa09be8:	ff e3 7e fe 	CALL 0xffa098e4 <_get>;
ffa09bec:	14 32       	P2 = R4;
ffa09bee:	17 97       	W[P2] = R7;
ffa09bf0:	ff e3 7a fe 	CALL 0xffa098e4 <_get>;
ffa09bf4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07134(-4165324) */
ffa09bf8:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa09bfc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09c00:	10 97       	W[P2] = R0;
ffa09c02:	ff e3 71 fe 	CALL 0xffa098e4 <_get>;
ffa09c06:	2f 97       	W[P5] = R7;
ffa09c08:	ff e3 6e fe 	CALL 0xffa098e4 <_get>;
ffa09c0c:	14 32       	P2 = R4;
ffa09c0e:	17 97       	W[P2] = R7;
ffa09c10:	ff e3 6a fe 	CALL 0xffa098e4 <_get>;
ffa09c14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09c18:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa09c1a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09c1e:	10 97       	W[P2] = R0;
ffa09c20:	ff e3 62 fe 	CALL 0xffa098e4 <_get>;
ffa09c24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09c28:	f8 60       	R0 = 0x1f (X);		/*		R0=0x0(  0) */
ffa09c2a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09c2e:	10 97       	W[P2] = R0;
ffa09c30:	ff e3 5a fe 	CALL 0xffa098e4 <_get>;
ffa09c34:	2f 97       	W[P5] = R7;
ffa09c36:	ff e3 57 fe 	CALL 0xffa098e4 <_get>;
ffa09c3a:	2e 97       	W[P5] = R6;
ffa09c3c:	ff e3 54 fe 	CALL 0xffa098e4 <_get>;
ffa09c40:	c5 6f       	P5 += -0x8;		/* ( -8) */
ffa09c42:	46 60       	R6 = 0x8 (X);		/*		R6=0x0(  0) */
ffa09c44:	28 95       	R0 = W[P5] (Z);
ffa09c46:	06 54       	R0 = R6 & R0;
ffa09c48:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09c4a:	00 0c       	CC = R0 == 0x0;
ffa09c4c:	0f 1c       	IF CC JUMP 0xffa09c6a <_radio_tst_bidi+0x1e2> (BP);
ffa09c4e:	ff e3 4b fe 	CALL 0xffa098e4 <_get>;
ffa09c52:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09c54:	20 e1 45 01 	R0 = 0x145 (X);		/*		R0=0x145(325) */
ffa09c58:	07 08       	CC = R7 == R0;
ffa09c5a:	4b 18       	IF CC JUMP 0xffa09cf0 <_radio_tst_bidi+0x268>;
ffa09c5c:	00 00       	NOP;
ffa09c5e:	00 00       	NOP;
ffa09c60:	00 00       	NOP;
ffa09c62:	28 95       	R0 = W[P5] (Z);
ffa09c64:	06 54       	R0 = R6 & R0;
ffa09c66:	00 0c       	CC = R0 == 0x0;
ffa09c68:	f3 17       	IF !CC JUMP 0xffa09c4e <_radio_tst_bidi+0x1c6> (BP);
ffa09c6a:	ff e3 3d fe 	CALL 0xffa098e4 <_get>;
ffa09c6e:	ff e3 cf fe 	CALL 0xffa09a0c <_radio_clearirq>;
ffa09c72:	14 32       	P2 = R4;
ffa09c74:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa09c76:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00708(-4192504) */
ffa09c7a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa09c7c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09c7e:	10 97       	W[P2] = R0;
ffa09c80:	ff e3 32 fe 	CALL 0xffa098e4 <_get>;
ffa09c84:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09c88:	20 97       	W[P4] = R0;
ffa09c8a:	ff e3 2d fe 	CALL 0xffa098e4 <_get>;
ffa09c8e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa09c90:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa09c94:	25 97       	W[P4] = R5;
ffa09c96:	ff e3 27 fe 	CALL 0xffa098e4 <_get>;
ffa09c9a:	28 95       	R0 = W[P5] (Z);
ffa09c9c:	27 97       	W[P4] = R7;
ffa09c9e:	ff e3 23 fe 	CALL 0xffa098e4 <_get>;
ffa09ca2:	28 95       	R0 = W[P5] (Z);
ffa09ca4:	27 97       	W[P4] = R7;
ffa09ca6:	ff e3 1f fe 	CALL 0xffa098e4 <_get>;
ffa09caa:	28 95       	R0 = W[P5] (Z);
ffa09cac:	27 97       	W[P4] = R7;
ffa09cae:	ff e3 1b fe 	CALL 0xffa098e4 <_get>;
ffa09cb2:	28 95       	R0 = W[P5] (Z);
ffa09cb4:	27 97       	W[P4] = R7;
ffa09cb6:	ff e3 17 fe 	CALL 0xffa098e4 <_get>;
ffa09cba:	28 95       	R0 = W[P5] (Z);
ffa09cbc:	27 97       	W[P4] = R7;
ffa09cbe:	ff e3 13 fe 	CALL 0xffa098e4 <_get>;
ffa09cc2:	28 95       	R0 = W[P5] (Z);
ffa09cc4:	27 97       	W[P4] = R7;
ffa09cc6:	ff e3 0f fe 	CALL 0xffa098e4 <_get>;
ffa09cca:	28 95       	R0 = W[P5] (Z);
ffa09ccc:	27 97       	W[P4] = R7;
ffa09cce:	ff e3 0b fe 	CALL 0xffa098e4 <_get>;
ffa09cd2:	28 95       	R0 = W[P5] (Z);
ffa09cd4:	ff e3 08 fe 	CALL 0xffa098e4 <_get>;
ffa09cd8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa09cda:	21 60       	R1 = 0x4 (X);		/*		R1=0x0(  0) */
ffa09cdc:	0e 08       	CC = R6 == R1;
ffa09cde:	db 17       	IF !CC JUMP 0xffa09c94 <_radio_tst_bidi+0x20c> (BP);
ffa09ce0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09ce4:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa09ce6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09cea:	10 97       	W[P2] = R0;
ffa09cec:	ff e3 fc fd 	CALL 0xffa098e4 <_get>;
ffa09cf0:	14 32       	P2 = R4;
ffa09cf2:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa09cf4:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa09cf6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa09cfa:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa09cfe:	10 97       	W[P2] = R0;
ffa09d00:	ff e3 f2 fd 	CALL 0xffa098e4 <_get>;
ffa09d04:	14 32       	P2 = R4;
ffa09d06:	17 97       	W[P2] = R7;
ffa09d08:	ff e3 ee fd 	CALL 0xffa098e4 <_get>;
ffa09d0c:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa09d10:	20 97       	W[P4] = R0;
ffa09d12:	ff e3 e9 fd 	CALL 0xffa098e4 <_get>;
ffa09d16:	2f 97       	W[P5] = R7;
ffa09d18:	ff e3 e6 fd 	CALL 0xffa098e4 <_get>;
ffa09d1c:	14 32       	P2 = R4;
ffa09d1e:	17 97       	W[P2] = R7;
ffa09d20:	ff e3 e2 fd 	CALL 0xffa098e4 <_get>;
ffa09d24:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa09d26:	20 97       	W[P4] = R0;
ffa09d28:	ff e3 de fd 	CALL 0xffa098e4 <_get>;
ffa09d2c:	f0 60       	R0 = 0x1e (X);		/*		R0=0x0(  0) */
ffa09d2e:	20 97       	W[P4] = R0;
ffa09d30:	ff e3 da fd 	CALL 0xffa098e4 <_get>;
ffa09d34:	2f 97       	W[P5] = R7;
ffa09d36:	ff e3 d7 fd 	CALL 0xffa098e4 <_get>;
ffa09d3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa09d3e:	0a e1 89 71 	P2.L = 0x7189;		/* (29065)	P2=0xff907189 <_qpackets> */
ffa09d42:	50 99       	R0 = B[P2] (X);
ffa09d44:	39 60       	R1 = 0x7 (X);		/*		R1=0x0(  0) */
ffa09d46:	08 09       	CC = R0 <= R1;
ffa09d48:	11 17       	IF !CC JUMP 0xffa09b6a <_radio_tst_bidi+0xe2> (BP);
ffa09d4a:	ff e3 cd fd 	CALL 0xffa098e4 <_get>;
ffa09d4e:	06 2f       	JUMP.S 0xffa09b5a <_radio_tst_bidi+0xd2>;
ffa09d50:	0e 60       	R6 = 0x1 (X);		/*		R6=0x0(  0) */
ffa09d52:	12 2f       	JUMP.S 0xffa09b76 <_radio_tst_bidi+0xee>;

ffa09d54 <_main>:
ffa09d54:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe07189(-2068087) */
ffa09d58:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d5c:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa09d5e:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09d62:	10 93       	[P2] = R0;
ffa09d64:	23 00       	CSYNC;
ffa09d66:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09d6a:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09d6e:	10 93       	[P2] = R0;
ffa09d70:	23 00       	CSYNC;
ffa09d72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09d76:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09d7a:	40 60       	R0 = 0x8 (X);		/*		R0=0x0(  0) */
ffa09d7c:	10 97       	W[P2] = R0;
ffa09d7e:	10 95       	R0 = W[P2] (Z);
ffa09d80:	c0 43       	R0 =~ R0;
ffa09d82:	82 6f       	P2 += -0x10;		/* (-16) */
ffa09d84:	10 97       	W[P2] = R0;
ffa09d86:	82 6e       	P2 += -0x30;		/* (-48) */
ffa09d88:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09d8c:	10 97       	W[P2] = R0;
ffa09d8e:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09d92:	00 e3 d3 09 	CALL 0xffa0b138 <_radio_init>;
ffa09d96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09d9a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09d9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa09da0:	10 97       	W[P2] = R0;
ffa09da2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09da6:	10 97       	W[P2] = R0;
ffa09da8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09daa:	22 e1 e8 03 	R2 = 0x3e8 (X);		/*		R2=0x3e8(1000) */
	...
ffa09db6:	09 64       	R1 += 0x1;		/* (  1) */
ffa09db8:	c8 42       	R0 = R1.L (Z);
ffa09dba:	10 08       	CC = R0 == R2;
ffa09dbc:	f9 17       	IF !CC JUMP 0xffa09dae <_main+0x5a> (BP);
ffa09dbe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09dc2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09dc6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09dca:	10 97       	W[P2] = R0;
ffa09dcc:	00 e3 00 09 	CALL 0xffa0afcc <_radio_set_tx>;
ffa09dd0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09dd4:	0a 60       	R2 = 0x1 (X);		/*		R2=0x0(  0) */
ffa09dd6:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa09dda:	12 97       	W[P2] = R2;
ffa09ddc:	99 60       	R1 = 0x13 (X);		/*		R1=0x0(  0) */
ffa09dde:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09de0:	11 97       	W[P2] = R1;
ffa09de2:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09de6:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa09de8:	10 97       	W[P2] = R0;
ffa09dea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09dee:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09df2:	12 97       	W[P2] = R2;
ffa09df4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09df6:	11 97       	W[P2] = R1;
ffa09df8:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa09dfa:	10 97       	W[P2] = R0;
ffa09dfc:	ff e3 8e f5 	CALL 0xffa08918 <_radio_bidi_asm>;
ffa09e00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e02:	01 e8 00 00 	UNLINK;
ffa09e06:	10 00       	RTS;

ffa09e08 <_nmi_report>:
ffa09e08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09e0c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09e10:	00 e1 00 70 	R0.L = 0x7000;		/* (28672)	R0=0xff907000 <_l1_data_a>(-7311360) */
ffa09e14:	00 e3 14 02 	CALL 0xffa0a23c <_printf_str>;
ffa09e18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907000 <_l1_data_a>(-7311360) */
ffa09e1c:	00 e1 18 70 	R0.L = 0x7018;		/* (28696)	R0=0xff907018(-7311336) */
ffa09e20:	00 e3 0e 02 	CALL 0xffa0a23c <_printf_str>;
ffa09e24:	2a e1 2c 01 	P2 = 0x12c (X);		/*		P2=0x12c(300) */
ffa09e28:	b2 e0 04 20 	LSETUP(0xffa09e2c <_nmi_report+0x24>, 0xffa09e30 <_nmi_report+0x28>) LC1 = P2;
ffa09e2c:	00 00       	NOP;
ffa09e2e:	00 00       	NOP;
ffa09e30:	00 00       	NOP;
ffa09e32:	01 e8 00 00 	UNLINK;
ffa09e36:	10 00       	RTS;

ffa09e38 <_exception_report>:
ffa09e38:	e5 05       	[--SP] = (R7:4, P5:5);
ffa09e3a:	20 30       	R4 = R0;
ffa09e3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0012c(-4194004) */
ffa09e40:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09e44:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09e48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e4a:	10 97       	W[P2] = R0;
ffa09e4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09e50:	29 30       	R5 = R1;
ffa09e52:	00 e1 44 70 	R0.L = 0x7044;		/* (28740)	R0=0xff907044(-7311292) */
ffa09e56:	00 e3 f3 01 	CALL 0xffa0a23c <_printf_str>;
ffa09e5a:	f8 60       	R0 = 0x1f (X);		/*		R0=0x0(  0) */
ffa09e5c:	82 c6 94 83 	R1 = R4 >> 0xe;
ffa09e60:	41 54       	R1 = R1 & R0;
ffa09e62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09e66:	00 e1 50 70 	R0.L = 0x7050;		/* (28752)	R0=0xff907050(-7311280) */
ffa09e6a:	00 e3 4f 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09e6e:	f9 61       	R1 = 0x3f (X);		/*		R1=0x0(  0) */
ffa09e70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907050(-7311280) */
ffa09e74:	4c 54       	R1 = R4 & R1;
ffa09e76:	00 e1 58 70 	R0.L = 0x7058;		/* (28760)	R0=0xff907058(-7311272) */
ffa09e7a:	00 e3 47 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09e7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907058(-7311272) */
ffa09e82:	0d 30       	R1 = R5;
ffa09e84:	00 e1 64 70 	R0.L = 0x7064;		/* (28772)	R0=0xff907064(-7311260) */
ffa09e88:	00 e3 40 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09e8c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900708 */
ffa09e90:	0d e1 ac 71 	P5.L = 0x71ac;		/* (29100)	P5=0xff9071ac <_g_excregs> */
ffa09e94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907064(-7311260) */
ffa09e98:	29 91       	R1 = [P5];
ffa09e9a:	00 e1 6c 70 	R0.L = 0x706c;		/* (28780)	R0=0xff90706c(-7311252) */
ffa09e9e:	00 e3 35 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09ea2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90706c(-7311252) */
ffa09ea6:	69 a0       	R1 = [P5 + 0x4];
ffa09ea8:	00 e1 70 70 	R0.L = 0x7070;		/* (28784)	R0=0xff907070(-7311248) */
ffa09eac:	00 e3 2e 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09eb0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907070(-7311248) */
ffa09eb4:	a9 a0       	R1 = [P5 + 0x8];
ffa09eb6:	00 e1 74 70 	R0.L = 0x7074;		/* (28788)	R0=0xff907074(-7311244) */
ffa09eba:	00 e3 27 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09ebe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907074(-7311244) */
ffa09ec2:	e9 a0       	R1 = [P5 + 0xc];
ffa09ec4:	00 e1 78 70 	R0.L = 0x7078;		/* (28792)	R0=0xff907078(-7311240) */
ffa09ec8:	00 e3 20 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09ecc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907078(-7311240) */
ffa09ed0:	29 a1       	R1 = [P5 + 0x10];
ffa09ed2:	00 e1 7c 70 	R0.L = 0x707c;		/* (28796)	R0=0xff90707c(-7311236) */
ffa09ed6:	00 e3 19 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09eda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90707c(-7311236) */
ffa09ede:	69 a1       	R1 = [P5 + 0x14];
ffa09ee0:	00 e1 80 70 	R0.L = 0x7080;		/* (28800)	R0=0xff907080(-7311232) */
ffa09ee4:	00 e3 12 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09ee8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907080(-7311232) */
ffa09eec:	a9 a1       	R1 = [P5 + 0x18];
ffa09eee:	00 e1 84 70 	R0.L = 0x7084;		/* (28804)	R0=0xff907084(-7311228) */
ffa09ef2:	00 e3 0b 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09ef6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907084(-7311228) */
ffa09efa:	e9 a1       	R1 = [P5 + 0x1c];
ffa09efc:	00 e1 88 70 	R0.L = 0x7088;		/* (28808)	R0=0xff907088(-7311224) */
ffa09f00:	00 e3 04 02 	CALL 0xffa0a308 <_printf_hex>;
ffa09f04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907088(-7311224) */
ffa09f08:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09f0c:	00 e3 38 01 	CALL 0xffa0a17c <_uart_str>;
ffa09f10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09f14:	29 a2       	R1 = [P5 + 0x20];
ffa09f16:	00 e1 90 70 	R0.L = 0x7090;		/* (28816)	R0=0xff907090(-7311216) */
ffa09f1a:	00 e3 f7 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907090(-7311216) */
ffa09f22:	69 a2       	R1 = [P5 + 0x24];
ffa09f24:	00 e1 94 70 	R0.L = 0x7094;		/* (28820)	R0=0xff907094(-7311212) */
ffa09f28:	00 e3 f0 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907094(-7311212) */
ffa09f30:	a9 a2       	R1 = [P5 + 0x28];
ffa09f32:	00 e1 98 70 	R0.L = 0x7098;		/* (28824)	R0=0xff907098(-7311208) */
ffa09f36:	00 e3 e9 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907098(-7311208) */
ffa09f3e:	e9 a2       	R1 = [P5 + 0x2c];
ffa09f40:	00 e1 9c 70 	R0.L = 0x709c;		/* (28828)	R0=0xff90709c(-7311204) */
ffa09f44:	00 e3 e2 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90709c(-7311204) */
ffa09f4c:	29 a3       	R1 = [P5 + 0x30];
ffa09f4e:	00 e1 a0 70 	R0.L = 0x70a0;		/* (28832)	R0=0xff9070a0(-7311200) */
ffa09f52:	00 e3 db 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a0(-7311200) */
ffa09f5a:	69 a3       	R1 = [P5 + 0x34];
ffa09f5c:	00 e1 a4 70 	R0.L = 0x70a4;		/* (28836)	R0=0xff9070a4(-7311196) */
ffa09f60:	00 e3 d4 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a4(-7311196) */
ffa09f68:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09f6c:	00 e3 08 01 	CALL 0xffa0a17c <_uart_str>;
ffa09f70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09f74:	a9 a3       	R1 = [P5 + 0x38];
ffa09f76:	00 e1 a8 70 	R0.L = 0x70a8;		/* (28840)	R0=0xff9070a8(-7311192) */
ffa09f7a:	00 e3 c7 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a8(-7311192) */
ffa09f82:	e9 a3       	R1 = [P5 + 0x3c];
ffa09f84:	00 e1 ac 70 	R0.L = 0x70ac;		/* (28844)	R0=0xff9070ac(-7311188) */
ffa09f88:	00 e3 c0 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070ac(-7311188) */
ffa09f90:	29 e4 10 00 	R1 = [P5 + 0x40];
ffa09f94:	00 e1 b0 70 	R0.L = 0x70b0;		/* (28848)	R0=0xff9070b0(-7311184) */
ffa09f98:	00 e3 b8 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09f9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b0(-7311184) */
ffa09fa0:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09fa4:	00 e3 ec 00 	CALL 0xffa0a17c <_uart_str>;
ffa09fa8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09fac:	29 e4 11 00 	R1 = [P5 + 0x44];
ffa09fb0:	00 e1 b4 70 	R0.L = 0x70b4;		/* (28852)	R0=0xff9070b4(-7311180) */
ffa09fb4:	00 e3 aa 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09fb8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b4(-7311180) */
ffa09fbc:	29 e4 12 00 	R1 = [P5 + 0x48];
ffa09fc0:	00 e1 b8 70 	R0.L = 0x70b8;		/* (28856)	R0=0xff9070b8(-7311176) */
ffa09fc4:	00 e3 a2 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09fc8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b8(-7311176) */
ffa09fcc:	29 e4 13 00 	R1 = [P5 + 0x4c];
ffa09fd0:	00 e1 bc 70 	R0.L = 0x70bc;		/* (28860)	R0=0xff9070bc(-7311172) */
ffa09fd4:	00 e3 9a 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09fd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070bc(-7311172) */
ffa09fdc:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09fe0:	00 e3 ce 00 	CALL 0xffa0a17c <_uart_str>;
ffa09fe4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09fe8:	29 e4 14 00 	R1 = [P5 + 0x50];
ffa09fec:	00 e1 c0 70 	R0.L = 0x70c0;		/* (28864)	R0=0xff9070c0(-7311168) */
ffa09ff0:	00 e3 8c 01 	CALL 0xffa0a308 <_printf_hex>;
ffa09ff4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c0(-7311168) */
ffa09ff8:	29 e4 15 00 	R1 = [P5 + 0x54];
ffa09ffc:	00 e1 c4 70 	R0.L = 0x70c4;		/* (28868)	R0=0xff9070c4(-7311164) */
ffa0a000:	00 e3 84 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a004:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c4(-7311164) */
ffa0a008:	29 e4 16 00 	R1 = [P5 + 0x58];
ffa0a00c:	00 e1 c8 70 	R0.L = 0x70c8;		/* (28872)	R0=0xff9070c8(-7311160) */
ffa0a010:	00 e3 7c 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a014:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c8(-7311160) */
ffa0a018:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0a01c:	00 e3 b0 00 	CALL 0xffa0a17c <_uart_str>;
ffa0a020:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa0a024:	29 e4 17 00 	R1 = [P5 + 0x5c];
ffa0a028:	00 e1 cc 70 	R0.L = 0x70cc;		/* (28876)	R0=0xff9070cc(-7311156) */
ffa0a02c:	00 e3 6e 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a030:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070cc(-7311156) */
ffa0a034:	29 e4 18 00 	R1 = [P5 + 0x60];
ffa0a038:	00 e1 d0 70 	R0.L = 0x70d0;		/* (28880)	R0=0xff9070d0(-7311152) */
ffa0a03c:	00 e3 66 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a040:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d0(-7311152) */
ffa0a044:	29 e4 19 00 	R1 = [P5 + 0x64];
ffa0a048:	00 e1 d4 70 	R0.L = 0x70d4;		/* (28884)	R0=0xff9070d4(-7311148) */
ffa0a04c:	00 e3 5e 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a050:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d4(-7311148) */
ffa0a054:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0a058:	00 e3 92 00 	CALL 0xffa0a17c <_uart_str>;
ffa0a05c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa0a060:	29 e4 1a 00 	R1 = [P5 + 0x68];
ffa0a064:	00 e1 d8 70 	R0.L = 0x70d8;		/* (28888)	R0=0xff9070d8(-7311144) */
ffa0a068:	00 e3 50 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a06c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d8(-7311144) */
ffa0a070:	29 e4 1b 00 	R1 = [P5 + 0x6c];
ffa0a074:	00 e1 dc 70 	R0.L = 0x70dc;		/* (28892)	R0=0xff9070dc(-7311140) */
ffa0a078:	00 e3 48 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a07c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070dc(-7311140) */
ffa0a080:	29 e4 1c 00 	R1 = [P5 + 0x70];
ffa0a084:	00 e1 e0 70 	R0.L = 0x70e0;		/* (28896)	R0=0xff9070e0(-7311136) */
ffa0a088:	00 e3 40 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a08c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070e0(-7311136) */
ffa0a090:	29 e4 1d 00 	R1 = [P5 + 0x74];
ffa0a094:	00 e1 e4 70 	R0.L = 0x70e4;		/* (28900)	R0=0xff9070e4(-7311132) */
ffa0a098:	00 e3 38 01 	CALL 0xffa0a308 <_printf_hex>;
ffa0a09c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc07188(-4165240) */
ffa0a0a0:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa0a0a4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc071ac(-4165204) */
ffa0a0a8:	09 e1 0c 07 	P1.L = 0x70c;		/* (1804)	P1=0xffc0070c(-4192500) */
ffa0a0ac:	30 e1 00 01 	I0 = 0x100 (X);		/*		I0=0x100(256) */
ffa0a0b0:	08 e1 04 07 	P0.L = 0x704;		/* (1796)	P0=0xffc00704(-4192508) */
ffa0a0b4:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa0a0b8:	13 60       	R3 = 0x2 (X);		/*		R3=0x0(  0) */
ffa0a0ba:	0e 60       	R6 = 0x1 (X);		/*		R6=0x0(  0) */
ffa0a0bc:	1f 60       	R7 = 0x3 (X);		/*		R7=0x0(  0) */
ffa0a0be:	80 30       	R0 = I0;
ffa0a0c0:	08 97       	W[P1] = R0;
ffa0a0c2:	24 00       	SSYNC;
ffa0a0c4:	08 97       	W[P1] = R0;
ffa0a0c6:	24 00       	SSYNC;
ffa0a0c8:	01 61       	R1 = 0x20 (X);		/*		R1=0x0(  0) */
ffa0a0ca:	21 54       	R0 = R1 & R4;
ffa0a0cc:	0a 60       	R2 = 0x1 (X);		/*		R2=0x0(  0) */
ffa0a0ce:	32 68       	P2 = 0x6 (X);		/*		P2=0x0(  0) */
ffa0a0d0:	00 0c       	CC = R0 == 0x0;
ffa0a0d2:	b4 e0 0d 20 	LSETUP(0xffa0a0da <_exception_report+0x2a2>, 0xffa0a0ec <_exception_report+0x2b4>) LC1 = P2;
ffa0a0d6:	35 1c       	IF CC JUMP 0xffa0a140 <_exception_report+0x308> (BP);
ffa0a0d8:	05 20       	JUMP.S 0xffa0a0e2 <_exception_report+0x2aa>;
ffa0a0da:	09 4e       	R1 >>= 0x1;
ffa0a0dc:	21 54       	R0 = R1 & R4;
ffa0a0de:	00 0c       	CC = R0 == 0x0;
ffa0a0e0:	30 1c       	IF CC JUMP 0xffa0a140 <_exception_report+0x308> (BP);
ffa0a0e2:	2a 97       	W[P5] = R2;
ffa0a0e4:	0b 97       	W[P1] = R3;
ffa0a0e6:	24 00       	SSYNC;
ffa0a0e8:	0b 97       	W[P1] = R3;
ffa0a0ea:	24 00       	SSYNC;
ffa0a0ec:	00 00       	NOP;
ffa0a0ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a0f0:	00 97       	W[P0] = R0;
ffa0a0f2:	f2 68       	P2 = 0x1e (X);		/*		P2=0x0(  0) */
ffa0a0f4:	b2 e0 04 20 	LSETUP(0xffa0a0f8 <_exception_report+0x2c0>, 0xffa0a0fc <_exception_report+0x2c4>) LC1 = P2;
ffa0a0f8:	00 00       	NOP;
ffa0a0fa:	00 00       	NOP;
ffa0a0fc:	00 00       	NOP;
ffa0a0fe:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa0a102:	2a 54       	R0 = R2 & R5;
ffa0a104:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a106:	82 68       	P2 = 0x10 (X);		/*		P2=0x0(  0) */
ffa0a108:	00 0c       	CC = R0 == 0x0;
ffa0a10a:	b4 e0 10 20 	LSETUP(0xffa0a112 <_exception_report+0x2da>, 0xffa0a12a <_exception_report+0x2f2>) LC1 = P2;
ffa0a10e:	1b 1c       	IF CC JUMP 0xffa0a144 <_exception_report+0x30c> (BP);
ffa0a110:	05 20       	JUMP.S 0xffa0a11a <_exception_report+0x2e2>;
ffa0a112:	0a 4e       	R2 >>= 0x1;
ffa0a114:	2a 54       	R0 = R2 & R5;
ffa0a116:	00 0c       	CC = R0 == 0x0;
ffa0a118:	16 1c       	IF CC JUMP 0xffa0a144 <_exception_report+0x30c> (BP);
ffa0a11a:	2e 97       	W[P5] = R6;
ffa0a11c:	0b 97       	W[P1] = R3;
ffa0a11e:	24 00       	SSYNC;
ffa0a120:	0b 97       	W[P1] = R3;
ffa0a122:	24 00       	SSYNC;
ffa0a124:	39 54       	R0 = R1 & R7;
ffa0a126:	18 0c       	CC = R0 == 0x3;
ffa0a128:	10 18       	IF CC JUMP 0xffa0a148 <_exception_report+0x310>;
ffa0a12a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a12c:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a12e:	00 97       	W[P0] = R0;
ffa0a130:	2a e1 2c 01 	P2 = 0x12c (X);		/*		P2=0x12c(300) */
ffa0a134:	b2 e0 04 20 	LSETUP(0xffa0a138 <_exception_report+0x300>, 0xffa0a13c <_exception_report+0x304>) LC1 = P2;
ffa0a138:	00 00       	NOP;
ffa0a13a:	00 00       	NOP;
ffa0a13c:	00 00       	NOP;
ffa0a13e:	c0 2f       	JUMP.S 0xffa0a0be <_exception_report+0x286>;
ffa0a140:	02 97       	W[P0] = R2;
ffa0a142:	d1 2f       	JUMP.S 0xffa0a0e4 <_exception_report+0x2ac>;
ffa0a144:	06 97       	W[P0] = R6;
ffa0a146:	eb 2f       	JUMP.S 0xffa0a11c <_exception_report+0x2e4>;
	...
ffa0a178:	d9 2f       	JUMP.S 0xffa0a12a <_exception_report+0x2f2>;
	...

ffa0a17c <_uart_str>:
ffa0a17c:	68 05       	[--SP] = (R7:5);
ffa0a17e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0012c(-4194004) */
ffa0a182:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a186:	08 32       	P1 = R0;
ffa0a188:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa0a18c:	10 95       	R0 = W[P2] (Z);
ffa0a18e:	c0 42       	R0 = R0.L (Z);
ffa0a190:	08 0c       	CC = R0 == 0x1;
ffa0a192:	07 18       	IF CC JUMP 0xffa0a1a0 <_uart_str+0x24>;
ffa0a194:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0a196:	01 e8 00 00 	UNLINK;
ffa0a19a:	03 30       	R0 = R3;
ffa0a19c:	28 05       	(R7:5) = [SP++];
ffa0a19e:	10 00       	RTS;
ffa0a1a0:	48 99       	R0 = B[P1] (X);
ffa0a1a2:	01 43       	R1 = R0.B (X);
ffa0a1a4:	01 0c       	CC = R1 == 0x0;
ffa0a1a6:	f7 1b       	IF CC JUMP 0xffa0a194 <_uart_str+0x18>;
ffa0a1a8:	41 32       	P0 = P1;
ffa0a1aa:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00100(-4194048) */
ffa0a1ae:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a1b0:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0a1b2:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa0a1b6:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0a1b8:	02 61       	R2 = 0x20 (X);		/*		R2=0x0(  0) */
ffa0a1ba:	57 60       	R7 = 0xa (X);		/*		R7=0x0(  0) */
ffa0a1bc:	6e 60       	R6 = 0xd (X);		/*		R6=0x0(  0) */
ffa0a1be:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa0a1c2:	55 60       	R5 = 0xa (X);		/*		R5=0x0(  0) */
ffa0a1c4:	b2 e0 1a 10 	LSETUP(0xffa0a1c8 <_uart_str+0x4c>, 0xffa0a1f8 <_uart_str+0x7c>) LC1 = P1;
ffa0a1c8:	29 08       	CC = R1 == R5;
ffa0a1ca:	19 18       	IF CC JUMP 0xffa0a1fc <_uart_str+0x80>;
ffa0a1cc:	00 00       	NOP;
ffa0a1ce:	00 43       	R0 = R0.B (X);
ffa0a1d0:	20 9f       	W[I0] = R0.L;
ffa0a1d2:	10 95       	R0 = W[P2] (Z);
ffa0a1d4:	02 54       	R0 = R2 & R0;
ffa0a1d6:	00 0c       	CC = R0 == 0x0;
ffa0a1d8:	0b 10       	IF !CC JUMP 0xffa0a1ee <_uart_str+0x72>;
ffa0a1da:	00 00       	NOP;
ffa0a1dc:	00 00       	NOP;
ffa0a1de:	4a 34       	I1 = P2;
ffa0a1e0:	00 00       	NOP;
ffa0a1e2:	00 00       	NOP;
ffa0a1e4:	28 9d       	R0.L = W[I1];
ffa0a1e6:	02 54       	R0 = R2 & R0;
ffa0a1e8:	00 0c       	CC = R0 == 0x0;
ffa0a1ea:	fb 1f       	IF CC JUMP 0xffa0a1e0 <_uart_str+0x64> (BP);
ffa0a1ec:	91 32       	P2 = I1;
ffa0a1ee:	40 98       	R0 = B[P0++] (X);
ffa0a1f0:	01 43       	R1 = R0.B (X);
ffa0a1f2:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0a1f4:	01 0c       	CC = R1 == 0x0;
ffa0a1f6:	d0 1b       	IF CC JUMP 0xffa0a196 <_uart_str+0x1a>;
ffa0a1f8:	00 00       	NOP;
ffa0a1fa:	ce 2f       	JUMP.S 0xffa0a196 <_uart_str+0x1a>;
ffa0a1fc:	27 9f       	W[I0] = R7.L;
ffa0a1fe:	10 95       	R0 = W[P2] (Z);
ffa0a200:	02 54       	R0 = R2 & R0;
ffa0a202:	00 0c       	CC = R0 == 0x0;
ffa0a204:	0b 10       	IF !CC JUMP 0xffa0a21a <_uart_str+0x9e>;
ffa0a206:	00 00       	NOP;
ffa0a208:	00 00       	NOP;
ffa0a20a:	4a 34       	I1 = P2;
ffa0a20c:	00 00       	NOP;
ffa0a20e:	00 00       	NOP;
ffa0a210:	28 9d       	R0.L = W[I1];
ffa0a212:	02 54       	R0 = R2 & R0;
ffa0a214:	00 0c       	CC = R0 == 0x0;
ffa0a216:	fb 1f       	IF CC JUMP 0xffa0a20c <_uart_str+0x90> (BP);
ffa0a218:	91 32       	P2 = I1;
ffa0a21a:	26 9f       	W[I0] = R6.L;
ffa0a21c:	10 95       	R0 = W[P2] (Z);
ffa0a21e:	02 54       	R0 = R2 & R0;
ffa0a220:	00 0c       	CC = R0 == 0x0;
ffa0a222:	e6 13       	IF !CC JUMP 0xffa0a1ee <_uart_str+0x72>;
ffa0a224:	00 00       	NOP;
ffa0a226:	00 00       	NOP;
ffa0a228:	4a 34       	I1 = P2;
ffa0a22a:	00 00       	NOP;
ffa0a22c:	00 00       	NOP;
ffa0a22e:	28 9d       	R0.L = W[I1];
ffa0a230:	02 54       	R0 = R2 & R0;
ffa0a232:	00 0c       	CC = R0 == 0x0;
ffa0a234:	fb 1f       	IF CC JUMP 0xffa0a22a <_uart_str+0xae> (BP);
ffa0a236:	91 32       	P2 = I1;
ffa0a238:	db 2f       	JUMP.S 0xffa0a1ee <_uart_str+0x72>;
	...

ffa0a23c <_printf_str>:
ffa0a23c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a240:	01 e8 00 00 	UNLINK;
ffa0a244:	ff e2 9c ff 	JUMP.L 0xffa0a17c <_uart_str>;

ffa0a248 <_printf_newline>:
ffa0a248:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a24c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa0a250:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0a254:	01 e8 00 00 	UNLINK;
ffa0a258:	ff e2 92 ff 	JUMP.L 0xffa0a17c <_uart_str>;

ffa0a25c <_printf_hex_byte>:
ffa0a25c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0a25e:	39 30       	R7 = R1;
ffa0a260:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a264:	28 32       	P5 = R0;
ffa0a266:	00 e3 bb 01 	CALL 0xffa0a5dc <_strlen_>;
ffa0a26a:	08 30       	R1 = R0;
ffa0a26c:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0a270:	01 09       	CC = R1 <= R0;
ffa0a272:	3d 10       	IF !CC JUMP 0xffa0a2ec <_printf_hex_byte+0x90>;
ffa0a274:	01 0d       	CC = R1 <= 0x0;
ffa0a276:	44 18       	IF CC JUMP 0xffa0a2fe <_printf_hex_byte+0xa2>;
ffa0a278:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa0a27c:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0a27e:	0c e1 4c 72 	P4.L = 0x724c;		/* (29260)	P4=0xff90724c <_printf_out> */
ffa0a282:	09 32       	P1 = R1;
ffa0a284:	b2 e0 06 10 	LSETUP(0xffa0a288 <_printf_hex_byte+0x2c>, 0xffa0a290 <_printf_hex_byte+0x34>) LC1 = P1;
ffa0a288:	62 91       	P2 = [P4];
ffa0a28a:	68 98       	R0 = B[P5++] (X);
ffa0a28c:	82 5a       	P2 = P2 + P0;
ffa0a28e:	10 9b       	B[P2] = R0;
ffa0a290:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a292:	09 32       	P1 = R1;
ffa0a294:	62 91       	P2 = [P4];
ffa0a296:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa0a298:	79 43       	R1 = R7.B (Z);
ffa0a29a:	4a 60       	R2 = 0x9 (X);		/*		R2=0x0(  0) */
ffa0a29c:	8a 5a       	P2 = P2 + P1;
ffa0a29e:	10 9b       	B[P2] = R0;
ffa0a2a0:	62 91       	P2 = [P4];
ffa0a2a2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a2a4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a2a8:	8a 5a       	P2 = P2 + P1;
ffa0a2aa:	10 9b       	B[P2] = R0;
ffa0a2ac:	82 c6 e1 81 	R0 = R1 >> 0x4;
ffa0a2b0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a2b2:	10 09       	CC = R0 <= R2;
ffa0a2b4:	23 14       	IF !CC JUMP 0xffa0a2fa <_printf_hex_byte+0x9e> (BP);
ffa0a2b6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a2b8:	62 91       	P2 = [P4];
ffa0a2ba:	8a 5a       	P2 = P2 + P1;
ffa0a2bc:	10 9b       	B[P2] = R0;
ffa0a2be:	78 60       	R0 = 0xf (X);		/*		R0=0x0(  0) */
ffa0a2c0:	01 54       	R0 = R1 & R0;
ffa0a2c2:	49 60       	R1 = 0x9 (X);		/*		R1=0x0(  0) */
ffa0a2c4:	08 09       	CC = R0 <= R1;
ffa0a2c6:	18 1c       	IF CC JUMP 0xffa0a2f6 <_printf_hex_byte+0x9a> (BP);
ffa0a2c8:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a2ca:	62 91       	P2 = [P4];
ffa0a2cc:	8a 5a       	P2 = P2 + P1;
ffa0a2ce:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0a2d2:	62 91       	P2 = [P4];
ffa0a2d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2d6:	8a 5a       	P2 = P2 + P1;
ffa0a2d8:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0a2dc:	20 91       	R0 = [P4];
ffa0a2de:	ff e3 4f ff 	CALL 0xffa0a17c <_uart_str>;
ffa0a2e2:	01 e8 00 00 	UNLINK;
ffa0a2e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2e8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0a2ea:	10 00       	RTS;
ffa0a2ec:	01 e8 00 00 	UNLINK;
ffa0a2f0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa0a2f2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0a2f4:	10 00       	RTS;
ffa0a2f6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a2f8:	e9 2f       	JUMP.S 0xffa0a2ca <_printf_hex_byte+0x6e>;
ffa0a2fa:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a2fc:	de 2f       	JUMP.S 0xffa0a2b8 <_printf_hex_byte+0x5c>;
ffa0a2fe:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90724c <_printf_out> */
ffa0a302:	0c e1 4c 72 	P4.L = 0x724c;		/* (29260)	P4=0xff90724c <_printf_out> */
ffa0a306:	c6 2f       	JUMP.S 0xffa0a292 <_printf_hex_byte+0x36>;

ffa0a308 <_printf_hex>:
ffa0a308:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0a30a:	39 30       	R7 = R1;
ffa0a30c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a310:	28 32       	P5 = R0;
ffa0a312:	00 e3 65 01 	CALL 0xffa0a5dc <_strlen_>;
ffa0a316:	08 30       	R1 = R0;
ffa0a318:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa0a31c:	01 09       	CC = R1 <= R0;
ffa0a31e:	46 10       	IF !CC JUMP 0xffa0a3aa <_printf_hex+0xa2>;
ffa0a320:	01 0d       	CC = R1 <= 0x0;
ffa0a322:	49 18       	IF CC JUMP 0xffa0a3b4 <_printf_hex+0xac>;
ffa0a324:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90724c <_printf_out> */
ffa0a328:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0a32a:	0c e1 4c 72 	P4.L = 0x724c;		/* (29260)	P4=0xff90724c <_printf_out> */
ffa0a32e:	09 32       	P1 = R1;
ffa0a330:	b2 e0 06 10 	LSETUP(0xffa0a334 <_printf_hex+0x2c>, 0xffa0a33c <_printf_hex+0x34>) LC1 = P1;
ffa0a334:	62 91       	P2 = [P4];
ffa0a336:	68 98       	R0 = B[P5++] (X);
ffa0a338:	82 5a       	P2 = P2 + P0;
ffa0a33a:	10 9b       	B[P2] = R0;
ffa0a33c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a33e:	09 32       	P1 = R1;
ffa0a340:	62 91       	P2 = [P4];
ffa0a342:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa0a344:	29 32       	P5 = R1;
ffa0a346:	e1 60       	R1 = 0x1c (X);		/*		R1=0x0(  0) */
ffa0a348:	8a 5a       	P2 = P2 + P1;
ffa0a34a:	10 9b       	B[P2] = R0;
ffa0a34c:	62 91       	P2 = [P4];
ffa0a34e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a350:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a354:	15 6c       	P5 += 0x2;		/* (  2) */
ffa0a356:	8a 5a       	P2 = P2 + P1;
ffa0a358:	10 9b       	B[P2] = R0;
ffa0a35a:	7a 60       	R2 = 0xf (X);		/*		R2=0x0(  0) */
ffa0a35c:	40 68       	P0 = 0x8 (X);		/*		P0=0x0(  0) */
ffa0a35e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x0(  0) */
ffa0a360:	b2 e0 10 00 	LSETUP(0xffa0a364 <_printf_hex+0x5c>, 0xffa0a380 <_printf_hex+0x78>) LC1 = P0;
ffa0a364:	07 30       	R0 = R7;
ffa0a366:	08 40       	R0 >>>= R1;
ffa0a368:	10 54       	R0 = R0 & R2;
ffa0a36a:	18 09       	CC = R0 <= R3;
ffa0a36c:	1d 1c       	IF CC JUMP 0xffa0a3a6 <_printf_hex+0x9e> (BP);
ffa0a36e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a370:	62 91       	P2 = [P4];
ffa0a372:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907134 <_rbuf> */
ffa0a376:	0b e1 4c 72 	P3.L = 0x724c;		/* (29260)	P3=0xff90724c <_printf_out> */
ffa0a37a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0a37c:	aa 5a       	P2 = P2 + P5;
ffa0a37e:	10 9b       	B[P2] = R0;
ffa0a380:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0a382:	5a 91       	P2 = [P3];
ffa0a384:	49 6c       	P1 += 0x9;		/* (  9) */
ffa0a386:	50 60       	R0 = 0xa (X);		/*		R0=0x0(  0) */
ffa0a388:	8a 5a       	P2 = P2 + P1;
ffa0a38a:	10 9b       	B[P2] = R0;
ffa0a38c:	5a 91       	P2 = [P3];
ffa0a38e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a390:	8a 5a       	P2 = P2 + P1;
ffa0a392:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0a396:	18 91       	R0 = [P3];
ffa0a398:	ff e3 f2 fe 	CALL 0xffa0a17c <_uart_str>;
ffa0a39c:	01 e8 00 00 	UNLINK;
ffa0a3a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3a2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0a3a4:	10 00       	RTS;
ffa0a3a6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a3a8:	e4 2f       	JUMP.S 0xffa0a370 <_printf_hex+0x68>;
ffa0a3aa:	01 e8 00 00 	UNLINK;
ffa0a3ae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa0a3b0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0a3b2:	10 00       	RTS;
ffa0a3b4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90724c <_printf_out> */
ffa0a3b8:	0c e1 4c 72 	P4.L = 0x724c;		/* (29260)	P4=0xff90724c <_printf_out> */
ffa0a3bc:	c1 2f       	JUMP.S 0xffa0a33e <_printf_hex+0x36>;
	...

ffa0a3c0 <_printf_int>:
ffa0a3c0:	eb 05       	[--SP] = (R7:5, P5:3);
ffa0a3c2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a3c6:	28 30       	R5 = R0;
ffa0a3c8:	39 30       	R7 = R1;
ffa0a3ca:	01 0c       	CC = R1 == 0x0;
ffa0a3cc:	45 14       	IF !CC JUMP 0xffa0a456 <_printf_int+0x96> (BP);
ffa0a3ce:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900000(-7340032) */
ffa0a3d2:	06 e1 48 72 	R6.L = 0x7248;		/* (29256)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a3d6:	06 32       	P0 = R6;
ffa0a3d8:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa0a3da:	0c 68       	P4 = 0x1 (X);		/*		P4=0x0(  0) */
ffa0a3dc:	42 91       	P2 = [P0];
ffa0a3de:	10 9b       	B[P2] = R0;
ffa0a3e0:	05 30       	R0 = R5;
ffa0a3e2:	00 e3 fd 00 	CALL 0xffa0a5dc <_strlen_>;
ffa0a3e6:	08 30       	R1 = R0;
ffa0a3e8:	44 30       	R0 = P4;
ffa0a3ea:	81 50       	R2 = R1 + R0;
ffa0a3ec:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0a3f0:	02 09       	CC = R2 <= R0;
ffa0a3f2:	50 10       	IF !CC JUMP 0xffa0a492 <_printf_int+0xd2>;
ffa0a3f4:	01 0d       	CC = R1 <= 0x0;
ffa0a3f6:	7d 18       	IF CC JUMP 0xffa0a4f0 <_printf_int+0x130>;
ffa0a3f8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90724c <_printf_out> */
ffa0a3fc:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0a3fe:	0b e1 4c 72 	P3.L = 0x724c;		/* (29260)	P3=0xff90724c <_printf_out> */
ffa0a402:	09 32       	P1 = R1;
ffa0a404:	b2 e0 08 10 	LSETUP(0xffa0a408 <_printf_int+0x48>, 0xffa0a414 <_printf_int+0x54>) LC1 = P1;
ffa0a408:	2d 32       	P5 = R5;
ffa0a40a:	5a 91       	P2 = [P3];
ffa0a40c:	0d 64       	R5 += 0x1;		/* (  1) */
ffa0a40e:	82 5a       	P2 = P2 + P0;
ffa0a410:	68 98       	R0 = B[P5++] (X);
ffa0a412:	10 9b       	B[P2] = R0;
ffa0a414:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a416:	44 32       	P0 = P4;
ffa0a418:	29 32       	P5 = R1;
ffa0a41a:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0a41c:	26 32       	P4 = R6;
ffa0a41e:	5a 91       	P2 = [P3];
ffa0a420:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000(-7340032) */
ffa0a424:	01 e1 4c 72 	R1.L = 0x724c;		/* (29260)	R1=0xff90724c <_printf_out>(-7310772) */
ffa0a428:	61 91       	P1 = [P4];
ffa0a42a:	aa 5a       	P2 = P2 + P5;
ffa0a42c:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0a42e:	41 5a       	P1 = P1 + P0;
ffa0a430:	48 99       	R0 = B[P1] (X);
ffa0a432:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0a434:	10 9b       	B[P2] = R0;
ffa0a436:	78 0c       	CC = P0 == -0x1;
ffa0a438:	f2 17       	IF !CC JUMP 0xffa0a41c <_printf_int+0x5c> (BP);
ffa0a43a:	29 32       	P5 = R1;
ffa0a43c:	02 32       	P0 = R2;
ffa0a43e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a440:	6a 91       	P2 = [P5];
ffa0a442:	82 5a       	P2 = P2 + P0;
ffa0a444:	10 9b       	B[P2] = R0;
ffa0a446:	28 91       	R0 = [P5];
ffa0a448:	ff e3 9a fe 	CALL 0xffa0a17c <_uart_str>;
ffa0a44c:	01 e8 00 00 	UNLINK;
ffa0a450:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a452:	ab 05       	(R7:5, P5:3) = [SP++];
ffa0a454:	10 00       	RTS;
ffa0a456:	01 0d       	CC = R1 <= 0x0;
ffa0a458:	22 18       	IF CC JUMP 0xffa0a49c <_printf_int+0xdc>;
ffa0a45a:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a45e:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0a460:	06 e1 48 72 	R6.L = 0x7248;		/* (29256)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a464:	05 20       	JUMP.S 0xffa0a46e <_printf_int+0xae>;
ffa0a466:	2a e1 80 00 	P2 = 0x80 (X);		/*		P2=0x80(128) */
ffa0a46a:	54 08       	CC = P4 == P2;
ffa0a46c:	ba 1b       	IF CC JUMP 0xffa0a3e0 <_printf_int+0x20>;
ffa0a46e:	07 30       	R0 = R7;
ffa0a470:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa0a472:	00 e3 85 00 	CALL 0xffa0a57c <_mod>;
ffa0a476:	0e 32       	P1 = R6;
ffa0a478:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a47a:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa0a47c:	4a 91       	P2 = [P1];
ffa0a47e:	a2 5a       	P2 = P2 + P4;
ffa0a480:	10 9b       	B[P2] = R0;
ffa0a482:	07 30       	R0 = R7;
ffa0a484:	00 e3 6e 00 	CALL 0xffa0a560 <_div>;
ffa0a488:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0a48a:	38 30       	R7 = R0;
ffa0a48c:	00 0d       	CC = R0 <= 0x0;
ffa0a48e:	ec 17       	IF !CC JUMP 0xffa0a466 <_printf_int+0xa6> (BP);
ffa0a490:	a8 2f       	JUMP.S 0xffa0a3e0 <_printf_int+0x20>;
ffa0a492:	01 e8 00 00 	UNLINK;
ffa0a496:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa0a498:	ab 05       	(R7:5, P5:3) = [SP++];
ffa0a49a:	10 00       	RTS;
ffa0a49c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa0a49e:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa0a4a0:	f8 4f       	R0 <<= 0x1f;
ffa0a4a2:	f8 53       	R7 = R0 - R7;
ffa0a4a4:	07 0d       	CC = R7 <= 0x0;
ffa0a4a6:	2e 18       	IF CC JUMP 0xffa0a502 <_printf_int+0x142>;
ffa0a4a8:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a4ac:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0a4ae:	06 e1 48 72 	R6.L = 0x7248;		/* (29256)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a4b2:	05 20       	JUMP.S 0xffa0a4bc <_printf_int+0xfc>;
ffa0a4b4:	28 e1 80 00 	P0 = 0x80 (X);		/*		P0=0x80(128) */
ffa0a4b8:	45 08       	CC = P5 == P0;
ffa0a4ba:	20 18       	IF CC JUMP 0xffa0a4fa <_printf_int+0x13a>;
ffa0a4bc:	26 32       	P4 = R6;
ffa0a4be:	07 30       	R0 = R7;
ffa0a4c0:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa0a4c2:	00 e3 5d 00 	CALL 0xffa0a57c <_mod>;
ffa0a4c6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a4c8:	62 91       	P2 = [P4];
ffa0a4ca:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa0a4cc:	aa 5a       	P2 = P2 + P5;
ffa0a4ce:	10 9b       	B[P2] = R0;
ffa0a4d0:	07 30       	R0 = R7;
ffa0a4d2:	00 e3 47 00 	CALL 0xffa0a560 <_div>;
ffa0a4d6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0a4d8:	38 30       	R7 = R0;
ffa0a4da:	00 0d       	CC = R0 <= 0x0;
ffa0a4dc:	ec 17       	IF !CC JUMP 0xffa0a4b4 <_printf_int+0xf4> (BP);
ffa0a4de:	65 32       	P4 = P5;
ffa0a4e0:	4d 32       	P1 = P5;
ffa0a4e2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0a4e4:	2e 32       	P5 = R6;
ffa0a4e6:	68 61       	R0 = 0x2d (X);		/*		R0=0x0(  0) */
ffa0a4e8:	6a 91       	P2 = [P5];
ffa0a4ea:	8a 5a       	P2 = P2 + P1;
ffa0a4ec:	10 9b       	B[P2] = R0;
ffa0a4ee:	79 2f       	JUMP.S 0xffa0a3e0 <_printf_int+0x20>;
ffa0a4f0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90724c <_printf_out> */
ffa0a4f4:	0b e1 4c 72 	P3.L = 0x724c;		/* (29260)	P3=0xff90724c <_printf_out> */
ffa0a4f8:	8f 2f       	JUMP.S 0xffa0a416 <_printf_int+0x56>;
ffa0a4fa:	48 32       	P1 = P0;
ffa0a4fc:	2c e1 81 00 	P4 = 0x81 (X);		/*		P4=0x81(129) */
ffa0a500:	f2 2f       	JUMP.S 0xffa0a4e4 <_printf_int+0x124>;
ffa0a502:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a506:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0a508:	0c 68       	P4 = 0x1 (X);		/*		P4=0x0(  0) */
ffa0a50a:	06 e1 48 72 	R6.L = 0x7248;		/* (29256)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a50e:	eb 2f       	JUMP.S 0xffa0a4e4 <_printf_int+0x124>;

ffa0a510 <_printf_ip>:
ffa0a510:	70 05       	[--SP] = (R7:6);
ffa0a512:	39 30       	R7 = R1;
ffa0a514:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a518:	49 43       	R1 = R1.B (Z);
ffa0a51a:	ff e3 53 ff 	CALL 0xffa0a3c0 <_printf_int>;
ffa0a51e:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff907248 <_printf_temp>(-7310776) */
ffa0a522:	06 e1 e8 70 	R6.L = 0x70e8;		/* (28904)	R6=0xff9070e8(-7311128) */
ffa0a526:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0a52a:	49 43       	R1 = R1.B (Z);
ffa0a52c:	06 30       	R0 = R6;
ffa0a52e:	ff e3 49 ff 	CALL 0xffa0a3c0 <_printf_int>;
ffa0a532:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0a536:	49 43       	R1 = R1.B (Z);
ffa0a538:	06 30       	R0 = R6;
ffa0a53a:	ff e3 43 ff 	CALL 0xffa0a3c0 <_printf_int>;
ffa0a53e:	c7 4e       	R7 >>= 0x18;
ffa0a540:	0f 30       	R1 = R7;
ffa0a542:	06 30       	R0 = R6;
ffa0a544:	ff e3 3e ff 	CALL 0xffa0a3c0 <_printf_int>;
ffa0a548:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa0a54c:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0a550:	ff e3 16 fe 	CALL 0xffa0a17c <_uart_str>;
ffa0a554:	01 e8 00 00 	UNLINK;
ffa0a558:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a55a:	30 05       	(R7:6) = [SP++];
ffa0a55c:	10 00       	RTS;
	...

ffa0a560 <_div>:
ffa0a560:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a564:	08 4f       	R0 <<= 0x1;
ffa0a566:	48 42       	DIVS (R0, R1);
ffa0a568:	7a 68       	P2 = 0xf (X);		/*		P2=0x0(  0) */
ffa0a56a:	b2 e0 03 20 	LSETUP(0xffa0a56e <_div+0xe>, 0xffa0a570 <_div+0x10>) LC1 = P2;
ffa0a56e:	08 42       	DIVQ (R0, R1);
ffa0a570:	00 00       	NOP;
ffa0a572:	80 42       	R0 = R0.L (X);
ffa0a574:	01 e8 00 00 	UNLINK;
ffa0a578:	10 00       	RTS;
	...

ffa0a57c <_mod>:
ffa0a57c:	18 30       	R3 = R0;
ffa0a57e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a582:	08 4f       	R0 <<= 0x1;
ffa0a584:	11 30       	R2 = R1;
ffa0a586:	50 42       	DIVS (R0, R2);
ffa0a588:	7a 68       	P2 = 0xf (X);		/*		P2=0x0(  0) */
ffa0a58a:	b2 e0 03 20 	LSETUP(0xffa0a58e <_mod+0x12>, 0xffa0a590 <_mod+0x14>) LC1 = P2;
ffa0a58e:	10 42       	DIVQ (R0, R2);
ffa0a590:	00 00       	NOP;
ffa0a592:	80 42       	R0 = R0.L (X);
ffa0a594:	c8 40       	R0 *= R1;
ffa0a596:	01 e8 00 00 	UNLINK;
ffa0a59a:	03 52       	R0 = R3 - R0;
ffa0a59c:	10 00       	RTS;
	...

ffa0a5a0 <_memcpy_>:
ffa0a5a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a5a4:	00 32       	P0 = R0;
ffa0a5a6:	09 32       	P1 = R1;
ffa0a5a8:	02 0d       	CC = R2 <= 0x0;
ffa0a5aa:	07 18       	IF CC JUMP 0xffa0a5b8 <_memcpy_+0x18>;
ffa0a5ac:	00 00       	NOP;
ffa0a5ae:	12 32       	P2 = R2;
ffa0a5b0:	b2 e0 03 20 	LSETUP(0xffa0a5b4 <_memcpy_+0x14>, 0xffa0a5b6 <_memcpy_+0x16>) LC1 = P2;
ffa0a5b4:	40 98       	R0 = B[P0++] (X);
ffa0a5b6:	08 9a       	B[P1++] = R0;
ffa0a5b8:	01 e8 00 00 	UNLINK;
ffa0a5bc:	10 00       	RTS;
	...

ffa0a5c0 <_memset_>:
ffa0a5c0:	08 32       	P1 = R0;
ffa0a5c2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a5c6:	01 30       	R0 = R1;
ffa0a5c8:	02 0d       	CC = R2 <= 0x0;
ffa0a5ca:	05 18       	IF CC JUMP 0xffa0a5d4 <_memset_+0x14>;
ffa0a5cc:	12 32       	P2 = R2;
ffa0a5ce:	b2 e0 02 20 	LSETUP(0xffa0a5d2 <_memset_+0x12>, 0xffa0a5d2 <_memset_+0x12>) LC1 = P2;
ffa0a5d2:	08 9a       	B[P1++] = R0;
ffa0a5d4:	01 e8 00 00 	UNLINK;
ffa0a5d8:	10 00       	RTS;
	...

ffa0a5dc <_strlen_>:
ffa0a5dc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a5e0:	08 32       	P1 = R0;
ffa0a5e2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a5e4:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa0a5e8:	b2 e0 05 20 	LSETUP(0xffa0a5ec <_strlen_+0x10>, 0xffa0a5f2 <_strlen_+0x16>) LC1 = P2;
ffa0a5ec:	48 98       	R0 = B[P1++] (X);
ffa0a5ee:	00 0c       	CC = R0 == 0x0;
ffa0a5f0:	03 18       	IF CC JUMP 0xffa0a5f6 <_strlen_+0x1a>;
ffa0a5f2:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a5f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a5f6:	01 30       	R0 = R1;
ffa0a5f8:	01 e8 00 00 	UNLINK;
ffa0a5fc:	10 00       	RTS;
	...

ffa0a600 <_strcpy_>:
ffa0a600:	12 32       	P2 = R2;
ffa0a602:	c5 04       	[--SP] = (P5:5);
ffa0a604:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a608:	29 32       	P5 = R1;
ffa0a60a:	00 32       	P0 = R0;
ffa0a60c:	51 99       	R1 = B[P2] (X);
ffa0a60e:	08 43       	R0 = R1.B (X);
ffa0a610:	00 0c       	CC = R0 == 0x0;
ffa0a612:	19 18       	IF CC JUMP 0xffa0a644 <_strcpy_+0x44>;
ffa0a614:	0a 32       	P1 = R2;
ffa0a616:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a618:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa0a61c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a61e:	b2 e0 0a 20 	LSETUP(0xffa0a622 <_strcpy_+0x22>, 0xffa0a632 <_strcpy_+0x32>) LC1 = P2;
ffa0a622:	01 9a       	B[P0++] = R1;
ffa0a624:	49 98       	R1 = B[P1++] (X);
ffa0a626:	08 43       	R0 = R1.B (X);
ffa0a628:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0a62a:	00 0c       	CC = R0 == 0x0;
ffa0a62c:	04 18       	IF CC JUMP 0xffa0a634 <_strcpy_+0x34>;
ffa0a62e:	00 00       	NOP;
ffa0a630:	00 00       	NOP;
ffa0a632:	00 00       	NOP;
ffa0a634:	28 91       	R0 = [P5];
ffa0a636:	10 50       	R0 = R0 + R2;
ffa0a638:	28 93       	[P5] = R0;
ffa0a63a:	01 e8 00 00 	UNLINK;
ffa0a63e:	40 30       	R0 = P0;
ffa0a640:	85 04       	(P5:5) = [SP++];
ffa0a642:	10 00       	RTS;
ffa0a644:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a646:	f7 2f       	JUMP.S 0xffa0a634 <_strcpy_+0x34>;

ffa0a648 <_strprepend>:
ffa0a648:	c5 04       	[--SP] = (P5:5);
ffa0a64a:	02 32       	P0 = R2;
ffa0a64c:	0a 32       	P1 = R2;
ffa0a64e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a652:	18 30       	R3 = R0;
ffa0a654:	29 32       	P5 = R1;
ffa0a656:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a658:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa0a65c:	b2 e0 07 20 	LSETUP(0xffa0a660 <_strprepend+0x18>, 0xffa0a66a <_strprepend+0x22>) LC1 = P2;
ffa0a660:	48 98       	R0 = B[P1++] (X);
ffa0a662:	00 0c       	CC = R0 == 0x0;
ffa0a664:	0c 18       	IF CC JUMP 0xffa0a67c <_strprepend+0x34>;
ffa0a666:	00 00       	NOP;
ffa0a668:	00 00       	NOP;
ffa0a66a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0a66c:	28 91       	R0 = [P5];
ffa0a66e:	c3 52       	R3 = R3 - R0;
ffa0a670:	0b 32       	P1 = R3;
ffa0a672:	01 e8 00 00 	UNLINK;
ffa0a676:	41 30       	R0 = P1;
ffa0a678:	85 04       	(P5:5) = [SP++];
ffa0a67a:	10 00       	RTS;
ffa0a67c:	28 91       	R0 = [P5];
ffa0a67e:	03 52       	R0 = R3 - R0;
ffa0a680:	08 32       	P1 = R0;
ffa0a682:	02 0c       	CC = R2 == 0x0;
ffa0a684:	f7 1b       	IF CC JUMP 0xffa0a672 <_strprepend+0x2a>;
ffa0a686:	00 00       	NOP;
ffa0a688:	12 32       	P2 = R2;
ffa0a68a:	b2 e0 03 20 	LSETUP(0xffa0a68e <_strprepend+0x46>, 0xffa0a690 <_strprepend+0x48>) LC1 = P2;
ffa0a68e:	40 98       	R0 = B[P0++] (X);
ffa0a690:	08 9a       	B[P1++] = R0;
ffa0a692:	ed 2f       	JUMP.S 0xffa0a66c <_strprepend+0x24>;

ffa0a694 <_strcmp>:
ffa0a694:	10 32       	P2 = R0;
ffa0a696:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a69a:	09 32       	P1 = R1;
ffa0a69c:	51 99       	R1 = B[P2] (X);
ffa0a69e:	01 0c       	CC = R1 == 0x0;
ffa0a6a0:	20 18       	IF CC JUMP 0xffa0a6e0 <_strcmp+0x4c>;
ffa0a6a2:	00 00       	NOP;
ffa0a6a4:	00 00       	NOP;
ffa0a6a6:	00 00       	NOP;
ffa0a6a8:	48 99       	R0 = B[P1] (X);
ffa0a6aa:	00 0c       	CC = R0 == 0x0;
ffa0a6ac:	1a 18       	IF CC JUMP 0xffa0a6e0 <_strcmp+0x4c>;
ffa0a6ae:	01 08       	CC = R1 == R0;
ffa0a6b0:	1c 10       	IF !CC JUMP 0xffa0a6e8 <_strcmp+0x54>;
ffa0a6b2:	42 32       	P0 = P2;
ffa0a6b4:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a6b6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a6b8:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa0a6bc:	b3 e0 11 20 	LSETUP(0xffa0a6c2 <_strcmp+0x2e>, 0xffa0a6de <_strcmp+0x4a>) LC1 = P2;
ffa0a6c0:	06 20       	JUMP.S 0xffa0a6cc <_strcmp+0x38>;
ffa0a6c2:	01 08       	CC = R1 == R0;
ffa0a6c4:	12 10       	IF !CC JUMP 0xffa0a6e8 <_strcmp+0x54>;
ffa0a6c6:	00 00       	NOP;
ffa0a6c8:	00 00       	NOP;
ffa0a6ca:	00 00       	NOP;
ffa0a6cc:	41 98       	R1 = B[P0++] (X);
ffa0a6ce:	01 0c       	CC = R1 == 0x0;
ffa0a6d0:	08 18       	IF CC JUMP 0xffa0a6e0 <_strcmp+0x4c>;
ffa0a6d2:	00 00       	NOP;
ffa0a6d4:	00 00       	NOP;
ffa0a6d6:	00 00       	NOP;
ffa0a6d8:	48 98       	R0 = B[P1++] (X);
ffa0a6da:	00 0c       	CC = R0 == 0x0;
ffa0a6dc:	02 18       	IF CC JUMP 0xffa0a6e0 <_strcmp+0x4c>;
ffa0a6de:	00 00       	NOP;
ffa0a6e0:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a6e2:	01 e8 00 00 	UNLINK;
ffa0a6e6:	10 00       	RTS;
ffa0a6e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6ea:	01 e8 00 00 	UNLINK;
ffa0a6ee:	10 00       	RTS;

ffa0a6f0 <_substr>:
ffa0a6f0:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0a6f2:	20 32       	P4 = R0;
ffa0a6f4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a6f8:	32 30       	R6 = R2;
ffa0a6fa:	11 32       	P2 = R1;
ffa0a6fc:	62 99       	R2 = B[P4] (X);
ffa0a6fe:	02 0c       	CC = R2 == 0x0;
ffa0a700:	1a 18       	IF CC JUMP 0xffa0a734 <_substr+0x44>;
ffa0a702:	00 00       	NOP;
ffa0a704:	00 00       	NOP;
ffa0a706:	00 00       	NOP;
ffa0a708:	50 99       	R0 = B[P2] (X);
ffa0a70a:	00 0c       	CC = R0 == 0x0;
ffa0a70c:	14 18       	IF CC JUMP 0xffa0a734 <_substr+0x44>;
ffa0a70e:	06 0d       	CC = R6 <= 0x0;
ffa0a710:	12 18       	IF CC JUMP 0xffa0a734 <_substr+0x44>;
ffa0a712:	29 32       	P5 = R1;
ffa0a714:	7c 30       	R7 = P4;
ffa0a716:	08 68       	P0 = 0x1 (X);		/*		P0=0x0(  0) */
ffa0a718:	17 64       	R7 += 0x2;		/* (  2) */
ffa0a71a:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0a71c:	02 08       	CC = R2 == R0;
ffa0a71e:	10 18       	IF CC JUMP 0xffa0a73e <_substr+0x4e>;
ffa0a720:	00 00       	NOP;
ffa0a722:	00 00       	NOP;
ffa0a724:	48 30       	R1 = P0;
ffa0a726:	68 99       	R0 = B[P5] (X);
ffa0a728:	00 0c       	CC = R0 == 0x0;
ffa0a72a:	05 18       	IF CC JUMP 0xffa0a734 <_substr+0x44>;
ffa0a72c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a72e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0a730:	0e 09       	CC = R6 <= R1;
ffa0a732:	f5 17       	IF !CC JUMP 0xffa0a71c <_substr+0x2c> (BP);
ffa0a734:	01 e8 00 00 	UNLINK;
ffa0a738:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a73a:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0a73c:	10 00       	RTS;
ffa0a73e:	0f 32       	P1 = R7;
ffa0a740:	55 32       	P2 = P5;
ffa0a742:	40 30       	R0 = P0;
ffa0a744:	a1 e5 01 00 	R1 = B[P4 + 0x1] (X);
ffa0a748:	00 00       	NOP;
ffa0a74a:	53 98       	R3 = B[P2++] (X);
ffa0a74c:	0b 08       	CC = R3 == R1;
ffa0a74e:	eb 13       	IF !CC JUMP 0xffa0a724 <_substr+0x34>;
ffa0a750:	03 0c       	CC = R3 == 0x0;
ffa0a752:	e9 1b       	IF CC JUMP 0xffa0a724 <_substr+0x34>;
ffa0a754:	00 00       	NOP;
ffa0a756:	00 00       	NOP;
ffa0a758:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a75a:	49 98       	R1 = B[P1++] (X);
ffa0a75c:	01 0c       	CC = R1 == 0x0;
ffa0a75e:	f5 17       	IF !CC JUMP 0xffa0a748 <_substr+0x58> (BP);
ffa0a760:	01 e8 00 00 	UNLINK;
ffa0a764:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0a766:	10 00       	RTS;

ffa0a768 <_sprintf_int>:
ffa0a768:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0a76a:	29 32       	P5 = R1;
ffa0a76c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a770:	30 30       	R6 = R0;
ffa0a772:	45 0c       	CC = P5 == 0x0;
ffa0a774:	1a 14       	IF !CC JUMP 0xffa0a7a8 <_sprintf_int+0x40> (BP);
ffa0a776:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 */
ffa0a77a:	0c e1 48 72 	P4.L = 0x7248;		/* (29256)	P4=0xff907248 <_printf_temp> */
ffa0a77e:	62 91       	P2 = [P4];
ffa0a780:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa0a782:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa0a784:	10 9b       	B[P2] = R0;
ffa0a786:	0f 32       	P1 = R7;
ffa0a788:	06 32       	P0 = R6;
ffa0a78a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a78c:	f9 6f       	P1 += -0x1;		/* ( -1) */
ffa0a78e:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a790:	62 91       	P2 = [P4];
ffa0a792:	b9 08       	CC = R1 < R7;
ffa0a794:	8a 5a       	P2 = P2 + P1;
ffa0a796:	50 99       	R0 = B[P2] (X);
ffa0a798:	00 9a       	B[P0++] = R0;
ffa0a79a:	f9 6f       	P1 += -0x1;		/* ( -1) */
ffa0a79c:	f9 1f       	IF CC JUMP 0xffa0a78e <_sprintf_int+0x26> (BP);
ffa0a79e:	07 30       	R0 = R7;
ffa0a7a0:	01 e8 00 00 	UNLINK;
ffa0a7a4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0a7a6:	10 00       	RTS;
ffa0a7a8:	45 0d       	CC = P5 <= 0x0;
ffa0a7aa:	21 18       	IF CC JUMP 0xffa0a7ec <_sprintf_int+0x84>;
ffa0a7ac:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff907248 <_printf_temp> */
ffa0a7b0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0a7b2:	0c e1 48 72 	P4.L = 0x7248;		/* (29256)	P4=0xff907248 <_printf_temp> */
ffa0a7b6:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa0a7b8:	45 30       	R0 = P5;
ffa0a7ba:	ff e3 95 f7 	CALL 0xffa096e4 <___divsi3>;
ffa0a7be:	17 32       	P2 = R7;
ffa0a7c0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || P1 = [P4] || NOP;
ffa0a7c4:	61 91 00 00 
ffa0a7c8:	e8 4f       	R0 <<= 0x1d;
ffa0a7ca:	08 52       	R0 = R0 - R1;
ffa0a7cc:	10 4f       	R0 <<= 0x2;
ffa0a7ce:	51 5a       	P1 = P1 + P2;
ffa0a7d0:	08 52       	R0 = R0 - R1;
ffa0a7d2:	10 32       	P2 = R0;
ffa0a7d4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0a7d6:	01 0c       	CC = R1 == 0x0;
ffa0a7d8:	95 5c       	P2 = P5 + (P2 << 0x1);
ffa0a7da:	42 30       	R0 = P2;
ffa0a7dc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a7de:	08 9b       	B[P1] = R0;
ffa0a7e0:	d3 1b       	IF CC JUMP 0xffa0a786 <_sprintf_int+0x1e>;
ffa0a7e2:	58 60       	R0 = 0xb (X);		/*		R0=0x0(  0) */
ffa0a7e4:	29 32       	P5 = R1;
ffa0a7e6:	07 08       	CC = R7 == R0;
ffa0a7e8:	e7 17       	IF !CC JUMP 0xffa0a7b6 <_sprintf_int+0x4e> (BP);
ffa0a7ea:	ce 2f       	JUMP.S 0xffa0a786 <_sprintf_int+0x1e>;
ffa0a7ec:	01 30       	R0 = R1;
ffa0a7ee:	f8 4c       	BITCLR (R0, 0x1f);		/* bit 31 */
ffa0a7f0:	28 32       	P5 = R0;
ffa0a7f2:	4a e1 00 80 	P2.H = 0x8000;		/* (-32768)	P2=0x80000500 */
ffa0a7f6:	0a e1 00 00 	P2.L = 0x0;		/* (  0)	P2=0x80000000 */
ffa0a7fa:	5a 32       	P3 = P2;
ffa0a7fc:	2b 44       	P3 -= P5;
ffa0a7fe:	43 0d       	CC = P3 <= 0x0;
ffa0a800:	2a 18       	IF CC JUMP 0xffa0a854 <_sprintf_int+0xec>;
ffa0a802:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff907248 <_printf_temp> */
ffa0a806:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0a808:	0c e1 48 72 	P4.L = 0x7248;		/* (29256)	P4=0xff907248 <_printf_temp> */
ffa0a80c:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa0a80e:	43 30       	R0 = P3;
ffa0a810:	ff e3 6a f7 	CALL 0xffa096e4 <___divsi3>;
ffa0a814:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || P1 = [P4] || NOP;
ffa0a818:	61 91 00 00 
ffa0a81c:	e8 4f       	R0 <<= 0x1d;
ffa0a81e:	08 52       	R0 = R0 - R1;
ffa0a820:	10 4f       	R0 <<= 0x2;
ffa0a822:	08 52       	R0 = R0 - R1;
ffa0a824:	10 32       	P2 = R0;
ffa0a826:	69 5a       	P1 = P1 + P5;
ffa0a828:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0a82a:	01 0c       	CC = R1 == 0x0;
ffa0a82c:	93 5c       	P2 = P3 + (P2 << 0x1);
ffa0a82e:	42 30       	R0 = P2;
ffa0a830:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a832:	08 9b       	B[P1] = R0;
ffa0a834:	0c 18       	IF CC JUMP 0xffa0a84c <_sprintf_int+0xe4>;
ffa0a836:	5a 68       	P2 = 0xb (X);		/*		P2=0x0(  0) */
ffa0a838:	19 32       	P3 = R1;
ffa0a83a:	55 08       	CC = P5 == P2;
ffa0a83c:	e8 17       	IF !CC JUMP 0xffa0a80c <_sprintf_int+0xa4> (BP);
ffa0a83e:	59 68       	P1 = 0xb (X);		/*		P1=0x0(  0) */
ffa0a840:	67 60       	R7 = 0xc (X);		/*		R7=0x0(  0) */
ffa0a842:	62 91       	P2 = [P4];
ffa0a844:	68 61       	R0 = 0x2d (X);		/*		R0=0x0(  0) */
ffa0a846:	8a 5a       	P2 = P2 + P1;
ffa0a848:	10 9b       	B[P2] = R0;
ffa0a84a:	9e 2f       	JUMP.S 0xffa0a786 <_sprintf_int+0x1e>;
ffa0a84c:	7d 30       	R7 = P5;
ffa0a84e:	4d 32       	P1 = P5;
ffa0a850:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0a852:	f8 2f       	JUMP.S 0xffa0a842 <_sprintf_int+0xda>;
ffa0a854:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff907248 <_printf_temp> */
ffa0a858:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0a85a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa0a85c:	0c e1 48 72 	P4.L = 0x7248;		/* (29256)	P4=0xff907248 <_printf_temp> */
ffa0a860:	f1 2f       	JUMP.S 0xffa0a842 <_sprintf_int+0xda>;
	...

ffa0a864 <_sprintf_hex>:
ffa0a864:	10 32       	P2 = R0;
ffa0a866:	78 05       	[--SP] = (R7:7);
ffa0a868:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a86c:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa0a86e:	e2 60       	R2 = 0x1c (X);		/*		R2=0x0(  0) */
ffa0a870:	10 9b       	B[P2] = R0;
ffa0a872:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a876:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0a87a:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0a87c:	7b 60       	R3 = 0xf (X);		/*		R3=0x0(  0) */
ffa0a87e:	41 68       	P1 = 0x8 (X);		/*		P1=0x0(  0) */
ffa0a880:	4f 60       	R7 = 0x9 (X);		/*		R7=0x0(  0) */
ffa0a882:	b2 e0 09 10 	LSETUP(0xffa0a886 <_sprintf_hex+0x22>, 0xffa0a894 <_sprintf_hex+0x30>) LC1 = P1;
ffa0a886:	01 30       	R0 = R1;
ffa0a888:	10 40       	R0 >>>= R2;
ffa0a88a:	18 54       	R0 = R0 & R3;
ffa0a88c:	38 09       	CC = R0 <= R7;
ffa0a88e:	09 1c       	IF CC JUMP 0xffa0a8a0 <_sprintf_hex+0x3c> (BP);
ffa0a890:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a892:	10 9a       	B[P2++] = R0;
ffa0a894:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0a896:	01 e8 00 00 	UNLINK;
ffa0a89a:	50 60       	R0 = 0xa (X);		/*		R0=0x0(  0) */
ffa0a89c:	38 05       	(R7:7) = [SP++];
ffa0a89e:	10 00       	RTS;
ffa0a8a0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a8a2:	f8 2f       	JUMP.S 0xffa0a892 <_sprintf_hex+0x2e>;

ffa0a8a4 <_strprintf_int>:
ffa0a8a4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0a8a6:	29 32       	P5 = R1;
ffa0a8a8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a8ac:	38 30       	R7 = R0;
ffa0a8ae:	0a 30       	R1 = R2;
ffa0a8b0:	ff e3 5c ff 	CALL 0xffa0a768 <_sprintf_int>;
ffa0a8b4:	29 91       	R1 = [P5];
ffa0a8b6:	41 50       	R1 = R1 + R0;
ffa0a8b8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0a8bc:	29 93 00 00 
ffa0a8c0:	07 30       	R0 = R7;
ffa0a8c2:	01 e8 00 00 	UNLINK;
ffa0a8c6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0a8c8:	10 00       	RTS;
	...

ffa0a8cc <_strprintf_hex>:
ffa0a8cc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0a8ce:	29 32       	P5 = R1;
ffa0a8d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a8d4:	38 30       	R7 = R0;
ffa0a8d6:	0a 30       	R1 = R2;
ffa0a8d8:	ff e3 c6 ff 	CALL 0xffa0a864 <_sprintf_hex>;
ffa0a8dc:	29 91       	R1 = [P5];
ffa0a8de:	41 50       	R1 = R1 + R0;
ffa0a8e0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0a8e4:	29 93 00 00 
ffa0a8e8:	07 30       	R0 = R7;
ffa0a8ea:	01 e8 00 00 	UNLINK;
ffa0a8ee:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0a8f0:	10 00       	RTS;
	...

ffa0a8f4 <_atoi>:
ffa0a8f4:	10 32       	P2 = R0;
ffa0a8f6:	68 05       	[--SP] = (R7:5);
ffa0a8f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a8fc:	39 30       	R7 = R1;
ffa0a8fe:	6a 61       	R2 = 0x2d (X);		/*		R2=0x0(  0) */
ffa0a900:	51 99       	R1 = B[P2] (X);
ffa0a902:	08 43       	R0 = R1.B (X);
ffa0a904:	10 08       	CC = R0 == R2;
ffa0a906:	28 18       	IF CC JUMP 0xffa0a956 <_atoi+0x62>;
ffa0a908:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0a90a:	0e 60       	R6 = 0x1 (X);		/*		R6=0x0(  0) */
ffa0a90c:	11 30       	R2 = R1;
ffa0a90e:	82 66       	R2 += -0x30;		/* (-48) */
ffa0a910:	50 43       	R0 = R2.B (Z);
ffa0a912:	4a 32       	P1 = P2;
ffa0a914:	4a 60       	R2 = 0x9 (X);		/*		R2=0x0(  0) */
ffa0a916:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a918:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0a91a:	10 0a       	CC = R0 <= R2 (IU);
ffa0a91c:	16 10       	IF !CC JUMP 0xffa0a948 <_atoi+0x54>;
ffa0a91e:	4d 60       	R5 = 0x9 (X);		/*		R5=0x0(  0) */
ffa0a920:	bb 08       	CC = R3 < R7;
ffa0a922:	13 10       	IF !CC JUMP 0xffa0a948 <_atoi+0x54>;
ffa0a924:	42 30       	R0 = P2;
ffa0a926:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a928:	09 43       	R1 = R1.B (X);
ffa0a92a:	48 50       	R1 = R0 + R1;
ffa0a92c:	11 32       	P2 = R1;
ffa0a92e:	49 98       	R1 = B[P1++] (X);
ffa0a930:	11 30       	R2 = R1;
ffa0a932:	82 66       	R2 += -0x30;		/* (-48) */
ffa0a934:	50 43       	R0 = R2.B (Z);
ffa0a936:	28 0a       	CC = R0 <= R5 (IU);
ffa0a938:	03 14       	IF !CC JUMP 0xffa0a93e <_atoi+0x4a> (BP);
ffa0a93a:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0a93c:	92 5a       	P2 = P2 << 0x1;
ffa0a93e:	50 43       	R0 = R2.B (Z);
ffa0a940:	4a 60       	R2 = 0x9 (X);		/*		R2=0x0(  0) */
ffa0a942:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0a944:	10 0a       	CC = R0 <= R2 (IU);
ffa0a946:	ed 1f       	IF CC JUMP 0xffa0a920 <_atoi+0x2c> (BP);
ffa0a948:	6a 30       	R5 = P2;
ffa0a94a:	f5 40       	R5 *= R6;
ffa0a94c:	01 e8 00 00 	UNLINK;
ffa0a950:	05 30       	R0 = R5;
ffa0a952:	28 05       	(R7:5) = [SP++];
ffa0a954:	10 00       	RTS;
ffa0a956:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a958:	51 99       	R1 = B[P2] (X);
ffa0a95a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x0(  0) */
ffa0a95c:	fe 63       	R6 = -0x1 (X);		/*		R6=0xffffff80(-128) */
ffa0a95e:	d7 2f       	JUMP.S 0xffa0a90c <_atoi+0x18>;

ffa0a960 <_udelay>:
ffa0a960:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a964:	00 0d       	CC = R0 <= 0x0;
ffa0a966:	0a 18       	IF CC JUMP 0xffa0a97a <_udelay+0x1a>;
ffa0a968:	08 32       	P1 = R0;
ffa0a96a:	a2 e0 07 10 	LSETUP(0xffa0a96e <_udelay+0xe>, 0xffa0a978 <_udelay+0x18>) LC0 = P1;
ffa0a96e:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0a972:	b2 e0 03 20 	LSETUP(0xffa0a976 <_udelay+0x16>, 0xffa0a978 <_udelay+0x18>) LC1 = P2;
ffa0a976:	00 00       	NOP;
ffa0a978:	00 00       	NOP;
ffa0a97a:	01 e8 00 00 	UNLINK;
ffa0a97e:	10 00       	RTS;

ffa0a980 <_spi_delay>:
ffa0a980:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa0a984:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a988:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a98c:	42 34       	I0 = P2;
ffa0a98e:	00 00       	NOP;
ffa0a990:	20 9d       	R0.L = W[I0];
ffa0a992:	c0 42       	R0 = R0.L (Z);
ffa0a994:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a996:	fc 17       	IF !CC JUMP 0xffa0a98e <_spi_delay+0xe> (BP);
ffa0a998:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a99a:	0c 10       	IF !CC JUMP 0xffa0a9b2 <_spi_delay+0x32>;
ffa0a99c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a9a0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a9a4:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a9a6:	42 34       	I0 = P2;
ffa0a9a8:	00 00       	NOP;
ffa0a9aa:	20 9d       	R0.L = W[I0];
ffa0a9ac:	01 54       	R0 = R1 & R0;
ffa0a9ae:	00 0c       	CC = R0 == 0x0;
ffa0a9b0:	fc 1f       	IF CC JUMP 0xffa0a9a8 <_spi_delay+0x28> (BP);
ffa0a9b2:	01 e8 00 00 	UNLINK;
ffa0a9b6:	10 00       	RTS;

ffa0a9b8 <_spi_write_register>:
ffa0a9b8:	19 30       	R3 = R1;
ffa0a9ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a9be:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a9c2:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a9c4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a9c8:	11 97       	W[P2] = R1;
ffa0a9ca:	24 00       	SSYNC;
ffa0a9cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a9d0:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a9d2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a9d6:	40 43       	R0 = R0.B (Z);
ffa0a9d8:	10 97       	W[P2] = R0;
ffa0a9da:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a9dc:	42 34       	I0 = P2;
ffa0a9de:	00 00       	NOP;
ffa0a9e0:	20 9d       	R0.L = W[I0];
ffa0a9e2:	c0 42       	R0 = R0.L (Z);
ffa0a9e4:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a9e6:	fc 17       	IF !CC JUMP 0xffa0a9de <_spi_write_register+0x26> (BP);
ffa0a9e8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a9ea:	0c 10       	IF !CC JUMP 0xffa0aa02 <_spi_write_register+0x4a>;
ffa0a9ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a9f0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a9f4:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a9f6:	42 34       	I0 = P2;
ffa0a9f8:	00 00       	NOP;
ffa0a9fa:	20 9d       	R0.L = W[I0];
ffa0a9fc:	01 54       	R0 = R1 & R0;
ffa0a9fe:	00 0c       	CC = R0 == 0x0;
ffa0aa00:	fc 1f       	IF CC JUMP 0xffa0a9f8 <_spi_write_register+0x40> (BP);
ffa0aa02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0aa06:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0aa0a:	12 95       	R2 = W[P2] (Z);
ffa0aa0c:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0aa0e:	58 43       	R0 = R3.B (Z);
ffa0aa10:	10 97       	W[P2] = R0;
ffa0aa12:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0aa14:	42 34       	I0 = P2;
ffa0aa16:	00 00       	NOP;
ffa0aa18:	20 9d       	R0.L = W[I0];
ffa0aa1a:	c0 42       	R0 = R0.L (Z);
ffa0aa1c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0aa1e:	fc 17       	IF !CC JUMP 0xffa0aa16 <_spi_write_register+0x5e> (BP);
ffa0aa20:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0aa22:	0c 10       	IF !CC JUMP 0xffa0aa3a <_spi_write_register+0x82>;
ffa0aa24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0aa28:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0aa2c:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0aa2e:	42 34       	I0 = P2;
ffa0aa30:	00 00       	NOP;
ffa0aa32:	20 9d       	R0.L = W[I0];
ffa0aa34:	01 54       	R0 = R1 & R0;
ffa0aa36:	00 0c       	CC = R0 == 0x0;
ffa0aa38:	fc 1f       	IF CC JUMP 0xffa0aa30 <_spi_write_register+0x78> (BP);
ffa0aa3a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0aa3e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0aa40:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0aa44:	10 97       	W[P2] = R0;
ffa0aa46:	24 00       	SSYNC;
ffa0aa48:	02 30       	R0 = R2;
ffa0aa4a:	01 e8 00 00 	UNLINK;
ffa0aa4e:	10 00       	RTS;

ffa0aa50 <_spi_read_register>:
ffa0aa50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aa54:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0aa58:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0aa5a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0aa5e:	11 97       	W[P2] = R1;
ffa0aa60:	24 00       	SSYNC;
ffa0aa62:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0aa66:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0aa6a:	40 43       	R0 = R0.B (Z);
ffa0aa6c:	10 97       	W[P2] = R0;
ffa0aa6e:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0aa70:	42 34       	I0 = P2;
ffa0aa72:	00 00       	NOP;
ffa0aa74:	20 9d       	R0.L = W[I0];
ffa0aa76:	c0 42       	R0 = R0.L (Z);
ffa0aa78:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0aa7a:	fc 17       	IF !CC JUMP 0xffa0aa72 <_spi_read_register+0x22> (BP);
ffa0aa7c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0aa7e:	0c 10       	IF !CC JUMP 0xffa0aa96 <_spi_read_register+0x46>;
ffa0aa80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0aa84:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0aa88:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0aa8a:	42 34       	I0 = P2;
ffa0aa8c:	00 00       	NOP;
ffa0aa8e:	20 9d       	R0.L = W[I0];
ffa0aa90:	01 54       	R0 = R1 & R0;
ffa0aa92:	00 0c       	CC = R0 == 0x0;
ffa0aa94:	fc 1f       	IF CC JUMP 0xffa0aa8c <_spi_read_register+0x3c> (BP);
ffa0aa96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0aa9a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0aa9e:	10 95       	R0 = W[P2] (Z);
ffa0aaa0:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0aaa2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aaa4:	10 97       	W[P2] = R0;
ffa0aaa6:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0aaa8:	42 34       	I0 = P2;
ffa0aaaa:	00 00       	NOP;
ffa0aaac:	20 9d       	R0.L = W[I0];
ffa0aaae:	c0 42       	R0 = R0.L (Z);
ffa0aab0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0aab2:	fc 17       	IF !CC JUMP 0xffa0aaaa <_spi_read_register+0x5a> (BP);
ffa0aab4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0aab6:	0c 10       	IF !CC JUMP 0xffa0aace <_spi_read_register+0x7e>;
ffa0aab8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0aabc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0aac0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0aac2:	42 34       	I0 = P2;
ffa0aac4:	00 00       	NOP;
ffa0aac6:	20 9d       	R0.L = W[I0];
ffa0aac8:	01 54       	R0 = R1 & R0;
ffa0aaca:	00 0c       	CC = R0 == 0x0;
ffa0aacc:	fc 1f       	IF CC JUMP 0xffa0aac4 <_spi_read_register+0x74> (BP);
ffa0aace:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0aad2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0aad6:	10 95       	R0 = W[P2] (Z);
ffa0aad8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0aadc:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0aade:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0aae2:	11 97       	W[P2] = R1;
ffa0aae4:	24 00       	SSYNC;
ffa0aae6:	01 e8 00 00 	UNLINK;
ffa0aaea:	10 00       	RTS;

ffa0aaec <_spi_read_register_status>:
ffa0aaec:	09 32       	P1 = R1;
ffa0aaee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aaf2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0aaf6:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0aaf8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0aafc:	11 97       	W[P2] = R1;
ffa0aafe:	24 00       	SSYNC;
ffa0ab00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ab04:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0ab08:	40 43       	R0 = R0.B (Z);
ffa0ab0a:	10 97       	W[P2] = R0;
ffa0ab0c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0ab0e:	42 34       	I0 = P2;
ffa0ab10:	00 00       	NOP;
ffa0ab12:	20 9d       	R0.L = W[I0];
ffa0ab14:	c0 42       	R0 = R0.L (Z);
ffa0ab16:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ab18:	fc 17       	IF !CC JUMP 0xffa0ab10 <_spi_read_register_status+0x24> (BP);
ffa0ab1a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ab1c:	0c 10       	IF !CC JUMP 0xffa0ab34 <_spi_read_register_status+0x48>;
ffa0ab1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0ab22:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0ab26:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ab28:	42 34       	I0 = P2;
ffa0ab2a:	00 00       	NOP;
ffa0ab2c:	20 9d       	R0.L = W[I0];
ffa0ab2e:	01 54       	R0 = R1 & R0;
ffa0ab30:	00 0c       	CC = R0 == 0x0;
ffa0ab32:	fc 1f       	IF CC JUMP 0xffa0ab2a <_spi_read_register_status+0x3e> (BP);
ffa0ab34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ab38:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0ab3c:	12 95       	R2 = W[P2] (Z);
ffa0ab3e:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0ab40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab42:	10 97       	W[P2] = R0;
ffa0ab44:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0ab46:	42 34       	I0 = P2;
ffa0ab48:	00 00       	NOP;
ffa0ab4a:	20 9d       	R0.L = W[I0];
ffa0ab4c:	c0 42       	R0 = R0.L (Z);
ffa0ab4e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ab50:	fc 17       	IF !CC JUMP 0xffa0ab48 <_spi_read_register_status+0x5c> (BP);
ffa0ab52:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ab54:	0c 10       	IF !CC JUMP 0xffa0ab6c <_spi_read_register_status+0x80>;
ffa0ab56:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0ab5a:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0ab5e:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ab60:	42 34       	I0 = P2;
ffa0ab62:	00 00       	NOP;
ffa0ab64:	20 9d       	R0.L = W[I0];
ffa0ab66:	01 54       	R0 = R1 & R0;
ffa0ab68:	00 0c       	CC = R0 == 0x0;
ffa0ab6a:	fc 1f       	IF CC JUMP 0xffa0ab62 <_spi_read_register_status+0x76> (BP);
ffa0ab6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ab70:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0ab74:	10 95       	R0 = W[P2] (Z);
ffa0ab76:	08 9b       	B[P1] = R0;
ffa0ab78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0ab7c:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0ab7e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ab82:	10 97       	W[P2] = R0;
ffa0ab84:	24 00       	SSYNC;
ffa0ab86:	02 30       	R0 = R2;
ffa0ab88:	01 e8 00 00 	UNLINK;
ffa0ab8c:	10 00       	RTS;
	...

ffa0ab90 <_spi_write_byte>:
ffa0ab90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ab94:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0ab98:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0ab9a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ab9e:	11 97       	W[P2] = R1;
ffa0aba0:	24 00       	SSYNC;
ffa0aba2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0aba6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0abaa:	40 43       	R0 = R0.B (Z);
ffa0abac:	10 97       	W[P2] = R0;
ffa0abae:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0abb0:	42 34       	I0 = P2;
ffa0abb2:	00 00       	NOP;
ffa0abb4:	20 9d       	R0.L = W[I0];
ffa0abb6:	c0 42       	R0 = R0.L (Z);
ffa0abb8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0abba:	fc 17       	IF !CC JUMP 0xffa0abb2 <_spi_write_byte+0x22> (BP);
ffa0abbc:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0abbe:	0c 10       	IF !CC JUMP 0xffa0abd6 <_spi_write_byte+0x46>;
ffa0abc0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0abc4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0abc8:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0abca:	42 34       	I0 = P2;
ffa0abcc:	00 00       	NOP;
ffa0abce:	20 9d       	R0.L = W[I0];
ffa0abd0:	01 54       	R0 = R1 & R0;
ffa0abd2:	00 0c       	CC = R0 == 0x0;
ffa0abd4:	fc 1f       	IF CC JUMP 0xffa0abcc <_spi_write_byte+0x3c> (BP);
ffa0abd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0abda:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0abde:	10 95       	R0 = W[P2] (Z);
ffa0abe0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0abe4:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0abe6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0abea:	11 97       	W[P2] = R1;
ffa0abec:	24 00       	SSYNC;
ffa0abee:	01 e8 00 00 	UNLINK;
ffa0abf2:	10 00       	RTS;

ffa0abf4 <_spi_write_packet>:
ffa0abf4:	10 30       	R2 = R0;
ffa0abf6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0abfa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0abfe:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0ac00:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ac04:	10 97       	W[P2] = R0;
ffa0ac06:	24 00       	SSYNC;
ffa0ac08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ac0c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0ac10:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0ac14:	10 97       	W[P2] = R0;
ffa0ac16:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0ac18:	42 34       	I0 = P2;
ffa0ac1a:	00 00       	NOP;
ffa0ac1c:	20 9d       	R0.L = W[I0];
ffa0ac1e:	c0 42       	R0 = R0.L (Z);
ffa0ac20:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ac22:	fc 17       	IF !CC JUMP 0xffa0ac1a <_spi_write_packet+0x26> (BP);
ffa0ac24:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ac26:	0c 10       	IF !CC JUMP 0xffa0ac3e <_spi_write_packet+0x4a>;
ffa0ac28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0ac2c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0ac30:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ac32:	42 34       	I0 = P2;
ffa0ac34:	00 00       	NOP;
ffa0ac36:	20 9d       	R0.L = W[I0];
ffa0ac38:	01 54       	R0 = R1 & R0;
ffa0ac3a:	00 0c       	CC = R0 == 0x0;
ffa0ac3c:	fc 1f       	IF CC JUMP 0xffa0ac34 <_spi_write_packet+0x40> (BP);
ffa0ac3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ac42:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0ac46:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0ac4a:	10 97       	W[P2] = R0;
ffa0ac4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0ac50:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa0ac52:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0ac56:	10 97       	W[P2] = R0;
ffa0ac58:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0ac5a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0ac5c:	10 97       	W[P2] = R0;
ffa0ac5e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0ac60:	12 93       	[P2] = R2;
ffa0ac62:	24 00       	SSYNC;
ffa0ac64:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0ac68:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0ac6a:	10 97       	W[P2] = R0;
ffa0ac6c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa0ac70:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0ac72:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ac74:	09 e1 08 05 	P1.L = 0x508;		/* (1288)	P1=0xffc00508(-4193016) */
ffa0ac78:	42 60       	R2 = 0x8 (X);		/*		R2=0x0(  0) */
	...
ffa0ac82:	00 00       	NOP;
ffa0ac84:	10 95       	R0 = W[P2] (Z);
ffa0ac86:	01 54       	R0 = R1 & R0;
ffa0ac88:	00 0c       	CC = R0 == 0x0;
ffa0ac8a:	f8 1f       	IF CC JUMP 0xffa0ac7a <_spi_write_packet+0x86> (BP);
ffa0ac8c:	08 95       	R0 = W[P1] (Z);
ffa0ac8e:	02 54       	R0 = R2 & R0;
ffa0ac90:	00 0c       	CC = R0 == 0x0;
ffa0ac92:	f4 17       	IF !CC JUMP 0xffa0ac7a <_spi_write_packet+0x86> (BP);
ffa0ac94:	10 95       	R0 = W[P2] (Z);
ffa0ac96:	02 54       	R0 = R2 & R0;
ffa0ac98:	00 0c       	CC = R0 == 0x0;
ffa0ac9a:	f0 17       	IF !CC JUMP 0xffa0ac7a <_spi_write_packet+0x86> (BP);
ffa0ac9c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0aca0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0aca4:	42 34       	I0 = P2;
ffa0aca6:	00 00       	NOP;
ffa0aca8:	20 9d       	R0.L = W[I0];
ffa0acaa:	c0 42       	R0 = R0.L (Z);
ffa0acac:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0acae:	fc 17       	IF !CC JUMP 0xffa0aca6 <_spi_write_packet+0xb2> (BP);
ffa0acb0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0acb2:	0c 10       	IF !CC JUMP 0xffa0acca <_spi_write_packet+0xd6>;
ffa0acb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0acb8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0acbc:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0acbe:	42 34       	I0 = P2;
ffa0acc0:	00 00       	NOP;
ffa0acc2:	20 9d       	R0.L = W[I0];
ffa0acc4:	01 54       	R0 = R1 & R0;
ffa0acc6:	00 0c       	CC = R0 == 0x0;
ffa0acc8:	fc 1f       	IF CC JUMP 0xffa0acc0 <_spi_write_packet+0xcc> (BP);
ffa0acca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0acce:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0acd0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0acd4:	10 97       	W[P2] = R0;
ffa0acd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0acda:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0acde:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0ace2:	10 97       	W[P2] = R0;
ffa0ace4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0ace8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0acea:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0acee:	10 97       	W[P2] = R0;
ffa0acf0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0acf4:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0acf6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0acfa:	10 97       	W[P2] = R0;
ffa0acfc:	24 00       	SSYNC;
ffa0acfe:	01 e8 00 00 	UNLINK;
ffa0ad02:	10 00       	RTS;

ffa0ad04 <_spi_write_packet_noDMA>:
ffa0ad04:	10 30       	R2 = R0;
ffa0ad06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ad0a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0ad0e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0ad10:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ad14:	10 97       	W[P2] = R0;
ffa0ad16:	24 00       	SSYNC;
ffa0ad18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ad1c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0ad20:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0ad24:	10 97       	W[P2] = R0;
ffa0ad26:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0ad28:	42 34       	I0 = P2;
ffa0ad2a:	00 00       	NOP;
ffa0ad2c:	20 9d       	R0.L = W[I0];
ffa0ad2e:	c0 42       	R0 = R0.L (Z);
ffa0ad30:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ad32:	fc 17       	IF !CC JUMP 0xffa0ad2a <_spi_write_packet_noDMA+0x26> (BP);
ffa0ad34:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ad36:	0c 10       	IF !CC JUMP 0xffa0ad4e <_spi_write_packet_noDMA+0x4a>;
ffa0ad38:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0ad3c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0ad40:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ad42:	42 34       	I0 = P2;
ffa0ad44:	00 00       	NOP;
ffa0ad46:	20 9d       	R0.L = W[I0];
ffa0ad48:	01 54       	R0 = R1 & R0;
ffa0ad4a:	00 0c       	CC = R0 == 0x0;
ffa0ad4c:	fc 1f       	IF CC JUMP 0xffa0ad44 <_spi_write_packet_noDMA+0x40> (BP);
ffa0ad4e:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00400(-4193280) */
ffa0ad52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ad56:	02 32       	P0 = R2;
ffa0ad58:	10 e1 0c 05 	I0.L = 0x50c;		/* (1292)	I0=0xffc0050c(-4193012) */
ffa0ad5c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0ad60:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ad62:	01 69       	P1 = 0x20 (X);		/*		P1=0x0(  0) */
ffa0ad64:	b2 e0 16 10 	LSETUP(0xffa0ad68 <_spi_write_packet_noDMA+0x64>, 0xffa0ad90 <_spi_write_packet_noDMA+0x8c>) LC1 = P1;
ffa0ad68:	40 98       	R0 = B[P0++] (X);
ffa0ad6a:	20 9f       	W[I0] = R0.L;
ffa0ad6c:	4a 34       	I1 = P2;
ffa0ad6e:	00 00       	NOP;
ffa0ad70:	28 9d       	R0.L = W[I1];
ffa0ad72:	c0 42       	R0 = R0.L (Z);
ffa0ad74:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ad76:	fc 17       	IF !CC JUMP 0xffa0ad6e <_spi_write_packet_noDMA+0x6a> (BP);
ffa0ad78:	91 32       	P2 = I1;
ffa0ad7a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ad7c:	0a 10       	IF !CC JUMP 0xffa0ad90 <_spi_write_packet_noDMA+0x8c>;
ffa0ad7e:	00 00       	NOP;
ffa0ad80:	00 00       	NOP;
ffa0ad82:	4a 34       	I1 = P2;
ffa0ad84:	00 00       	NOP;
ffa0ad86:	28 9d       	R0.L = W[I1];
ffa0ad88:	01 54       	R0 = R1 & R0;
ffa0ad8a:	00 0c       	CC = R0 == 0x0;
ffa0ad8c:	fc 1f       	IF CC JUMP 0xffa0ad84 <_spi_write_packet_noDMA+0x80> (BP);
ffa0ad8e:	91 32       	P2 = I1;
ffa0ad90:	00 00       	NOP;
ffa0ad92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ad96:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0ad98:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ad9c:	10 97       	W[P2] = R0;
ffa0ad9e:	24 00       	SSYNC;
ffa0ada0:	01 e8 00 00 	UNLINK;
ffa0ada4:	10 00       	RTS;
	...

ffa0ada8 <_spi_read_packet>:
ffa0ada8:	78 05       	[--SP] = (R7:7);
ffa0adaa:	38 30       	R7 = R0;
ffa0adac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0adb0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0adb4:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0adb6:	ff e3 01 fe 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0adba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0adbe:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0adc0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0adc4:	10 97       	W[P2] = R0;
ffa0adc6:	24 00       	SSYNC;
ffa0adc8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0adcc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0add0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0add4:	10 97       	W[P2] = R0;
ffa0add6:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0add8:	42 34       	I0 = P2;
ffa0adda:	00 00       	NOP;
ffa0addc:	20 9d       	R0.L = W[I0];
ffa0adde:	c0 42       	R0 = R0.L (Z);
ffa0ade0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ade2:	fc 17       	IF !CC JUMP 0xffa0adda <_spi_read_packet+0x32> (BP);
ffa0ade4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ade6:	0c 10       	IF !CC JUMP 0xffa0adfe <_spi_read_packet+0x56>;
ffa0ade8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0adec:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0adf0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0adf2:	42 34       	I0 = P2;
ffa0adf4:	00 00       	NOP;
ffa0adf6:	20 9d       	R0.L = W[I0];
ffa0adf8:	01 54       	R0 = R1 & R0;
ffa0adfa:	00 0c       	CC = R0 == 0x0;
ffa0adfc:	fc 1f       	IF CC JUMP 0xffa0adf4 <_spi_read_packet+0x4c> (BP);
ffa0adfe:	51 e1 c0 ff 	I1.H = 0xffc0;		/* (-64)	I1=0xffc04000(-4177920) */
ffa0ae02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ae06:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc0050c(-4193012) */
ffa0ae0a:	07 32       	P0 = R7;
ffa0ae0c:	11 e1 0c 05 	I1.L = 0x50c;		/* (1292)	I1=0xffc0050c(-4193012) */
ffa0ae10:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0ae12:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0ae16:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0ae18:	10 e1 18 05 	I0.L = 0x518;		/* (1304)	I0=0xffc00518(-4193000) */
ffa0ae1c:	01 69       	P1 = 0x20 (X);		/*		P1=0x0(  0) */
ffa0ae1e:	b2 e0 16 10 	LSETUP(0xffa0ae22 <_spi_read_packet+0x7a>, 0xffa0ae4a <_spi_read_packet+0xa2>) LC1 = P1;
ffa0ae22:	2a 9f       	W[I1] = R2.L;
ffa0ae24:	52 34       	I2 = P2;
ffa0ae26:	00 00       	NOP;
ffa0ae28:	30 9d       	R0.L = W[I2];
ffa0ae2a:	c0 42       	R0 = R0.L (Z);
ffa0ae2c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ae2e:	fc 17       	IF !CC JUMP 0xffa0ae26 <_spi_read_packet+0x7e> (BP);
ffa0ae30:	92 32       	P2 = I2;
ffa0ae32:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ae34:	0a 10       	IF !CC JUMP 0xffa0ae48 <_spi_read_packet+0xa0>;
ffa0ae36:	00 00       	NOP;
ffa0ae38:	00 00       	NOP;
ffa0ae3a:	52 34       	I2 = P2;
ffa0ae3c:	00 00       	NOP;
ffa0ae3e:	30 9d       	R0.L = W[I2];
ffa0ae40:	01 54       	R0 = R1 & R0;
ffa0ae42:	00 0c       	CC = R0 == 0x0;
ffa0ae44:	fc 1f       	IF CC JUMP 0xffa0ae3c <_spi_read_packet+0x94> (BP);
ffa0ae46:	92 32       	P2 = I2;
ffa0ae48:	20 9d       	R0.L = W[I0];
ffa0ae4a:	00 9a       	B[P0++] = R0;
ffa0ae4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ae50:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0ae52:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ae56:	10 97       	W[P2] = R0;
ffa0ae58:	24 00       	SSYNC;
ffa0ae5a:	01 e8 00 00 	UNLINK;
ffa0ae5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0ae60:	38 05       	(R7:7) = [SP++];
ffa0ae62:	10 00       	RTS;

ffa0ae64 <_spi_read_packet_nocheck>:
ffa0ae64:	10 30       	R2 = R0;
ffa0ae66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ae6a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0ae6e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0ae70:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ae74:	10 97       	W[P2] = R0;
ffa0ae76:	24 00       	SSYNC;
ffa0ae78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ae7c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0ae80:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0ae84:	10 97       	W[P2] = R0;
ffa0ae86:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0ae88:	42 34       	I0 = P2;
ffa0ae8a:	00 00       	NOP;
ffa0ae8c:	20 9d       	R0.L = W[I0];
ffa0ae8e:	c0 42       	R0 = R0.L (Z);
ffa0ae90:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ae92:	fc 17       	IF !CC JUMP 0xffa0ae8a <_spi_read_packet_nocheck+0x26> (BP);
ffa0ae94:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ae96:	0c 10       	IF !CC JUMP 0xffa0aeae <_spi_read_packet_nocheck+0x4a>;
ffa0ae98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0ae9c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0aea0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0aea2:	42 34       	I0 = P2;
ffa0aea4:	00 00       	NOP;
ffa0aea6:	20 9d       	R0.L = W[I0];
ffa0aea8:	01 54       	R0 = R1 & R0;
ffa0aeaa:	00 0c       	CC = R0 == 0x0;
ffa0aeac:	fc 1f       	IF CC JUMP 0xffa0aea4 <_spi_read_packet_nocheck+0x40> (BP);
ffa0aeae:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa0aeb2:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa0aeb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aeb8:	08 97       	W[P1] = R0;
ffa0aeba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0aebe:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa0aec0:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0aec4:	10 97       	W[P2] = R0;
ffa0aec6:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0aec8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0aeca:	10 97       	W[P2] = R0;
ffa0aecc:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0aece:	12 93       	[P2] = R2;
ffa0aed0:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0aed4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0aed6:	10 97       	W[P2] = R0;
ffa0aed8:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0aedc:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0aede:	08 97       	W[P1] = R0;
ffa0aee0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0aee2:	42 34       	I0 = P2;
	...
ffa0aeec:	00 00       	NOP;
ffa0aeee:	20 9d       	R0.L = W[I0];
ffa0aef0:	01 54       	R0 = R1 & R0;
ffa0aef2:	00 0c       	CC = R0 == 0x0;
ffa0aef4:	f8 1f       	IF CC JUMP 0xffa0aee4 <_spi_read_packet_nocheck+0x80> (BP);
ffa0aef6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0aefa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aefc:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0af00:	10 97       	W[P2] = R0;
ffa0af02:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0af04:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0af06:	10 97       	W[P2] = R0;
ffa0af08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0af0c:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0af10:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0af14:	10 97       	W[P2] = R0;
ffa0af16:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0af1a:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0af1c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0af20:	10 97       	W[P2] = R0;
ffa0af22:	24 00       	SSYNC;
ffa0af24:	01 e8 00 00 	UNLINK;
ffa0af28:	10 00       	RTS;
	...

ffa0af2c <_radio_set_rx>:
ffa0af2c:	c5 04       	[--SP] = (P5:5);
ffa0af2e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa0af32:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0af36:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa0af3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0af3c:	28 97       	W[P5] = R0;
ffa0af3e:	24 00       	SSYNC;
ffa0af40:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0af42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0af44:	ff e3 3a fd 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0af48:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0af4a:	28 97       	W[P5] = R0;
ffa0af4c:	24 00       	SSYNC;
ffa0af4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0af52:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0af56:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0af5a:	10 97       	W[P2] = R0;
ffa0af5c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0af5e:	42 34       	I0 = P2;
ffa0af60:	00 00       	NOP;
ffa0af62:	20 9d       	R0.L = W[I0];
ffa0af64:	c0 42       	R0 = R0.L (Z);
ffa0af66:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0af68:	fc 17       	IF !CC JUMP 0xffa0af60 <_radio_set_rx+0x34> (BP);
ffa0af6a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0af6c:	0c 10       	IF !CC JUMP 0xffa0af84 <_radio_set_rx+0x58>;
ffa0af6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0af72:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0af76:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0af78:	42 34       	I0 = P2;
ffa0af7a:	00 00       	NOP;
ffa0af7c:	20 9d       	R0.L = W[I0];
ffa0af7e:	01 54       	R0 = R1 & R0;
ffa0af80:	00 0c       	CC = R0 == 0x0;
ffa0af82:	fc 1f       	IF CC JUMP 0xffa0af7a <_radio_set_rx+0x4e> (BP);
ffa0af84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0af88:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0af8c:	10 95       	R0 = W[P2] (Z);
ffa0af8e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa0af92:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa0af96:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0af98:	28 97       	W[P5] = R0;
ffa0af9a:	24 00       	SSYNC;
ffa0af9c:	f9 60       	R1 = 0x1f (X);		/*		R1=0x0(  0) */
ffa0af9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0afa0:	ff e3 0c fd 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0afa4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0afa8:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0afaa:	ff e3 07 fd 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0afae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0afb2:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0afb4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0afb8:	10 97       	W[P2] = R0;
ffa0afba:	24 00       	SSYNC;
ffa0afbc:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0afbe:	28 97       	W[P5] = R0;
ffa0afc0:	24 00       	SSYNC;
ffa0afc2:	01 e8 00 00 	UNLINK;
ffa0afc6:	85 04       	(P5:5) = [SP++];
ffa0afc8:	10 00       	RTS;
	...

ffa0afcc <_radio_set_tx>:
ffa0afcc:	c5 04       	[--SP] = (P5:5);
ffa0afce:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00708(-4192504) */
ffa0afd2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0afd6:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa0afda:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0afdc:	28 97       	W[P5] = R0;
ffa0afde:	24 00       	SSYNC;
ffa0afe0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0afe2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0afe4:	ff e3 ea fc 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0afe8:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0afea:	28 97       	W[P5] = R0;
ffa0afec:	24 00       	SSYNC;
ffa0afee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0aff2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0aff6:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0affa:	10 97       	W[P2] = R0;
ffa0affc:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0affe:	42 34       	I0 = P2;
ffa0b000:	00 00       	NOP;
ffa0b002:	20 9d       	R0.L = W[I0];
ffa0b004:	c0 42       	R0 = R0.L (Z);
ffa0b006:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0b008:	fc 17       	IF !CC JUMP 0xffa0b000 <_radio_set_tx+0x34> (BP);
ffa0b00a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0b00c:	0c 10       	IF !CC JUMP 0xffa0b024 <_radio_set_tx+0x58>;
ffa0b00e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0b012:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0b016:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0b018:	42 34       	I0 = P2;
ffa0b01a:	00 00       	NOP;
ffa0b01c:	20 9d       	R0.L = W[I0];
ffa0b01e:	01 54       	R0 = R1 & R0;
ffa0b020:	00 0c       	CC = R0 == 0x0;
ffa0b022:	fc 1f       	IF CC JUMP 0xffa0b01a <_radio_set_tx+0x4e> (BP);
ffa0b024:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0b028:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0b02c:	10 95       	R0 = W[P2] (Z);
ffa0b02e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0b032:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0b034:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0b038:	10 97       	W[P2] = R0;
ffa0b03a:	24 00       	SSYNC;
ffa0b03c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0b040:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0b042:	ff e3 bb fc 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0b046:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0b048:	f1 60       	R1 = 0x1e (X);		/*		R1=0x0(  0) */
ffa0b04a:	ff e3 b7 fc 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0b04e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0b052:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0b054:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0b058:	10 97       	W[P2] = R0;
ffa0b05a:	01 e8 00 00 	UNLINK;
ffa0b05e:	85 04       	(P5:5) = [SP++];
ffa0b060:	10 00       	RTS;
	...

ffa0b064 <_radio_wait_irq>:
ffa0b064:	78 05       	[--SP] = (R7:7);
ffa0b066:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0b06a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0b06e:	10 30       	R2 = R0;
ffa0b070:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0b074:	10 95       	R0 = W[P2] (Z);
ffa0b076:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0b078:	20 18       	IF CC JUMP 0xffa0b0b8 <_radio_wait_irq+0x54>;
ffa0b07a:	02 0d       	CC = R2 <= 0x0;
ffa0b07c:	20 18       	IF CC JUMP 0xffa0b0bc <_radio_wait_irq+0x58>;
ffa0b07e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0b080:	41 60       	R1 = 0x8 (X);		/*		R1=0x0(  0) */
ffa0b082:	42 34       	I0 = P2;
ffa0b084:	05 20       	JUMP.S 0xffa0b08e <_radio_wait_irq+0x2a>;
ffa0b086:	3a 09       	CC = R2 <= R7;
ffa0b088:	13 18       	IF CC JUMP 0xffa0b0ae <_radio_wait_irq+0x4a>;
	...
ffa0b096:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0b098:	20 9d       	R0.L = W[I0];
ffa0b09a:	01 54       	R0 = R1 & R0;
ffa0b09c:	00 0c       	CC = R0 == 0x0;
ffa0b09e:	f4 17       	IF !CC JUMP 0xffa0b086 <_radio_wait_irq+0x22> (BP);
ffa0b0a0:	3a 09       	CC = R2 <= R7;
ffa0b0a2:	06 18       	IF CC JUMP 0xffa0b0ae <_radio_wait_irq+0x4a>;
ffa0b0a4:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0b0a6:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0b0aa:	ff e3 87 fc 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0b0ae:	07 30       	R0 = R7;
ffa0b0b0:	01 e8 00 00 	UNLINK;
ffa0b0b4:	38 05       	(R7:7) = [SP++];
ffa0b0b6:	10 00       	RTS;
ffa0b0b8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0b0ba:	f3 2f       	JUMP.S 0xffa0b0a0 <_radio_wait_irq+0x3c>;
ffa0b0bc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0b0be:	f8 2f       	JUMP.S 0xffa0b0ae <_radio_wait_irq+0x4a>;

ffa0b0c0 <_spi_write_register_ver>:
ffa0b0c0:	60 05       	[--SP] = (R7:4);
ffa0b0c2:	47 43       	R7 = R0.B (Z);
ffa0b0c4:	4e 43       	R6 = R1.B (Z);
ffa0b0c6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0b0ca:	0e 30       	R1 = R6;
ffa0b0cc:	07 30       	R0 = R7;
ffa0b0ce:	ff e3 75 fc 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0b0d2:	07 30       	R0 = R7;
ffa0b0d4:	ff e3 be fc 	CALL 0xffa0aa50 <_spi_read_register>;
ffa0b0d8:	45 43       	R5 = R0.B (Z);
ffa0b0da:	20 30       	R4 = R0;
ffa0b0dc:	2e 08       	CC = R6 == R5;
ffa0b0de:	28 18       	IF CC JUMP 0xffa0b12e <_spi_write_register_ver+0x6e>;
ffa0b0e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa0b0e4:	0f 30       	R1 = R7;
ffa0b0e6:	00 e1 ec 70 	R0.L = 0x70ec;		/* (28908)	R0=0xff9070ec(-7311124) */
ffa0b0ea:	ff e3 6b f9 	CALL 0xffa0a3c0 <_printf_int>;
ffa0b0ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070ec(-7311124) */
ffa0b0f2:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0b0f6:	ff e3 43 f8 	CALL 0xffa0a17c <_uart_str>;
ffa0b0fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907108(-7311096) */
ffa0b0fe:	0e 30       	R1 = R6;
ffa0b100:	00 e1 00 71 	R0.L = 0x7100;		/* (28928)	R0=0xff907100(-7311104) */
ffa0b104:	ff e3 ac f8 	CALL 0xffa0a25c <_printf_hex_byte>;
ffa0b108:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907100(-7311104) */
ffa0b10c:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0b110:	ff e3 36 f8 	CALL 0xffa0a17c <_uart_str>;
ffa0b114:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907108(-7311096) */
ffa0b118:	00 e1 0c 71 	R0.L = 0x710c;		/* (28940)	R0=0xff90710c(-7311092) */
ffa0b11c:	0d 30       	R1 = R5;
ffa0b11e:	ff e3 9f f8 	CALL 0xffa0a25c <_printf_hex_byte>;
ffa0b122:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90710c(-7311092) */
ffa0b126:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0b12a:	ff e3 29 f8 	CALL 0xffa0a17c <_uart_str>;
ffa0b12e:	04 30       	R0 = R4;
ffa0b130:	01 e8 00 00 	UNLINK;
ffa0b134:	20 05       	(R7:4) = [SP++];
ffa0b136:	10 00       	RTS;

ffa0b138 <_radio_init>:
ffa0b138:	70 05       	[--SP] = (R7:6);
ffa0b13a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa0b13e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0b142:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa0b146:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0b148:	0a 97       	W[P1] = R2;
ffa0b14a:	24 00       	SSYNC;
ffa0b14c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0b150:	21 60       	R1 = 0x4 (X);		/*		R1=0x0(  0) */
ffa0b152:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0b156:	11 97       	W[P2] = R1;
ffa0b158:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0b15c:	09 97       	W[P1] = R1;
ffa0b15e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0b160:	12 97       	W[P2] = R2;
ffa0b162:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0b166:	16 60       	R6 = 0x2 (X);		/*		R6=0x0(  0) */
ffa0b168:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0b16c:	16 97       	W[P2] = R6;
ffa0b16e:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa0b170:	11 95       	R1 = W[P2] (Z);
ffa0b172:	19 4a       	BITSET (R1, 0x3);		/* bit  3 */
ffa0b174:	11 97       	W[P2] = R1;
ffa0b176:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0b178:	11 95       	R1 = W[P2] (Z);
ffa0b17a:	19 4c       	BITCLR (R1, 0x3);		/* bit  3 */
ffa0b17c:	11 97       	W[P2] = R1;
ffa0b17e:	12 95       	R2 = W[P2] (Z);
ffa0b180:	19 60       	R1 = 0x3 (X);		/*		R1=0x0(  0) */
ffa0b182:	51 56       	R1 = R1 | R2;
ffa0b184:	11 97       	W[P2] = R1;
ffa0b186:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa0b18a:	41 43       	R1 = R0.B (Z);
ffa0b18c:	11 0a       	CC = R1 <= R2 (IU);
ffa0b18e:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0b192:	01 06       	IF !CC R0 = R1;
ffa0b194:	47 43       	R7 = R0.B (Z);
ffa0b196:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa0b19a:	0f 30       	R1 = R7;
ffa0b19c:	00 e1 18 71 	R0.L = 0x7118;		/* (28952)	R0=0xff907118(-7311080) */
ffa0b1a0:	ff e3 10 f9 	CALL 0xffa0a3c0 <_printf_int>;
ffa0b1a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907118(-7311080) */
ffa0b1a8:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0b1ac:	ff e3 e8 f7 	CALL 0xffa0a17c <_uart_str>;
ffa0b1b0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0b1b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0b1b4:	ff e3 02 fc 	CALL 0xffa0a9b8 <_spi_write_register>;
ffa0b1b8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0b1ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0b1bc:	ff e3 82 ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1c0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0b1c2:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0b1c4:	ff e3 7e ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1c8:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0b1ca:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0b1cc:	ff e3 7a ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1d0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0b1d2:	20 60       	R0 = 0x4 (X);		/*		R0=0x0(  0) */
ffa0b1d4:	ff e3 76 ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1d8:	0f 30       	R1 = R7;
ffa0b1da:	28 60       	R0 = 0x5 (X);		/*		R0=0x0(  0) */
ffa0b1dc:	ff e3 72 ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1e0:	79 60       	R1 = 0xf (X);		/*		R1=0x0(  0) */
ffa0b1e2:	30 60       	R0 = 0x6 (X);		/*		R0=0x0(  0) */
ffa0b1e4:	ff e3 6e ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1e8:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0b1ec:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0b1ee:	ff e3 69 ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1f2:	01 61       	R1 = 0x20 (X);		/*		R1=0x0(  0) */
ffa0b1f4:	88 60       	R0 = 0x11 (X);		/*		R0=0x0(  0) */
ffa0b1f6:	ff e3 65 ff 	CALL 0xffa0b0c0 <_spi_write_register_ver>;
ffa0b1fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0b1fe:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0b202:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0b206:	10 97       	W[P2] = R0;
ffa0b208:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0b20a:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0b20c:	10 97       	W[P2] = R0;
ffa0b20e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0b212:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0b216:	16 97       	W[P2] = R6;
ffa0b218:	24 00       	SSYNC;
ffa0b21a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0b21e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0b222:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0b226:	10 97       	W[P2] = R0;
ffa0b228:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0b22a:	42 34       	I0 = P2;
ffa0b22c:	00 00       	NOP;
ffa0b22e:	20 9d       	R0.L = W[I0];
ffa0b230:	c0 42       	R0 = R0.L (Z);
ffa0b232:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0b234:	fc 17       	IF !CC JUMP 0xffa0b22c <_radio_init+0xf4> (BP);
ffa0b236:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0b238:	0c 10       	IF !CC JUMP 0xffa0b250 <_radio_init+0x118>;
ffa0b23a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0b23e:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0b242:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0b244:	42 34       	I0 = P2;
ffa0b246:	00 00       	NOP;
ffa0b248:	20 9d       	R0.L = W[I0];
ffa0b24a:	01 54       	R0 = R1 & R0;
ffa0b24c:	00 0c       	CC = R0 == 0x0;
ffa0b24e:	fc 1f       	IF CC JUMP 0xffa0b246 <_radio_init+0x10e> (BP);
ffa0b250:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0b254:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0b258:	10 95       	R0 = W[P2] (Z);
ffa0b25a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0b25e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0b260:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0b264:	10 97       	W[P2] = R0;
ffa0b266:	24 00       	SSYNC;
ffa0b268:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0b26a:	10 97       	W[P2] = R0;
ffa0b26c:	24 00       	SSYNC;
ffa0b26e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0b272:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0b276:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0b27a:	10 97       	W[P2] = R0;
ffa0b27c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0b27e:	42 34       	I0 = P2;
ffa0b280:	00 00       	NOP;
ffa0b282:	20 9d       	R0.L = W[I0];
ffa0b284:	c0 42       	R0 = R0.L (Z);
ffa0b286:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0b288:	fc 17       	IF !CC JUMP 0xffa0b280 <_radio_init+0x148> (BP);
ffa0b28a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0b28c:	0c 10       	IF !CC JUMP 0xffa0b2a4 <_radio_init+0x16c>;
ffa0b28e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0b292:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0b296:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0b298:	42 34       	I0 = P2;
ffa0b29a:	00 00       	NOP;
ffa0b29c:	20 9d       	R0.L = W[I0];
ffa0b29e:	01 54       	R0 = R1 & R0;
ffa0b2a0:	00 0c       	CC = R0 == 0x0;
ffa0b2a2:	fc 1f       	IF CC JUMP 0xffa0b29a <_radio_init+0x162> (BP);
ffa0b2a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0b2a8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0b2ac:	10 95       	R0 = W[P2] (Z);
ffa0b2ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0b2b2:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0b2b4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0b2b8:	11 97       	W[P2] = R1;
ffa0b2ba:	24 00       	SSYNC;
ffa0b2bc:	01 e8 00 00 	UNLINK;
ffa0b2c0:	30 05       	(R7:6) = [SP++];
ffa0b2c2:	10 00       	RTS;

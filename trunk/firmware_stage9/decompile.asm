
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
ffa08148:	08 e1 a0 9c 	P0.L = 0x9ca0;		/* (-25440)	P0=0xffa09ca0 <_main> */
ffa0814c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09ca0 <_main> */
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
ffa08180:	00 e3 02 0e 	CALL 0xffa09d84 <_exception_report>;
ffa08184:	12 00       	RTX;

ffa08186 <_HWHANDLER>:
ffa08186:	11 00       	RTI;

ffa08188 <_NHANDLER>:
ffa08188:	00 e3 e6 0d 	CALL 0xffa09d54 <_nmi_report>;
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
ffa08202:	00 e3 c1 0d 	CALL 0xffa09d84 <_exception_report>;
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
ffa08264:	f5 60       	R5 = 0x1e (X);		/*		R5=0x1e( 30) */
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
ffa08328:	81 ce 88 4d 	R6 = R0 >>> 0xf (V) || R1 = [I1 ++ M2] || R2 = [I0++];
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
ffa08530:	81 ce 88 4d 	R6 = R0 >>> 0xf (V) || R1 = [I1 ++ M2] || R2 = [I0++];
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
ffa08818:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa0881a:	5d 5b       	P5 = P5 + P3;
ffa0881c:	41 5a       	P1 = P1 + P0;
ffa0881e:	0a 99       	R2 = B[P1] (Z);
ffa08820:	2a 9b       	B[P5] = R2;
ffa08822:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
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
ffa08842:	37 60       	R7 = 0x6 (X);		/*		R7=0x6(  6) */
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
ffa08868:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
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
ffa0888c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0888e:	8f b4       	W[P1 + 0x4] = R7;
ffa08890:	ff e3 d4 fc 	CALL 0xffa08238 <_get_asm>;
ffa08894:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08896:	1e 97       	W[P3] = R6;
ffa08898:	ff e3 d0 fc 	CALL 0xffa08238 <_get_asm>;
ffa0889c:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa088a0:	1e 97       	W[P3] = R6;
ffa088a2:	ff e3 cb fc 	CALL 0xffa08238 <_get_asm>;
ffa088a6:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
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
ffa088e0:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa088e2:	8f b4       	W[P1 + 0x4] = R7;
ffa088e4:	ff e3 aa fc 	CALL 0xffa08238 <_get_asm>;
ffa088e8:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa088ec:	1e 97       	W[P3] = R6;
ffa088ee:	ff e3 a5 fc 	CALL 0xffa08238 <_get_asm>;
ffa088f2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa088f4:	0f b5       	W[P1 + 0x8] = R7;
ffa088f6:	ff e3 a1 fc 	CALL 0xffa08238 <_get_asm>;
ffa088fa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa088fc:	8f b4       	W[P1 + 0x4] = R7;
ffa088fe:	ff e3 9d fc 	CALL 0xffa08238 <_get_asm>;
ffa08902:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08906:	1e 97       	W[P3] = R6;
ffa08908:	ff e3 98 fc 	CALL 0xffa08238 <_get_asm>;
ffa0890c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
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
ffa089f0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
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
ffa08a46:	fd 69       	P5 = 0x3f (X);		/*		P5=0x3f( 63) */
ffa08a48:	a2 e0 f2 51 	LSETUP(0xffa08a4c <lt_top>, 0xffa08e2c <lt_bot>) LC0 = P5;

ffa08a4c <lt_top>:
ffa08a4c:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
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
ffa08eae:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08eb0:	a2 e0 24 50 	LSETUP(0xffa08eb4 <wp_top>, 0xffa08ef8 <wp_bot>) LC0 = P5;

ffa08eb4 <wp_top>:
ffa08eb4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08eb6:	8f b4       	W[P1 + 0x4] = R7;
ffa08eb8:	ff e3 c0 f9 	CALL 0xffa08238 <_get_asm>;
ffa08ebc:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa08ec0:	1e 97       	W[P3] = R6;
ffa08ec2:	ff e3 bb f9 	CALL 0xffa08238 <_get_asm>;
ffa08ec6:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
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
ffa08ee0:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa08ee2:	0f b5       	W[P1 + 0x8] = R7;
ffa08ee4:	ff e3 aa f9 	CALL 0xffa08238 <_get_asm>;
ffa08ee8:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa08eea:	b0 31       	R6 = LC0;
ffa08eec:	37 08       	CC = R7 == R6;
ffa08eee:	05 18       	IF CC JUMP 0xffa08ef8 <wp_bot>;
ffa08ef0:	ff e3 e1 fc 	CALL 0xffa088b2 <_waitirq_asm>;
ffa08ef4:	ff e3 cb fc 	CALL 0xffa0888a <_clearirq_asm>;

ffa08ef8 <wp_bot>:
ffa08ef8:	00 00       	NOP;
ffa08efa:	ff e3 dc fc 	CALL 0xffa088b2 <_waitirq_asm>;
ffa08efe:	ff e3 c6 fc 	CALL 0xffa0888a <_clearirq_asm>;
ffa08f02:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08f04:	8f b4       	W[P1 + 0x4] = R7;
ffa08f06:	ff e3 99 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f0a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08f0c:	8f b4       	W[P1 + 0x4] = R7;
ffa08f0e:	ff e3 95 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f12:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08f16:	1e 97       	W[P3] = R6;
ffa08f18:	ff e3 90 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f1c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08f1e:	0f b5       	W[P1 + 0x8] = R7;
ffa08f20:	ff e3 8c f9 	CALL 0xffa08238 <_get_asm>;
ffa08f24:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08f26:	8f b4       	W[P1 + 0x4] = R7;
ffa08f28:	ff e3 88 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f2c:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa08f2e:	1e 97       	W[P3] = R6;
ffa08f30:	ff e3 84 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f34:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa08f36:	1e 97       	W[P3] = R6;
ffa08f38:	ff e3 80 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f3c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08f3e:	0f b5       	W[P1 + 0x8] = R7;
ffa08f40:	ff e3 7c f9 	CALL 0xffa08238 <_get_asm>;
ffa08f44:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08f46:	0f b5       	W[P1 + 0x8] = R7;
ffa08f48:	ff e3 78 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f4c:	ff e3 b3 fc 	CALL 0xffa088b2 <_waitirq_asm>;
ffa08f50:	0f 95       	R7 = W[P1] (Z);
ffa08f52:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa08f54:	63 18       	IF CC JUMP 0xffa0901a <no_rxpacket>;
ffa08f56:	ff e3 9a fc 	CALL 0xffa0888a <_clearirq_asm>;
ffa08f5a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08f5c:	8f b4       	W[P1 + 0x4] = R7;
ffa08f5e:	ff e3 6d f9 	CALL 0xffa08238 <_get_asm>;
ffa08f62:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08f64:	8f b4       	W[P1 + 0x4] = R7;
ffa08f66:	ff e3 69 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f6a:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa08f6e:	1e 97       	W[P3] = R6;
ffa08f70:	ff e3 64 f9 	CALL 0xffa08238 <_get_asm>;
ffa08f74:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08f76:	a2 e0 4b 50 	LSETUP(0xffa08f7a <rp_top>, 0xffa0900c <rp_bot>) LC0 = P5;

ffa08f7a <rp_top>:
ffa08f7a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa08f7c:	c7 bb       	[FP -0x10] = R7;
ffa08f7e:	b7 bb       	[FP -0x14] = R7;
ffa08f80:	ff e3 5c f9 	CALL 0xffa08238 <_get_asm>;
ffa08f84:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
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
ffa08fa8:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
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
ffa08fd6:	7e 60       	R6 = 0xf (X);		/*		R6=0xf( 15) */
ffa08fd8:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa08fdc:	f7 57       	R7 = R7 | R6;
ffa08fde:	c7 bb       	[FP -0x10] = R7;
ffa08fe0:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa08fe2:	2f 91       	R7 = [P5];
ffa08fe4:	a7 ba       	[FP -0x58] = R7;
ffa08fe6:	ff e3 29 f9 	CALL 0xffa08238 <_get_asm>;
ffa08fea:	c7 b9       	R7 = [FP -0x10];
ffa08fec:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef000f(-1114097) */
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
ffa09012:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09014:	0f b5       	W[P1 + 0x8] = R7;
ffa09016:	ff e3 11 f9 	CALL 0xffa08238 <_get_asm>;

ffa0901a <no_rxpacket>:
ffa0901a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0901c:	8f b4       	W[P1 + 0x4] = R7;
ffa0901e:	ff e3 0d f9 	CALL 0xffa08238 <_get_asm>;
ffa09022:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09024:	8f b4       	W[P1 + 0x4] = R7;
ffa09026:	ff e3 09 f9 	CALL 0xffa08238 <_get_asm>;
ffa0902a:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa0902e:	1e 97       	W[P3] = R6;
ffa09030:	ff e3 04 f9 	CALL 0xffa08238 <_get_asm>;
ffa09034:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09036:	0f b5       	W[P1 + 0x8] = R7;
ffa09038:	ff e3 00 f9 	CALL 0xffa08238 <_get_asm>;
ffa0903c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0903e:	8f b4       	W[P1 + 0x4] = R7;
ffa09040:	ff e3 fc f8 	CALL 0xffa08238 <_get_asm>;
ffa09044:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa09046:	1e 97       	W[P3] = R6;
ffa09048:	ff e3 f8 f8 	CALL 0xffa08238 <_get_asm>;
ffa0904c:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa0904e:	1e 97       	W[P3] = R6;
ffa09050:	ff e3 f4 f8 	CALL 0xffa08238 <_get_asm>;
ffa09054:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09056:	0f b5       	W[P1 + 0x8] = R7;
ffa09058:	ff e3 f0 f8 	CALL 0xffa08238 <_get_asm>;
ffa0905c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa09060:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa09064:	2f 93       	[P5] = R7;
ffa09066:	ff e3 e9 f8 	CALL 0xffa08238 <_get_asm>;
ffa0906a:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
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
ffa09098:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa0909a:	28 9a       	B[P5++] = R0;
ffa0909c:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa0909e:	28 9a       	B[P5++] = R0;
ffa090a0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa090a2:	28 9a       	B[P5++] = R0;
ffa090a4:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa090a6:	28 9a       	B[P5++] = R0;
ffa090a8:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa090aa:	28 9a       	B[P5++] = R0;
ffa090ac:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa090ae:	28 9a       	B[P5++] = R0;
ffa090b0:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa090b2:	28 9a       	B[P5++] = R0;
ffa090b4:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa090b6:	28 9a       	B[P5++] = R0;
ffa090b8:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa090ba:	28 9a       	B[P5++] = R0;
ffa090bc:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa090be:	28 9a       	B[P5++] = R0;
ffa090c0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa090c2:	28 9a       	B[P5++] = R0;
ffa090c4:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa090c6:	28 9a       	B[P5++] = R0;
ffa090c8:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa090ca:	28 9a       	B[P5++] = R0;
ffa090cc:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa090ce:	28 9a       	B[P5++] = R0;
ffa090d0:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa090d2:	28 9a       	B[P5++] = R0;
ffa090d4:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa090d6:	28 9a       	B[P5++] = R0;
ffa090d8:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa090da:	28 9a       	B[P5++] = R0;
ffa090dc:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa090de:	28 9a       	B[P5++] = R0;
ffa090e0:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa090e2:	28 9a       	B[P5++] = R0;
ffa090e4:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa090e6:	28 9a       	B[P5++] = R0;
ffa090e8:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa090ea:	28 9a       	B[P5++] = R0;
ffa090ec:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa090ee:	28 9a       	B[P5++] = R0;
ffa090f0:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa090f2:	28 9a       	B[P5++] = R0;
ffa090f4:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa090f6:	28 9a       	B[P5++] = R0;
ffa090f8:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa090fa:	28 9a       	B[P5++] = R0;
ffa090fc:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa090fe:	28 9a       	B[P5++] = R0;
ffa09100:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa09102:	28 9a       	B[P5++] = R0;
ffa09104:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa09106:	28 9a       	B[P5++] = R0;
ffa09108:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa0910a:	28 9a       	B[P5++] = R0;
ffa0910c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0910e:	28 9a       	B[P5++] = R0;
ffa09110:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa09112:	28 9a       	B[P5++] = R0;
ffa09114:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
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
ffa09238:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa0923a:	28 9a       	B[P5++] = R0;
ffa0923c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa09242:	28 9a       	B[P5++] = R0;
ffa09244:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa09246:	28 9a       	B[P5++] = R0;
ffa09248:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0924a:	28 9a       	B[P5++] = R0;
ffa0924c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0924e:	28 9a       	B[P5++] = R0;
ffa09250:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa09252:	28 9a       	B[P5++] = R0;
ffa09254:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa09256:	28 9a       	B[P5++] = R0;
ffa09258:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa0925a:	28 9a       	B[P5++] = R0;
ffa0925c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0925e:	28 9a       	B[P5++] = R0;
ffa09260:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa09262:	28 9a       	B[P5++] = R0;
ffa09264:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa09266:	28 9a       	B[P5++] = R0;
ffa09268:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa0926a:	28 9a       	B[P5++] = R0;
ffa0926c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0926e:	28 9a       	B[P5++] = R0;
ffa09270:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa09272:	28 9a       	B[P5++] = R0;
ffa09274:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
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

ffa096e4 <_sample>:
ffa096e4:	60 05       	[--SP] = (R7:4);
ffa096e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa096ea:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa096ee:	0a e1 30 08 	P2.L = 0x830;		/* (2096)	P2=0xffc00830(-4192208) */
ffa096f2:	00 00       	NOP;
ffa096f4:	50 95       	R0 = W[P2] (X);
ffa096f6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa096f8:	fd 1f       	IF CC JUMP 0xffa096f2 <_sample+0xe> (BP);
ffa096fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00830(-4192208) */
ffa096fe:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09702:	24 e1 00 01 	R4 = 0x100 (X);		/*		R4=0x100(256) */
ffa09706:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa0970a:	14 97       	W[P2] = R4;
ffa0970c:	09 e1 18 08 	P1.L = 0x818;		/* (2072)	P1=0xffc00818(-4192232) */
ffa09710:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa09714:	49 95       	R1 = W[P1] (X);
ffa09716:	0a e1 3e 71 	P2.L = 0x713e;		/* (28990)	P2=0xff90713e <_samp1> */
ffa0971a:	11 97       	W[P2] = R1;
ffa0971c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713e <_samp1> */
ffa09720:	4f 95       	R7 = W[P1] (X);
ffa09722:	0a e1 42 71 	P2.L = 0x7142;		/* (28994)	P2=0xff907142 <_samp2> */
ffa09726:	17 97       	W[P2] = R7;
ffa09728:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907142 <_samp2> */
ffa0972c:	0a e1 3c 71 	P2.L = 0x713c;		/* (28988)	P2=0xff90713c <_chan> */
ffa09730:	16 99       	R6 = B[P2] (Z);
ffa09732:	7d 60       	R5 = 0xf (X);		/*		R5=0xf( 15) */
ffa09734:	2e 54       	R0 = R6 & R5;
ffa09736:	82 c6 08 86 	R3 = R0 << 0x1;
ffa0973a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff908080(-7307136) */
ffa0973e:	00 e1 48 71 	R0.L = 0x7148;		/* (29000)	R0=0xff907148 <_kk>(-7311032) */
ffa09742:	03 50       	R0 = R3 + R0;
ffa09744:	10 32       	P2 = R0;
ffa09746:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
ffa09748:	50 95       	R0 = W[P2] (X);
ffa0974a:	88 c2 02 20 	R0 = R0.L * R2.L (FU);
ffa0974e:	08 50       	R0 = R0 + R1;
ffa09750:	c0 42       	R0 = R0.L (Z);
ffa09752:	18 4e       	R0 >>= 0x3;
ffa09754:	10 97       	W[P2] = R0;
ffa09756:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907148 <_kk>(-7311032) */
ffa0975a:	00 e1 8a 71 	R0.L = 0x718a;		/* (29066)	R0=0xff90718a <_jj>(-7310966) */
ffa0975e:	03 50       	R0 = R3 + R0;
ffa09760:	10 32       	P2 = R0;
ffa09762:	89 42       	R1 = R1.L (X);
ffa09764:	50 95       	R0 = W[P2] (X);
ffa09766:	88 c2 02 20 	R0 = R0.L * R2.L (FU);
ffa0976a:	38 50       	R0 = R0 + R7;
ffa0976c:	c0 42       	R0 = R0.L (Z);
ffa0976e:	18 4e       	R0 >>= 0x3;
ffa09770:	10 97       	W[P2] = R0;
ffa09772:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90718a <_jj>(-7310966) */
ffa09776:	00 e1 68 71 	R0.L = 0x7168;		/* (29032)	R0=0xff907168 <_thresh_1>(-7311000) */
ffa0977a:	03 50       	R0 = R3 + R0;
ffa0977c:	10 32       	P2 = R0;
ffa0977e:	50 95       	R0 = W[P2] (X);
ffa09780:	01 09       	CC = R1 <= R0;
ffa09782:	0b 1c       	IF CC JUMP 0xffa09798 <_sample+0xb4> (BP);
ffa09784:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713c <_chan> */
ffa09788:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0978a:	0a e1 46 72 	P2.L = 0x7246;		/* (29254)	P2=0xff907246 <_exceeded_1> */
ffa0978e:	b0 40       	R0 <<= R6;
ffa09790:	51 95       	R1 = W[P2] (X);
ffa09792:	28 54       	R0 = R0 & R5;
ffa09794:	08 56       	R0 = R0 | R1;
ffa09796:	10 97       	W[P2] = R0;
ffa09798:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0979c:	00 e1 24 72 	R0.L = 0x7224;		/* (29220)	R0=0xff907224 <_thresh_2>(-7310812) */
ffa097a0:	c3 50       	R3 = R3 + R0;
ffa097a2:	13 32       	P2 = R3;
ffa097a4:	b9 42       	R1 = R7.L (X);
ffa097a6:	50 95       	R0 = W[P2] (X);
ffa097a8:	01 09       	CC = R1 <= R0;
ffa097aa:	0b 18       	IF CC JUMP 0xffa097c0 <_sample+0xdc>;
ffa097ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907246 <_exceeded_1> */
ffa097b0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa097b2:	0a e1 40 71 	P2.L = 0x7140;		/* (28992)	P2=0xff907140 <_exceeded_2> */
ffa097b6:	b0 40       	R0 <<= R6;
ffa097b8:	51 95       	R1 = W[P2] (X);
ffa097ba:	28 54       	R0 = R0 & R5;
ffa097bc:	08 56       	R0 = R0 | R1;
ffa097be:	10 97       	W[P2] = R0;
ffa097c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07140(-4165312) */
ffa097c4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa097c8:	14 97       	W[P2] = R4;
ffa097ca:	01 e8 00 00 	UNLINK;
ffa097ce:	20 05       	(R7:4) = [SP++];
ffa097d0:	10 00       	RTS;
	...

ffa097d4 <_get>:
ffa097d4:	c3 04       	[--SP] = (P5:3);
ffa097d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa097da:	ff e3 85 ff 	CALL 0xffa096e4 <_sample>;
ffa097de:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff907000 <_l1_data_a> */
ffa097e2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900818 */
ffa097e6:	0c e1 3c 71 	P4.L = 0x713c;		/* (28988)	P4=0xff90713c <_chan> */
ffa097ea:	09 e1 88 71 	P1.L = 0x7188;		/* (29064)	P1=0xff907188 <_tx_chan> */
ffa097ee:	21 99       	R1 = B[P4] (Z);
ffa097f0:	08 99       	R0 = B[P1] (Z);
ffa097f2:	01 08       	CC = R1 == R0;
ffa097f4:	11 18       	IF CC JUMP 0xffa09816 <_get+0x42>;
ffa097f6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa097fa:	0b e1 30 71 	P3.L = 0x7130;		/* (28976)	P3=0xff907130 <_txbuf> */
ffa097fe:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa09800:	18 91       	R0 = [P3];
ffa09802:	50 4c       	BITCLR (R0, 0xa);		/* bit 10 */
ffa09804:	18 93       	[P3] = R0;
ffa09806:	60 99       	R0 = B[P4] (X);
ffa09808:	08 64       	R0 += 0x1;		/* (  1) */
ffa0980a:	08 54       	R0 = R0 & R1;
ffa0980c:	01 e8 00 00 	UNLINK;
ffa09810:	20 9b       	B[P4] = R0;
ffa09812:	83 04       	(P5:3) = [SP++];
ffa09814:	10 00       	RTS;
ffa09816:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa0981a:	0a e1 46 71 	P2.L = 0x7146;		/* (28998)	P2=0xff907146 <_ramp> */
ffa0981e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907130 <_txbuf> */
ffa09822:	50 95       	R0 = W[P2] (X);
ffa09824:	0b e1 30 71 	P3.L = 0x7130;		/* (28976)	P3=0xff907130 <_txbuf> */
ffa09828:	58 91       	P0 = [P3];
ffa0982a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0982c:	10 97       	W[P2] = R0;
ffa0982e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907146 <_ramp> */
ffa09832:	0a e1 3e 71 	P2.L = 0x713e;		/* (28990)	P2=0xff90713e <_samp1> */
ffa09836:	50 95       	R0 = W[P2] (X);
ffa09838:	20 4e       	R0 >>= 0x4;
ffa0983a:	50 32       	P2 = P0;
ffa0983c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff906200 */
ffa09840:	10 9a       	B[P2++] = R0;
ffa09842:	0d e1 38 71 	P5.L = 0x7138;		/* (28984)	P5=0xff907138 <__bss_start> */
ffa09846:	68 99       	R0 = B[P5] (X);
ffa09848:	08 64       	R0 += 0x1;		/* (  1) */
ffa0984a:	28 9b       	B[P5] = R0;
ffa0984c:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
ffa0984e:	40 43       	R0 = R0.B (Z);
ffa09850:	08 08       	CC = R0 == R1;
ffa09852:	5a 93       	[P3] = P2;
ffa09854:	d5 17       	IF !CC JUMP 0xffa097fe <_get+0x2a> (BP);
ffa09856:	48 99       	R0 = B[P1] (X);
ffa09858:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff907188 <_tx_chan> */
ffa0985c:	09 e1 89 71 	P1.L = 0x7189;		/* (29065)	P1=0xff907189 <_qpackets> */
ffa09860:	49 99       	R1 = B[P1] (X);
ffa09862:	18 4f       	R0 <<= 0x3;
ffa09864:	08 50       	R0 = R0 + R1;
ffa09866:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa0986a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0986c:	20 e1 b9 fd 	R0 = -0x247 (X);		/*		R0=0xfffffdb9(-583) */
ffa09870:	10 97       	W[P2] = R0;
ffa09872:	20 e1 31 75 	R0 = 0x7531 (X);		/*		R0=0x7531(30001) */
ffa09876:	80 b4       	W[P0 + 0x4] = R0;
ffa09878:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713e <_samp1> */
ffa0987c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0987e:	0a e1 46 72 	P2.L = 0x7246;		/* (29254)	P2=0xff907246 <_exceeded_1> */
ffa09882:	28 9b       	B[P5] = R0;
ffa09884:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09886:	10 97       	W[P2] = R0;
ffa09888:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907246 <_exceeded_1> */
ffa0988c:	0a e1 40 71 	P2.L = 0x7140;		/* (28992)	P2=0xff907140 <_exceeded_2> */
ffa09890:	10 97       	W[P2] = R0;
ffa09892:	48 99       	R0 = B[P1] (X);
ffa09894:	08 64       	R0 += 0x1;		/* (  1) */
ffa09896:	48 30       	R1 = P0;
ffa09898:	31 64       	R1 += 0x6;		/* (  6) */
ffa0989a:	08 9b       	B[P1] = R0;
ffa0989c:	20 e1 fc fb 	R0 = -0x404 (X);		/*		R0=0xfffffbfc(-1028) */
ffa098a0:	41 54       	R1 = R1 & R0;
ffa098a2:	19 93       	[P3] = R1;
ffa098a4:	ad 2f       	JUMP.S 0xffa097fe <_get+0x2a>;
	...

ffa098a8 <_radio_clearfifos>:
ffa098a8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa098aa:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc07130(-4165328) */
ffa098ae:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa098b0:	0b e1 04 07 	P3.L = 0x704;		/* (1796)	P3=0xffc00704(-4192508) */
ffa098b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa098b8:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0713c(-4165316) */
ffa098bc:	1f 97       	W[P3] = R7;
ffa098be:	ff e3 8b ff 	CALL 0xffa097d4 <_get>;
ffa098c2:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa098c6:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa098ca:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc07138(-4165320) */
ffa098ce:	20 97       	W[P4] = R0;
ffa098d0:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa098d4:	ff e3 80 ff 	CALL 0xffa097d4 <_get>;
ffa098d8:	2f 97       	W[P5] = R7;
ffa098da:	ff e3 7d ff 	CALL 0xffa097d4 <_get>;
ffa098de:	1f 97       	W[P3] = R7;
ffa098e0:	ff e3 7a ff 	CALL 0xffa097d4 <_get>;
ffa098e4:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa098e8:	20 97       	W[P4] = R0;
ffa098ea:	ff e3 75 ff 	CALL 0xffa097d4 <_get>;
ffa098ee:	2f 97       	W[P5] = R7;
ffa098f0:	01 e8 00 00 	UNLINK;
ffa098f4:	bb 05       	(R7:7, P5:3) = [SP++];
ffa098f6:	ff e2 6f ff 	JUMP.L 0xffa097d4 <_get>;
	...

ffa098fc <_radio_clearirq>:
ffa098fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07140(-4165312) */
ffa09900:	fd 05       	[--SP] = (R7:7, P5:5);
ffa09902:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09906:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09908:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0990c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00708(-4192504) */
ffa09910:	17 97       	W[P2] = R7;
ffa09912:	ff e3 61 ff 	CALL 0xffa097d4 <_get>;
ffa09916:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa0991a:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa0991c:	28 97       	W[P5] = R0;
ffa0991e:	ff e3 5b ff 	CALL 0xffa097d4 <_get>;
ffa09922:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09926:	28 97       	W[P5] = R0;
ffa09928:	ff e3 56 ff 	CALL 0xffa097d4 <_get>;
ffa0992c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09930:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09934:	17 97       	W[P2] = R7;
ffa09936:	01 e8 00 00 	UNLINK;
ffa0993a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0993c:	ff e2 4c ff 	JUMP.L 0xffa097d4 <_get>;

ffa09940 <_radio_waitirq>:
ffa09940:	f5 05       	[--SP] = (R7:6, P5:5);
ffa09942:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09946:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0994a:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0994e:	50 95       	R0 = W[P2] (X);
ffa09950:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa09952:	0f 18       	IF CC JUMP 0xffa09970 <_radio_waitirq+0x30>;
ffa09954:	6a 32       	P5 = P2;
ffa09956:	27 e1 45 01 	R7 = 0x145 (X);		/*		R7=0x145(325) */
ffa0995a:	46 60       	R6 = 0x8 (X);		/*		R6=0x8(  8) */
ffa0995c:	04 20       	JUMP.S 0xffa09964 <_radio_waitirq+0x24>;
ffa0995e:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa09960:	07 0c       	CC = R7 == 0x0;
ffa09962:	07 18       	IF CC JUMP 0xffa09970 <_radio_waitirq+0x30>;
ffa09964:	ff e3 38 ff 	CALL 0xffa097d4 <_get>;
ffa09968:	68 95       	R0 = W[P5] (X);
ffa0996a:	06 54       	R0 = R6 & R0;
ffa0996c:	00 0c       	CC = R0 == 0x0;
ffa0996e:	f8 17       	IF !CC JUMP 0xffa0995e <_radio_waitirq+0x1e> (BP);
ffa09970:	01 e8 00 00 	UNLINK;
ffa09974:	b5 05       	(R7:6, P5:5) = [SP++];
ffa09976:	10 00       	RTS;

ffa09978 <_radio_tst_bidi>:
ffa09978:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900700 */
ffa0997c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0997e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09980:	0a e1 3c 71 	P2.L = 0x713c;		/* (28988)	P2=0xff90713c <_chan> */
ffa09984:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa09988:	10 9b       	B[P2] = R0;
ffa0998a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90713c <_chan> */
ffa0998e:	0a e1 88 71 	P2.L = 0x7188;		/* (29064)	P2=0xff907188 <_tx_chan> */
ffa09992:	10 9b       	B[P2] = R0;
ffa09994:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa09998:	20 e1 07 f8 	R0 = -0x7f9 (X);		/*		R0=0xfffff807(-2041) */
ffa0999c:	60 4f       	R0 <<= 0xc;
ffa0999e:	0d e1 30 71 	P5.L = 0x7130;		/* (28976)	P5=0xff907130 <_txbuf> */
ffa099a2:	28 93       	[P5] = R0;
ffa099a4:	ff e3 82 ff 	CALL 0xffa098a8 <_radio_clearfifos>;
ffa099a8:	de 60       	R6 = 0x1b (X);		/*		R6=0x1b( 27) */
ffa099aa:	ff e3 a9 ff 	CALL 0xffa098fc <_radio_clearirq>;
ffa099ae:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa099b0:	00 69       	P0 = 0x20 (X);		/*		P0=0x20( 32) */
ffa099b2:	b2 e0 29 00 	LSETUP(0xffa099b6 <_radio_tst_bidi+0x3e>, 0xffa09a04 <_radio_tst_bidi+0x8c>) LC1 = P0;
ffa099b6:	3a 30       	R7 = R2;
ffa099b8:	82 c6 2a 86 	R3 = R2 << 0x5;
ffa099bc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa099be:	19 50       	R0 = R1 + R3;
ffa099c0:	6a 91       	P2 = [P5];
ffa099c2:	09 64       	R1 += 0x1;		/* (  1) */
ffa099c4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa099c8:	0c e1 30 71 	P4.L = 0x7130;		/* (28976)	P4=0xff907130 <_txbuf> */
ffa099cc:	4a 32       	P1 = P2;
ffa099ce:	08 9a       	B[P1++] = R0;
ffa099d0:	48 43       	R0 = R1.B (Z);
ffa099d2:	30 08       	CC = R0 == R6;
ffa099d4:	69 93       	[P5] = P1;
ffa099d6:	f4 17       	IF !CC JUMP 0xffa099be <_radio_tst_bidi+0x46> (BP);
ffa099d8:	97 e6 01 00 	B[P2 + 0x1] = R7;
ffa099dc:	20 e1 a5 ff 	R0 = -0x5b (X);		/*		R0=0xffffffa5(-91) */
ffa099e0:	51 32       	P2 = P1;
ffa099e2:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa099e6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa099e8:	20 e1 b4 ff 	R0 = -0x4c (X);		/*		R0=0xffffffb4(-76) */
ffa099ec:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa099f0:	11 6c       	P1 += 0x2;		/* (  2) */
ffa099f2:	18 62       	R0 = -0x3d (X);		/*		R0=0xffffffc3(-61) */
ffa099f4:	88 e6 01 00 	B[P1 + 0x1] = R0;
ffa099f8:	12 6c       	P2 += 0x2;		/* (  2) */
ffa099fa:	90 62       	R0 = -0x2e (X);		/*		R0=0xffffffd2(-46) */
ffa099fc:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa09a00:	12 6c       	P2 += 0x2;		/* (  2) */
ffa09a02:	62 93       	[P4] = P2;
ffa09a04:	0a 64       	R2 += 0x1;		/* (  1) */
ffa09a06:	20 e1 07 f8 	R0 = -0x7f9 (X);		/*		R0=0xfffff807(-2041) */
ffa09a0a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900704 */
ffa09a0e:	60 4f       	R0 <<= 0xc;
ffa09a10:	0b e1 34 71 	P3.L = 0x7134;		/* (28980)	P3=0xff907134 <_rbuf> */
ffa09a14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907188 <_tx_chan> */
ffa09a18:	0a e1 46 71 	P2.L = 0x7146;		/* (28998)	P2=0xff907146 <_ramp> */
ffa09a1c:	20 93       	[P4] = R0;
ffa09a1e:	18 93       	[P3] = R0;
ffa09a20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a22:	10 97       	W[P2] = R0;
ffa09a24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907146 <_ramp> */
ffa09a28:	0a e1 89 71 	P2.L = 0x7189;		/* (29065)	P2=0xff907189 <_qpackets> */
ffa09a2c:	10 9b       	B[P2] = R0;
ffa09a2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907189 <_qpackets> */
ffa09a32:	0a e1 38 71 	P2.L = 0x7138;		/* (28984)	P2=0xff907138 <__bss_start> */
ffa09a36:	10 9b       	B[P2] = R0;
ffa09a38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907138 <__bss_start> */
ffa09a3c:	0a e1 89 71 	P2.L = 0x7189;		/* (29065)	P2=0xff907189 <_qpackets> */
ffa09a40:	50 99       	R0 = B[P2] (X);
ffa09a42:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09a44:	08 09       	CC = R0 <= R1;
ffa09a46:	2a 19       	IF CC JUMP 0xffa09c9a <_radio_tst_bidi+0x322>;
ffa09a48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a4a:	10 9b       	B[P2] = R0;
ffa09a4c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc07130(-4165328) */
ffa09a50:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc07130(-4165328) */
ffa09a54:	ff e3 2a ff 	CALL 0xffa098a8 <_radio_clearfifos>;
ffa09a58:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa09a5a:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa09a5e:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa09a62:	14 60       	R4 = 0x2 (X);		/*		R4=0x2(  2) */
ffa09a64:	2c 97       	W[P5] = R4;
ffa09a66:	ff e3 b7 fe 	CALL 0xffa097d4 <_get>;
ffa09a6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07189(-4165239) */
ffa09a6e:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa09a72:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09a76:	10 97       	W[P2] = R0;
ffa09a78:	ff e3 ae fe 	CALL 0xffa097d4 <_get>;
ffa09a7c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09a7e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09a80:	18 91       	R0 = [P3];
ffa09a82:	10 32       	P2 = R0;
ffa09a84:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a86:	50 4c       	BITCLR (R0, 0xa);		/* bit 10 */
ffa09a88:	11 98       	R1 = B[P2++] (Z);
ffa09a8a:	21 97       	W[P4] = R1;
ffa09a8c:	18 93       	[P3] = R0;
ffa09a8e:	ff e3 a3 fe 	CALL 0xffa097d4 <_get>;
ffa09a92:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09a94:	07 08       	CC = R7 == R0;
ffa09a96:	f4 17       	IF !CC JUMP 0xffa09a7e <_radio_tst_bidi+0x106> (BP);
ffa09a98:	45 e1 c0 ff 	R5.H = 0xffc0;		/* (-64)	R5=0xffc0000f(-4194289) */
ffa09a9c:	05 e1 08 07 	R5.L = 0x708;		/* (1800)	R5=0xffc00708(-4192504) */
ffa09aa0:	15 32       	P2 = R5;
ffa09aa2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09aa4:	10 97       	W[P2] = R0;
ffa09aa6:	ff e3 97 fe 	CALL 0xffa097d4 <_get>;
ffa09aaa:	06 0c       	CC = R6 == 0x0;
ffa09aac:	03 10       	IF !CC JUMP 0xffa09ab2 <_radio_tst_bidi+0x13a>;
ffa09aae:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa09ab0:	da 2f       	JUMP.S 0xffa09a64 <_radio_tst_bidi+0xec>;
ffa09ab2:	ff e3 47 ff 	CALL 0xffa09940 <_radio_waitirq>;
ffa09ab6:	0e 64       	R6 += 0x1;		/* (  1) */
ffa09ab8:	ff e3 22 ff 	CALL 0xffa098fc <_radio_clearirq>;
ffa09abc:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa09abe:	06 09       	CC = R6 <= R0;
ffa09ac0:	d2 1f       	IF CC JUMP 0xffa09a64 <_radio_tst_bidi+0xec> (BP);
ffa09ac2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90050c */
ffa09ac6:	0a e1 34 71 	P2.L = 0x7134;		/* (28980)	P2=0xff907134 <_rbuf> */
ffa09aca:	10 91       	R0 = [P2];
ffa09acc:	40 4d       	R0 >>>= 0x8;
ffa09ace:	40 4f       	R0 <<= 0x8;
ffa09ad0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa09ad4:	10 93       	[P2] = R0;
ffa09ad6:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa09ada:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa09adc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09ade:	ff e3 31 ff 	CALL 0xffa09940 <_radio_waitirq>;
ffa09ae2:	ff e3 0d ff 	CALL 0xffa098fc <_radio_clearirq>;
ffa09ae6:	2e 97       	W[P5] = R6;
ffa09ae8:	ff e3 76 fe 	CALL 0xffa097d4 <_get>;
ffa09aec:	2f 97       	W[P5] = R7;
ffa09aee:	ff e3 73 fe 	CALL 0xffa097d4 <_get>;
ffa09af2:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa09af6:	20 97       	W[P4] = R0;
ffa09af8:	ff e3 6e fe 	CALL 0xffa097d4 <_get>;
ffa09afc:	15 32       	P2 = R5;
ffa09afe:	17 97       	W[P2] = R7;
ffa09b00:	ff e3 6a fe 	CALL 0xffa097d4 <_get>;
ffa09b04:	2f 97       	W[P5] = R7;
ffa09b06:	ff e3 67 fe 	CALL 0xffa097d4 <_get>;
ffa09b0a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09b0c:	20 97       	W[P4] = R0;
ffa09b0e:	ff e3 63 fe 	CALL 0xffa097d4 <_get>;
ffa09b12:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa09b14:	20 97       	W[P4] = R0;
ffa09b16:	ff e3 5f fe 	CALL 0xffa097d4 <_get>;
ffa09b1a:	15 32       	P2 = R5;
ffa09b1c:	e5 6f       	P5 += -0x4;		/* ( -4) */
ffa09b1e:	17 97       	W[P2] = R7;
ffa09b20:	ff e3 5a fe 	CALL 0xffa097d4 <_get>;
ffa09b24:	15 32       	P2 = R5;
ffa09b26:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09b28:	16 97       	W[P2] = R6;
ffa09b2a:	ff e3 55 fe 	CALL 0xffa097d4 <_get>;
ffa09b2e:	46 60       	R6 = 0x8 (X);		/*		R6=0x8(  8) */
ffa09b30:	68 95       	R0 = W[P5] (X);
ffa09b32:	06 54       	R0 = R6 & R0;
ffa09b34:	00 0c       	CC = R0 == 0x0;
ffa09b36:	0f 1c       	IF CC JUMP 0xffa09b54 <_radio_tst_bidi+0x1dc> (BP);
ffa09b38:	ff e3 4e fe 	CALL 0xffa097d4 <_get>;
ffa09b3c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09b3e:	20 e1 45 01 	R0 = 0x145 (X);		/*		R0=0x145(325) */
ffa09b42:	07 08       	CC = R7 == R0;
ffa09b44:	77 18       	IF CC JUMP 0xffa09c32 <_radio_tst_bidi+0x2ba>;
ffa09b46:	00 00       	NOP;
ffa09b48:	00 00       	NOP;
ffa09b4a:	00 00       	NOP;
ffa09b4c:	68 95       	R0 = W[P5] (X);
ffa09b4e:	06 54       	R0 = R6 & R0;
ffa09b50:	00 0c       	CC = R0 == 0x0;
ffa09b52:	f3 17       	IF !CC JUMP 0xffa09b38 <_radio_tst_bidi+0x1c0> (BP);
ffa09b54:	ff e3 40 fe 	CALL 0xffa097d4 <_get>;
ffa09b58:	ff e3 d2 fe 	CALL 0xffa098fc <_radio_clearirq>;
ffa09b5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07134(-4165324) */
ffa09b60:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09b62:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09b66:	10 97       	W[P2] = R0;
ffa09b68:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa09b6c:	ff e3 34 fe 	CALL 0xffa097d4 <_get>;
ffa09b70:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa09b74:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09b78:	28 97       	W[P5] = R0;
ffa09b7a:	ff e3 2d fe 	CALL 0xffa097d4 <_get>;
ffa09b7e:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa09b82:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09b84:	e1 bb       	[FP -0x8] = R1;
ffa09b86:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa09b88:	0c e1 18 05 	P4.L = 0x518;		/* (1304)	P4=0xffc00518(-4193000) */
ffa09b8c:	2d 97       	W[P5] = R5;
ffa09b8e:	ff e3 23 fe 	CALL 0xffa097d4 <_get>;
ffa09b92:	66 95       	R6 = W[P4] (X);
ffa09b94:	2d 97       	W[P5] = R5;
ffa09b96:	ff e3 1f fe 	CALL 0xffa097d4 <_get>;
ffa09b9a:	60 95       	R0 = W[P4] (X);
ffa09b9c:	40 43       	R0 = R0.B (Z);
ffa09b9e:	40 4f       	R0 <<= 0x8;
ffa09ba0:	76 43       	R6 = R6.B (Z);
ffa09ba2:	2d 97       	W[P5] = R5;
ffa09ba4:	86 51       	R6 = R6 + R0;
ffa09ba6:	ff e3 17 fe 	CALL 0xffa097d4 <_get>;
ffa09baa:	67 95       	R7 = W[P4] (X);
ffa09bac:	2d 97       	W[P5] = R5;
ffa09bae:	ff e3 13 fe 	CALL 0xffa097d4 <_get>;
ffa09bb2:	7f 43       	R7 = R7.B (Z);
ffa09bb4:	60 95       	R0 = W[P4] (X);
ffa09bb6:	c0 4f       	R0 <<= 0x18;
ffa09bb8:	87 4f       	R7 <<= 0x10;
ffa09bba:	2d 97       	W[P5] = R5;
ffa09bbc:	c7 51       	R7 = R7 + R0;
ffa09bbe:	ff e3 0b fe 	CALL 0xffa097d4 <_get>;
ffa09bc2:	62 95       	R2 = W[P4] (X);
ffa09bc4:	2d 97       	W[P5] = R5;
ffa09bc6:	7a e6 fe ff 	W[FP + -0x4] = R2;
ffa09bca:	ff e3 05 fe 	CALL 0xffa097d4 <_get>;
ffa09bce:	64 95       	R4 = W[P4] (X);
ffa09bd0:	2d 97       	W[P5] = R5;
ffa09bd2:	ff e3 01 fe 	CALL 0xffa097d4 <_get>;
ffa09bd6:	04 cc 37 0c 	R6 = R6 + R7 (NS) || R7 = W[P4] (X) || NOP;
ffa09bda:	67 95 00 00 
ffa09bde:	2d 97       	W[P5] = R5;
ffa09be0:	ff e3 fa fd 	CALL 0xffa097d4 <_get>;
ffa09be4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09be6:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff0003(-65533) */
ffa09bea:	22 e1 41 fe 	R2 = -0x1bf (X);		/*		R2=0xfffffe41(-447) */
ffa09bee:	06 54       	R0 = R6 & R0;
ffa09bf0:	72 4f       	R2 <<= 0xe;
ffa09bf2:	10 08       	CC = R0 == R2;
ffa09bf4:	61 95       	R1 = W[P4] (X);
ffa09bf6:	0e 14       	IF !CC JUMP 0xffa09c12 <_radio_tst_bidi+0x29a> (BP);
ffa09bf8:	7a 43       	R2 = R7.B (Z);
ffa09bfa:	82 c6 c1 80 	R0 = R1 << 0x18;
ffa09bfe:	82 4f       	R2 <<= 0x10;
ffa09c00:	16 32       	P2 = R6;
ffa09c02:	82 50       	R2 = R2 + R0;
ffa09c04:	60 43       	R0 = R4.B (Z);
ffa09c06:	b9 e4 fc ff 	R1 = B[FP + -0x4] (Z);
ffa09c0a:	40 4f       	R0 <<= 0x8;
ffa09c0c:	41 50       	R1 = R1 + R0;
ffa09c0e:	51 50       	R1 = R1 + R2;
ffa09c10:	11 93       	[P2] = R1;
ffa09c12:	ff e3 e1 fd 	CALL 0xffa097d4 <_get>;
ffa09c16:	e0 b9       	R0 = [FP -0x8];
ffa09c18:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c1a:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa09c1c:	08 08       	CC = R0 == R1;
ffa09c1e:	e0 bb       	[FP -0x8] = R0;
ffa09c20:	b6 17       	IF !CC JUMP 0xffa09b8c <_radio_tst_bidi+0x214> (BP);
ffa09c22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09c26:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09c28:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09c2c:	10 97       	W[P2] = R0;
ffa09c2e:	ff e3 d3 fd 	CALL 0xffa097d4 <_get>;
ffa09c32:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00518(-4193000) */
ffa09c36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09c38:	0c e1 04 07 	P4.L = 0x704;		/* (1796)	P4=0xffc00704(-4192508) */
ffa09c3c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa09c3e:	20 97       	W[P4] = R0;
ffa09c40:	ff e3 ca fd 	CALL 0xffa097d4 <_get>;
ffa09c44:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa09c48:	27 97       	W[P4] = R7;
ffa09c4a:	ff e3 c5 fd 	CALL 0xffa097d4 <_get>;
ffa09c4e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa09c52:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa09c56:	46 e1 c0 ff 	R6.H = 0xffc0;		/* (-64)	R6=0xffc00008(-4194296) */
ffa09c5a:	28 97       	W[P5] = R0;
ffa09c5c:	06 e1 08 07 	R6.L = 0x708;		/* (1800)	R6=0xffc00708(-4192504) */
ffa09c60:	ff e3 ba fd 	CALL 0xffa097d4 <_get>;
ffa09c64:	16 32       	P2 = R6;
ffa09c66:	17 97       	W[P2] = R7;
ffa09c68:	ff e3 b6 fd 	CALL 0xffa097d4 <_get>;
ffa09c6c:	27 97       	W[P4] = R7;
ffa09c6e:	ff e3 b3 fd 	CALL 0xffa097d4 <_get>;
ffa09c72:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09c74:	28 97       	W[P5] = R0;
ffa09c76:	ff e3 af fd 	CALL 0xffa097d4 <_get>;
ffa09c7a:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa09c7c:	28 97       	W[P5] = R0;
ffa09c7e:	ff e3 ab fd 	CALL 0xffa097d4 <_get>;
ffa09c82:	16 32       	P2 = R6;
ffa09c84:	17 97       	W[P2] = R7;
ffa09c86:	ff e3 a7 fd 	CALL 0xffa097d4 <_get>;
ffa09c8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa09c8e:	0a e1 89 71 	P2.L = 0x7189;		/* (29065)	P2=0xff907189 <_qpackets> */
ffa09c92:	50 99       	R0 = B[P2] (X);
ffa09c94:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09c96:	08 09       	CC = R0 <= R1;
ffa09c98:	d8 16       	IF !CC JUMP 0xffa09a48 <_radio_tst_bidi+0xd0> (BP);
ffa09c9a:	ff e3 9d fd 	CALL 0xffa097d4 <_get>;
ffa09c9e:	cd 2e       	JUMP.S 0xffa09a38 <_radio_tst_bidi+0xc0>;

ffa09ca0 <_main>:
ffa09ca0:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe07189(-2068087) */
ffa09ca4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09ca6:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09caa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09cae:	10 93       	[P2] = R0;
ffa09cb0:	23 00       	CSYNC;
ffa09cb2:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09cb6:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09cba:	10 93       	[P2] = R0;
ffa09cbc:	23 00       	CSYNC;
ffa09cbe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09cc2:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09cc6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09cc8:	10 97       	W[P2] = R0;
ffa09cca:	50 95       	R0 = W[P2] (X);
ffa09ccc:	c0 43       	R0 =~ R0;
ffa09cce:	82 6f       	P2 += -0x10;		/* (-16) */
ffa09cd0:	10 97       	W[P2] = R0;
ffa09cd2:	82 6e       	P2 += -0x30;		/* (-48) */
ffa09cd4:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09cd8:	10 97       	W[P2] = R0;
ffa09cda:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09cde:	00 e3 9b 08 	CALL 0xffa0ae14 <_radio_init>;
ffa09ce2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09ce6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09cea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09cec:	10 97       	W[P2] = R0;
ffa09cee:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09cf2:	10 97       	W[P2] = R0;
ffa09cf4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09cf6:	22 e1 e8 03 	R2 = 0x3e8 (X);		/*		R2=0x3e8(1000) */
	...
ffa09d02:	09 64       	R1 += 0x1;		/* (  1) */
ffa09d04:	c8 42       	R0 = R1.L (Z);
ffa09d06:	10 08       	CC = R0 == R2;
ffa09d08:	f9 17       	IF !CC JUMP 0xffa09cfa <_main+0x5a> (BP);
ffa09d0a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09d0e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09d12:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09d16:	10 97       	W[P2] = R0;
ffa09d18:	00 e3 e8 07 	CALL 0xffa0ace8 <_radio_set_tx>;
ffa09d1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09d20:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa09d22:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa09d26:	12 97       	W[P2] = R2;
ffa09d28:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa09d2a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09d2c:	11 97       	W[P2] = R1;
ffa09d2e:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09d32:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa09d34:	10 97       	W[P2] = R0;
ffa09d36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09d3a:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09d3e:	12 97       	W[P2] = R2;
ffa09d40:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09d42:	11 97       	W[P2] = R1;
ffa09d44:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa09d46:	10 97       	W[P2] = R0;
ffa09d48:	ff e3 e8 f5 	CALL 0xffa08918 <_radio_bidi_asm>;
ffa09d4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d4e:	01 e8 00 00 	UNLINK;
ffa09d52:	10 00       	RTS;

ffa09d54 <_nmi_report>:
ffa09d54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09d58:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d5c:	00 e1 00 70 	R0.L = 0x7000;		/* (28672)	R0=0xff907000 <_l1_data_a>(-7311360) */
ffa09d60:	00 e3 26 02 	CALL 0xffa0a1ac <_printf_str>;
ffa09d64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907000 <_l1_data_a>(-7311360) */
ffa09d68:	00 e1 18 70 	R0.L = 0x7018;		/* (28696)	R0=0xff907018(-7311336) */
ffa09d6c:	00 e3 20 02 	CALL 0xffa0a1ac <_printf_str>;
ffa09d70:	2a e1 2c 01 	P2 = 0x12c (X);		/*		P2=0x12c(300) */
ffa09d74:	b2 e0 04 20 	LSETUP(0xffa09d78 <_nmi_report+0x24>, 0xffa09d7c <_nmi_report+0x28>) LC1 = P2;
ffa09d78:	00 00       	NOP;
ffa09d7a:	00 00       	NOP;
ffa09d7c:	00 00       	NOP;
ffa09d7e:	01 e8 00 00 	UNLINK;
ffa09d82:	10 00       	RTS;

ffa09d84 <_exception_report>:
ffa09d84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0012c(-4194004) */
ffa09d88:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09d8c:	e5 05       	[--SP] = (R7:4, P5:5);
ffa09d8e:	30 30       	R6 = R0;
ffa09d90:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d92:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d96:	10 97       	W[P2] = R0;
ffa09d98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09d9c:	00 e1 44 70 	R0.L = 0x7044;		/* (28740)	R0=0xff907044(-7311292) */
ffa09da0:	29 30       	R5 = R1;
ffa09da2:	00 e3 05 02 	CALL 0xffa0a1ac <_printf_str>;
ffa09da6:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa09da8:	82 c6 96 83 	R1 = R6 >> 0xe;
ffa09dac:	41 54       	R1 = R1 & R0;
ffa09dae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001f(-7340001) */
ffa09db2:	00 e1 50 70 	R0.L = 0x7050;		/* (28752)	R0=0xff907050(-7311280) */
ffa09db6:	00 e3 61 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09dba:	f9 61       	R1 = 0x3f (X);		/*		R1=0x3f( 63) */
ffa09dbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907050(-7311280) */
ffa09dc0:	4e 54       	R1 = R6 & R1;
ffa09dc2:	00 e1 58 70 	R0.L = 0x7058;		/* (28760)	R0=0xff907058(-7311272) */
ffa09dc6:	00 e3 59 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09dca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907058(-7311272) */
ffa09dce:	0d 30       	R1 = R5;
ffa09dd0:	00 e1 64 70 	R0.L = 0x7064;		/* (28772)	R0=0xff907064(-7311260) */
ffa09dd4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa09dd8:	0d e1 ac 71 	P5.L = 0x71ac;		/* (29100)	P5=0xff9071ac <_g_excregs> */
ffa09ddc:	00 e3 4e 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09de0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907064(-7311260) */
ffa09de4:	29 91       	R1 = [P5];
ffa09de6:	00 e1 6c 70 	R0.L = 0x706c;		/* (28780)	R0=0xff90706c(-7311252) */
ffa09dea:	00 e3 47 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09dee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90706c(-7311252) */
ffa09df2:	69 a0       	R1 = [P5 + 0x4];
ffa09df4:	00 e1 70 70 	R0.L = 0x7070;		/* (28784)	R0=0xff907070(-7311248) */
ffa09df8:	00 e3 40 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09dfc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907070(-7311248) */
ffa09e00:	a9 a0       	R1 = [P5 + 0x8];
ffa09e02:	00 e1 74 70 	R0.L = 0x7074;		/* (28788)	R0=0xff907074(-7311244) */
ffa09e06:	00 e3 39 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907074(-7311244) */
ffa09e0e:	e9 a0       	R1 = [P5 + 0xc];
ffa09e10:	00 e1 78 70 	R0.L = 0x7078;		/* (28792)	R0=0xff907078(-7311240) */
ffa09e14:	00 e3 32 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907078(-7311240) */
ffa09e1c:	29 a1       	R1 = [P5 + 0x10];
ffa09e1e:	00 e1 7c 70 	R0.L = 0x707c;		/* (28796)	R0=0xff90707c(-7311236) */
ffa09e22:	00 e3 2b 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90707c(-7311236) */
ffa09e2a:	69 a1       	R1 = [P5 + 0x14];
ffa09e2c:	00 e1 80 70 	R0.L = 0x7080;		/* (28800)	R0=0xff907080(-7311232) */
ffa09e30:	00 e3 24 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907080(-7311232) */
ffa09e38:	a9 a1       	R1 = [P5 + 0x18];
ffa09e3a:	00 e1 84 70 	R0.L = 0x7084;		/* (28804)	R0=0xff907084(-7311228) */
ffa09e3e:	00 e3 1d 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907084(-7311228) */
ffa09e46:	e9 a1       	R1 = [P5 + 0x1c];
ffa09e48:	00 e1 88 70 	R0.L = 0x7088;		/* (28808)	R0=0xff907088(-7311224) */
ffa09e4c:	00 e3 16 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907088(-7311224) */
ffa09e54:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09e58:	00 e3 50 01 	CALL 0xffa0a0f8 <_uart_str>;
ffa09e5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09e60:	29 a2       	R1 = [P5 + 0x20];
ffa09e62:	00 e1 90 70 	R0.L = 0x7090;		/* (28816)	R0=0xff907090(-7311216) */
ffa09e66:	00 e3 09 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907090(-7311216) */
ffa09e6e:	69 a2       	R1 = [P5 + 0x24];
ffa09e70:	00 e1 94 70 	R0.L = 0x7094;		/* (28820)	R0=0xff907094(-7311212) */
ffa09e74:	00 e3 02 02 	CALL 0xffa0a278 <_printf_hex>;
ffa09e78:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907094(-7311212) */
ffa09e7c:	a9 a2       	R1 = [P5 + 0x28];
ffa09e7e:	00 e1 98 70 	R0.L = 0x7098;		/* (28824)	R0=0xff907098(-7311208) */
ffa09e82:	00 e3 fb 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09e86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907098(-7311208) */
ffa09e8a:	e9 a2       	R1 = [P5 + 0x2c];
ffa09e8c:	00 e1 9c 70 	R0.L = 0x709c;		/* (28828)	R0=0xff90709c(-7311204) */
ffa09e90:	00 e3 f4 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09e94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90709c(-7311204) */
ffa09e98:	29 a3       	R1 = [P5 + 0x30];
ffa09e9a:	00 e1 a0 70 	R0.L = 0x70a0;		/* (28832)	R0=0xff9070a0(-7311200) */
ffa09e9e:	00 e3 ed 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09ea2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a0(-7311200) */
ffa09ea6:	69 a3       	R1 = [P5 + 0x34];
ffa09ea8:	00 e1 a4 70 	R0.L = 0x70a4;		/* (28836)	R0=0xff9070a4(-7311196) */
ffa09eac:	00 e3 e6 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09eb0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a4(-7311196) */
ffa09eb4:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09eb8:	00 e3 20 01 	CALL 0xffa0a0f8 <_uart_str>;
ffa09ebc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09ec0:	a9 a3       	R1 = [P5 + 0x38];
ffa09ec2:	00 e1 a8 70 	R0.L = 0x70a8;		/* (28840)	R0=0xff9070a8(-7311192) */
ffa09ec6:	00 e3 d9 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09eca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a8(-7311192) */
ffa09ece:	e9 a3       	R1 = [P5 + 0x3c];
ffa09ed0:	00 e1 ac 70 	R0.L = 0x70ac;		/* (28844)	R0=0xff9070ac(-7311188) */
ffa09ed4:	00 e3 d2 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09ed8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070ac(-7311188) */
ffa09edc:	29 e4 10 00 	R1 = [P5 + 0x40];
ffa09ee0:	00 e1 b0 70 	R0.L = 0x70b0;		/* (28848)	R0=0xff9070b0(-7311184) */
ffa09ee4:	00 e3 ca 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09ee8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b0(-7311184) */
ffa09eec:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09ef0:	00 e3 04 01 	CALL 0xffa0a0f8 <_uart_str>;
ffa09ef4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09ef8:	29 e4 11 00 	R1 = [P5 + 0x44];
ffa09efc:	00 e1 b4 70 	R0.L = 0x70b4;		/* (28852)	R0=0xff9070b4(-7311180) */
ffa09f00:	00 e3 bc 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b4(-7311180) */
ffa09f08:	29 e4 12 00 	R1 = [P5 + 0x48];
ffa09f0c:	00 e1 b8 70 	R0.L = 0x70b8;		/* (28856)	R0=0xff9070b8(-7311176) */
ffa09f10:	00 e3 b4 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b8(-7311176) */
ffa09f18:	29 e4 13 00 	R1 = [P5 + 0x4c];
ffa09f1c:	00 e1 bc 70 	R0.L = 0x70bc;		/* (28860)	R0=0xff9070bc(-7311172) */
ffa09f20:	00 e3 ac 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f24:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070bc(-7311172) */
ffa09f28:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09f2c:	00 e3 e6 00 	CALL 0xffa0a0f8 <_uart_str>;
ffa09f30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09f34:	29 e4 14 00 	R1 = [P5 + 0x50];
ffa09f38:	00 e1 c0 70 	R0.L = 0x70c0;		/* (28864)	R0=0xff9070c0(-7311168) */
ffa09f3c:	00 e3 9e 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f40:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c0(-7311168) */
ffa09f44:	29 e4 15 00 	R1 = [P5 + 0x54];
ffa09f48:	00 e1 c4 70 	R0.L = 0x70c4;		/* (28868)	R0=0xff9070c4(-7311164) */
ffa09f4c:	00 e3 96 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c4(-7311164) */
ffa09f54:	29 e4 16 00 	R1 = [P5 + 0x58];
ffa09f58:	00 e1 c8 70 	R0.L = 0x70c8;		/* (28872)	R0=0xff9070c8(-7311160) */
ffa09f5c:	00 e3 8e 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c8(-7311160) */
ffa09f64:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09f68:	00 e3 c8 00 	CALL 0xffa0a0f8 <_uart_str>;
ffa09f6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09f70:	29 e4 17 00 	R1 = [P5 + 0x5c];
ffa09f74:	00 e1 cc 70 	R0.L = 0x70cc;		/* (28876)	R0=0xff9070cc(-7311156) */
ffa09f78:	00 e3 80 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070cc(-7311156) */
ffa09f80:	29 e4 18 00 	R1 = [P5 + 0x60];
ffa09f84:	00 e1 d0 70 	R0.L = 0x70d0;		/* (28880)	R0=0xff9070d0(-7311152) */
ffa09f88:	00 e3 78 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d0(-7311152) */
ffa09f90:	29 e4 19 00 	R1 = [P5 + 0x64];
ffa09f94:	00 e1 d4 70 	R0.L = 0x70d4;		/* (28884)	R0=0xff9070d4(-7311148) */
ffa09f98:	00 e3 70 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09f9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d4(-7311148) */
ffa09fa0:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09fa4:	00 e3 aa 00 	CALL 0xffa0a0f8 <_uart_str>;
ffa09fa8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09fac:	29 e4 1a 00 	R1 = [P5 + 0x68];
ffa09fb0:	00 e1 d8 70 	R0.L = 0x70d8;		/* (28888)	R0=0xff9070d8(-7311144) */
ffa09fb4:	00 e3 62 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09fb8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d8(-7311144) */
ffa09fbc:	29 e4 1b 00 	R1 = [P5 + 0x6c];
ffa09fc0:	00 e1 dc 70 	R0.L = 0x70dc;		/* (28892)	R0=0xff9070dc(-7311140) */
ffa09fc4:	00 e3 5a 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09fc8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070dc(-7311140) */
ffa09fcc:	29 e4 1c 00 	R1 = [P5 + 0x70];
ffa09fd0:	00 e1 e0 70 	R0.L = 0x70e0;		/* (28896)	R0=0xff9070e0(-7311136) */
ffa09fd4:	00 e3 52 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09fd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070e0(-7311136) */
ffa09fdc:	29 e4 1d 00 	R1 = [P5 + 0x74];
ffa09fe0:	00 e1 e4 70 	R0.L = 0x70e4;		/* (28900)	R0=0xff9070e4(-7311132) */
ffa09fe4:	00 e3 4a 01 	CALL 0xffa0a278 <_printf_hex>;
ffa09fe8:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc04000(-4177920) */
ffa09fec:	10 e1 0c 07 	I0.L = 0x70c;		/* (1804)	I0=0xffc0070c(-4192500) */
ffa09ff0:	24 e1 00 01 	R4 = 0x100 (X);		/*		R4=0x100(256) */
ffa09ff4:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa09ff6:	24 9f       	W[I0] = R4.L;
ffa09ff8:	24 00       	SSYNC;
ffa09ffa:	24 9f       	W[I0] = R4.L;
ffa09ffc:	24 00       	SSYNC;
ffa09ffe:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a000:	0e 54       	R0 = R6 & R1;
ffa0a002:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc071ac(-4165204) */
ffa0a006:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00020(-4194272) */
ffa0a00a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc07189(-4165239) */
ffa0a00e:	00 0c       	CC = R0 == 0x0;
ffa0a010:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa0a014:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0a016:	08 e1 04 07 	P0.L = 0x704;		/* (1796)	P0=0xffc00704(-4192508) */
ffa0a01a:	09 e1 0c 07 	P1.L = 0x70c;		/* (1804)	P1=0xffc0070c(-4192500) */
ffa0a01e:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa0a020:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa0a022:	b4 e0 0d 20 	LSETUP(0xffa0a02a <_exception_report+0x2a6>, 0xffa0a03c <_exception_report+0x2b8>) LC1 = P2;
ffa0a026:	4b 1c       	IF CC JUMP 0xffa0a0bc <_exception_report+0x338> (BP);
ffa0a028:	05 20       	JUMP.S 0xffa0a032 <_exception_report+0x2ae>;
ffa0a02a:	09 4e       	R1 >>= 0x1;
ffa0a02c:	0e 54       	R0 = R6 & R1;
ffa0a02e:	00 0c       	CC = R0 == 0x0;
ffa0a030:	46 1c       	IF CC JUMP 0xffa0a0bc <_exception_report+0x338> (BP);
ffa0a032:	2b 97       	W[P5] = R3;
ffa0a034:	0a 97       	W[P1] = R2;
ffa0a036:	24 00       	SSYNC;
ffa0a038:	0a 97       	W[P1] = R2;
ffa0a03a:	24 00       	SSYNC;
ffa0a03c:	00 00       	NOP;
ffa0a03e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00006(-4194298) */
ffa0a042:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a046:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a048:	10 97       	W[P2] = R0;
ffa0a04a:	f2 68       	P2 = 0x1e (X);		/*		P2=0x1e( 30) */
ffa0a04c:	b2 e0 04 20 	LSETUP(0xffa0a050 <_exception_report+0x2cc>, 0xffa0a054 <_exception_report+0x2d0>) LC1 = P2;
ffa0a050:	00 00       	NOP;
ffa0a052:	00 00       	NOP;
ffa0a054:	00 00       	NOP;
ffa0a056:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa0a05a:	15 54       	R0 = R5 & R2;
ffa0a05c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00708(-4192504) */
ffa0a060:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00704(-4192508) */
ffa0a064:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0070c(-4192500) */
ffa0a068:	00 0c       	CC = R0 == 0x0;
ffa0a06a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a06c:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa0a070:	08 e1 04 07 	P0.L = 0x704;		/* (1796)	P0=0xffc00704(-4192508) */
ffa0a074:	09 e1 0c 07 	P1.L = 0x70c;		/* (1804)	P1=0xffc0070c(-4192500) */
ffa0a078:	13 60       	R3 = 0x2 (X);		/*		R3=0x2(  2) */
ffa0a07a:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0a07c:	b4 e0 11 20 	LSETUP(0xffa0a084 <_exception_report+0x300>, 0xffa0a09e <_exception_report+0x31a>) LC1 = P2;
ffa0a080:	20 1c       	IF CC JUMP 0xffa0a0c0 <_exception_report+0x33c> (BP);
ffa0a082:	05 20       	JUMP.S 0xffa0a08c <_exception_report+0x308>;
ffa0a084:	0a 4e       	R2 >>= 0x1;
ffa0a086:	15 54       	R0 = R5 & R2;
ffa0a088:	00 0c       	CC = R0 == 0x0;
ffa0a08a:	1b 1c       	IF CC JUMP 0xffa0a0c0 <_exception_report+0x33c> (BP);
ffa0a08c:	2f 97       	W[P5] = R7;
ffa0a08e:	0b 97       	W[P1] = R3;
ffa0a090:	24 00       	SSYNC;
ffa0a092:	0b 97       	W[P1] = R3;
ffa0a094:	24 00       	SSYNC;
ffa0a096:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a098:	01 54       	R0 = R1 & R0;
ffa0a09a:	18 0c       	CC = R0 == 0x3;
ffa0a09c:	14 18       	IF CC JUMP 0xffa0a0c4 <_exception_report+0x340>;
ffa0a09e:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a0a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00010(-4194288) */
ffa0a0a4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a0a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a0aa:	10 97       	W[P2] = R0;
ffa0a0ac:	2a e1 2c 01 	P2 = 0x12c (X);		/*		P2=0x12c(300) */
ffa0a0b0:	b2 e0 04 20 	LSETUP(0xffa0a0b4 <_exception_report+0x330>, 0xffa0a0b8 <_exception_report+0x334>) LC1 = P2;
ffa0a0b4:	00 00       	NOP;
ffa0a0b6:	00 00       	NOP;
ffa0a0b8:	00 00       	NOP;
ffa0a0ba:	9e 2f       	JUMP.S 0xffa09ff6 <_exception_report+0x272>;
ffa0a0bc:	03 97       	W[P0] = R3;
ffa0a0be:	bb 2f       	JUMP.S 0xffa0a034 <_exception_report+0x2b0>;
ffa0a0c0:	07 97       	W[P0] = R7;
ffa0a0c2:	e6 2f       	JUMP.S 0xffa0a08e <_exception_report+0x30a>;
	...
ffa0a0f4:	d5 2f       	JUMP.S 0xffa0a09e <_exception_report+0x31a>;
	...

ffa0a0f8 <_uart_str>:
ffa0a0f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0012c(-4194004) */
ffa0a0fc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a100:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa0a104:	08 32       	P1 = R0;
ffa0a106:	50 95       	R0 = W[P2] (X);
ffa0a108:	c0 42       	R0 = R0.L (Z);
ffa0a10a:	08 0c       	CC = R0 == 0x1;
ffa0a10c:	06 18       	IF CC JUMP 0xffa0a118 <_uart_str+0x20>;
ffa0a10e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a110:	02 30       	R0 = R2;
ffa0a112:	01 e8 00 00 	UNLINK;
ffa0a116:	10 00       	RTS;
ffa0a118:	48 99       	R0 = B[P1] (X);
ffa0a11a:	01 43       	R1 = R0.B (X);
ffa0a11c:	01 0c       	CC = R1 == 0x0;
ffa0a11e:	f8 1b       	IF CC JUMP 0xffa0a10e <_uart_str+0x16>;
ffa0a120:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc0070c(-4192500) */
ffa0a124:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a126:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a128:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa0a12c:	28 e1 80 00 	P0 = 0x80 (X);		/*		P0=0x80(128) */
ffa0a130:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa0a132:	b2 e0 1c 00 	LSETUP(0xffa0a136 <_uart_str+0x3e>, 0xffa0a16a <_uart_str+0x72>) LC1 = P0;
ffa0a136:	19 08       	CC = R1 == R3;
ffa0a138:	1b 18       	IF CC JUMP 0xffa0a16e <_uart_str+0x76>;
ffa0a13a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0a13e:	00 43       	R0 = R0.B (X);
ffa0a140:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0a144:	10 97       	W[P2] = R0;
ffa0a146:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0a148:	50 95       	R0 = W[P2] (X);
ffa0a14a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0a14c:	0a 10       	IF !CC JUMP 0xffa0a160 <_uart_str+0x68>;
ffa0a14e:	00 00       	NOP;
ffa0a150:	00 00       	NOP;
ffa0a152:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0a156:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0a15a:	50 95       	R0 = W[P2] (X);
ffa0a15c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0a15e:	f9 1f       	IF CC JUMP 0xffa0a150 <_uart_str+0x58> (BP);
ffa0a160:	48 99       	R0 = B[P1] (X);
ffa0a162:	01 43       	R1 = R0.B (X);
ffa0a164:	01 0c       	CC = R1 == 0x0;
ffa0a166:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0a168:	d4 1b       	IF CC JUMP 0xffa0a110 <_uart_str+0x18>;
ffa0a16a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a16c:	d2 2f       	JUMP.S 0xffa0a110 <_uart_str+0x18>;
ffa0a16e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a170:	20 9f       	W[I0] = R0.L;
ffa0a172:	02 20       	JUMP.S 0xffa0a176 <_uart_str+0x7e>;
ffa0a174:	00 00       	NOP;
ffa0a176:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0a17a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0a17e:	50 95       	R0 = W[P2] (X);
ffa0a180:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0a182:	f9 1f       	IF CC JUMP 0xffa0a174 <_uart_str+0x7c> (BP);
ffa0a184:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0a188:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0a18a:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0a18e:	10 97       	W[P2] = R0;
ffa0a190:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0a192:	50 95       	R0 = W[P2] (X);
ffa0a194:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0a196:	e5 13       	IF !CC JUMP 0xffa0a160 <_uart_str+0x68>;
ffa0a198:	00 00       	NOP;
ffa0a19a:	00 00       	NOP;
ffa0a19c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0a1a0:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0a1a4:	50 95       	R0 = W[P2] (X);
ffa0a1a6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0a1a8:	f9 1f       	IF CC JUMP 0xffa0a19a <_uart_str+0xa2> (BP);
ffa0a1aa:	db 2f       	JUMP.S 0xffa0a160 <_uart_str+0x68>;

ffa0a1ac <_printf_str>:
ffa0a1ac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a1b0:	01 e8 00 00 	UNLINK;
ffa0a1b4:	ff e2 a2 ff 	JUMP.L 0xffa0a0f8 <_uart_str>;

ffa0a1b8 <_printf_newline>:
ffa0a1b8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a1bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa0a1c0:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0a1c4:	01 e8 00 00 	UNLINK;
ffa0a1c8:	ff e2 98 ff 	JUMP.L 0xffa0a0f8 <_uart_str>;

ffa0a1cc <_printf_hex_byte>:
ffa0a1cc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0a1ce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a1d2:	28 32       	P5 = R0;
ffa0a1d4:	39 30       	R7 = R1;
ffa0a1d6:	00 e3 b1 01 	CALL 0xffa0a538 <_strlen_>;
ffa0a1da:	10 30       	R2 = R0;
ffa0a1dc:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0a1e0:	02 09       	CC = R2 <= R0;
ffa0a1e2:	41 10       	IF !CC JUMP 0xffa0a264 <_printf_hex_byte+0x98>;
ffa0a1e4:	02 0d       	CC = R2 <= 0x0;
ffa0a1e6:	44 18       	IF CC JUMP 0xffa0a26e <_printf_hex_byte+0xa2>;
ffa0a1e8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900080 */
ffa0a1ec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a1ee:	08 e1 4c 72 	P0.L = 0x724c;		/* (29260)	P0=0xff90724c <_printf_out> */
ffa0a1f2:	09 32       	P1 = R1;
ffa0a1f4:	42 91       	P2 = [P0];
ffa0a1f6:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a1f8:	68 98       	R0 = B[P5++] (X);
ffa0a1fa:	0a 08       	CC = R2 == R1;
ffa0a1fc:	8a 5a       	P2 = P2 + P1;
ffa0a1fe:	10 9b       	B[P2] = R0;
ffa0a200:	f9 17       	IF !CC JUMP 0xffa0a1f2 <_printf_hex_byte+0x26> (BP);
ffa0a202:	0a 32       	P1 = R2;
ffa0a204:	42 91       	P2 = [P0];
ffa0a206:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a208:	22 32       	P4 = R2;
ffa0a20a:	79 43       	R1 = R7.B (Z);
ffa0a20c:	8a 5a       	P2 = P2 + P1;
ffa0a20e:	10 9b       	B[P2] = R0;
ffa0a210:	42 91       	P2 = [P0];
ffa0a212:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0a214:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a218:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0a21a:	a2 5a       	P2 = P2 + P4;
ffa0a21c:	10 9b       	B[P2] = R0;
ffa0a21e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa0a220:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0a222:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa0a224:	01 30       	R0 = R1;
ffa0a226:	10 40       	R0 >>>= R2;
ffa0a228:	18 54       	R0 = R0 & R3;
ffa0a22a:	38 09       	CC = R0 <= R7;
ffa0a22c:	1a 1c       	IF CC JUMP 0xffa0a260 <_printf_hex_byte+0x94> (BP);
ffa0a22e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a230:	42 91       	P2 = [P0];
ffa0a232:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0a234:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900708 */
ffa0a238:	22 0c       	CC = R2 == -0x4;
ffa0a23a:	8a 5a       	P2 = P2 + P1;
ffa0a23c:	0d e1 4c 72 	P5.L = 0x724c;		/* (29260)	P5=0xff90724c <_printf_out> */
ffa0a240:	10 9b       	B[P2] = R0;
ffa0a242:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a244:	f0 17       	IF !CC JUMP 0xffa0a224 <_printf_hex_byte+0x58> (BP);
ffa0a246:	6a 91       	P2 = [P5];
ffa0a248:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a24a:	94 5a       	P2 = P4 + P2;
ffa0a24c:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0a250:	28 91       	R0 = [P5];
ffa0a252:	ff e3 53 ff 	CALL 0xffa0a0f8 <_uart_str>;
ffa0a256:	01 e8 00 00 	UNLINK;
ffa0a25a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a25c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0a25e:	10 00       	RTS;
ffa0a260:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a262:	e7 2f       	JUMP.S 0xffa0a230 <_printf_hex_byte+0x64>;
ffa0a264:	01 e8 00 00 	UNLINK;
ffa0a268:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a26a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0a26c:	10 00       	RTS;
ffa0a26e:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90724c <_printf_out> */
ffa0a272:	08 e1 4c 72 	P0.L = 0x724c;		/* (29260)	P0=0xff90724c <_printf_out> */
ffa0a276:	c6 2f       	JUMP.S 0xffa0a202 <_printf_hex_byte+0x36>;

ffa0a278 <_printf_hex>:
ffa0a278:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0a27a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a27e:	28 32       	P5 = R0;
ffa0a280:	39 30       	R7 = R1;
ffa0a282:	00 e3 5b 01 	CALL 0xffa0a538 <_strlen_>;
ffa0a286:	10 30       	R2 = R0;
ffa0a288:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa0a28c:	02 09       	CC = R2 <= R0;
ffa0a28e:	47 10       	IF !CC JUMP 0xffa0a31c <_printf_hex+0xa4>;
ffa0a290:	02 0d       	CC = R2 <= 0x0;
ffa0a292:	4a 18       	IF CC JUMP 0xffa0a326 <_printf_hex+0xae>;
ffa0a294:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90070c */
ffa0a298:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a29a:	09 e1 4c 72 	P1.L = 0x724c;		/* (29260)	P1=0xff90724c <_printf_out> */
ffa0a29e:	01 32       	P0 = R1;
ffa0a2a0:	4a 91       	P2 = [P1];
ffa0a2a2:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a2a4:	68 98       	R0 = B[P5++] (X);
ffa0a2a6:	0a 08       	CC = R2 == R1;
ffa0a2a8:	82 5a       	P2 = P2 + P0;
ffa0a2aa:	10 9b       	B[P2] = R0;
ffa0a2ac:	f9 17       	IF !CC JUMP 0xffa0a29e <_printf_hex+0x26> (BP);
ffa0a2ae:	02 32       	P0 = R2;
ffa0a2b0:	4a 91       	P2 = [P1];
ffa0a2b2:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a2b4:	1a 32       	P3 = R2;
ffa0a2b6:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa0a2b8:	82 5a       	P2 = P2 + P0;
ffa0a2ba:	10 9b       	B[P2] = R0;
ffa0a2bc:	4a 91       	P2 = [P1];
ffa0a2be:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa0a2c0:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a2c4:	10 6c       	P0 += 0x2;		/* (  2) */
ffa0a2c6:	9a 5a       	P2 = P2 + P3;
ffa0a2c8:	10 9b       	B[P2] = R0;
ffa0a2ca:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0a2cc:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0a2ce:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa0a2d0:	b2 e0 10 50 	LSETUP(0xffa0a2d4 <_printf_hex+0x5c>, 0xffa0a2f0 <_printf_hex+0x78>) LC1 = P5;
ffa0a2d4:	07 30       	R0 = R7;
ffa0a2d6:	08 40       	R0 >>>= R1;
ffa0a2d8:	10 54       	R0 = R0 & R2;
ffa0a2da:	18 09       	CC = R0 <= R3;
ffa0a2dc:	1e 1c       	IF CC JUMP 0xffa0a318 <_printf_hex+0xa0> (BP);
ffa0a2de:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a2e0:	4a 91       	P2 = [P1];
ffa0a2e2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900704 */
ffa0a2e6:	0c e1 4c 72 	P4.L = 0x724c;		/* (29260)	P4=0xff90724c <_printf_out> */
ffa0a2ea:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0a2ec:	82 5a       	P2 = P2 + P0;
ffa0a2ee:	10 9b       	B[P2] = R0;
ffa0a2f0:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a2f2:	62 91       	P2 = [P4];
ffa0a2f4:	4b 32       	P1 = P3;
ffa0a2f6:	49 6c       	P1 += 0x9;		/* (  9) */
ffa0a2f8:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a2fa:	8a 5a       	P2 = P2 + P1;
ffa0a2fc:	10 9b       	B[P2] = R0;
ffa0a2fe:	62 91       	P2 = [P4];
ffa0a300:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a302:	8a 5a       	P2 = P2 + P1;
ffa0a304:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0a308:	20 91       	R0 = [P4];
ffa0a30a:	ff e3 f7 fe 	CALL 0xffa0a0f8 <_uart_str>;
ffa0a30e:	01 e8 00 00 	UNLINK;
ffa0a312:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a314:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0a316:	10 00       	RTS;
ffa0a318:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a31a:	e3 2f       	JUMP.S 0xffa0a2e0 <_printf_hex+0x68>;
ffa0a31c:	01 e8 00 00 	UNLINK;
ffa0a320:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a322:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0a324:	10 00       	RTS;
ffa0a326:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90724c <_printf_out> */
ffa0a32a:	09 e1 4c 72 	P1.L = 0x724c;		/* (29260)	P1=0xff90724c <_printf_out> */
ffa0a32e:	c0 2f       	JUMP.S 0xffa0a2ae <_printf_hex+0x36>;

ffa0a330 <_printf_int>:
ffa0a330:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0a332:	01 0c       	CC = R1 == 0x0;
ffa0a334:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a338:	28 32       	P5 = R0;
ffa0a33a:	39 30       	R7 = R1;
ffa0a33c:	41 14       	IF !CC JUMP 0xffa0a3be <_printf_int+0x8e> (BP);
ffa0a33e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907134 <_rbuf> */
ffa0a342:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a346:	5a 91       	P2 = [P3];
ffa0a348:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a34a:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa0a34c:	10 9b       	B[P2] = R0;
ffa0a34e:	45 30       	R0 = P5;
ffa0a350:	00 e3 f4 00 	CALL 0xffa0a538 <_strlen_>;
ffa0a354:	c6 50       	R3 = R6 + R0;
ffa0a356:	10 30       	R2 = R0;
ffa0a358:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0a35c:	03 09       	CC = R3 <= R0;
ffa0a35e:	4e 10       	IF !CC JUMP 0xffa0a3fa <_printf_int+0xca>;
ffa0a360:	02 0d       	CC = R2 <= 0x0;
ffa0a362:	79 18       	IF CC JUMP 0xffa0a454 <_printf_int+0x124>;
ffa0a364:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90724c <_printf_out> */
ffa0a368:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a36a:	08 e1 4c 72 	P0.L = 0x724c;		/* (29260)	P0=0xff90724c <_printf_out> */
ffa0a36e:	09 32       	P1 = R1;
ffa0a370:	42 91       	P2 = [P0];
ffa0a372:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a374:	68 98       	R0 = B[P5++] (X);
ffa0a376:	0a 08       	CC = R2 == R1;
ffa0a378:	8a 5a       	P2 = P2 + P1;
ffa0a37a:	10 9b       	B[P2] = R0;
ffa0a37c:	f9 17       	IF !CC JUMP 0xffa0a36e <_printf_int+0x3e> (BP);
ffa0a37e:	06 0d       	CC = R6 <= 0x0;
ffa0a380:	12 18       	IF CC JUMP 0xffa0a3a4 <_printf_int+0x74>;
ffa0a382:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a384:	00 91       	R0 = [P0];
ffa0a386:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa0a38a:	5a 91 00 00 
ffa0a38e:	08 50       	R0 = R0 + R1;
ffa0a390:	08 32       	P1 = R0;
ffa0a392:	0e 52       	R0 = R6 - R1;
ffa0a394:	28 32       	P5 = R0;
ffa0a396:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a398:	0e 08       	CC = R6 == R1;
ffa0a39a:	aa 5a       	P2 = P2 + P5;
ffa0a39c:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0a3a0:	08 9b       	B[P1] = R0;
ffa0a3a2:	f1 17       	IF !CC JUMP 0xffa0a384 <_printf_int+0x54> (BP);
ffa0a3a4:	0b 32       	P1 = R3;
ffa0a3a6:	42 91       	P2 = [P0];
ffa0a3a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3aa:	91 5a       	P2 = P1 + P2;
ffa0a3ac:	10 9b       	B[P2] = R0;
ffa0a3ae:	00 91       	R0 = [P0];
ffa0a3b0:	ff e3 a4 fe 	CALL 0xffa0a0f8 <_uart_str>;
ffa0a3b4:	01 e8 00 00 	UNLINK;
ffa0a3b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3ba:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0a3bc:	10 00       	RTS;
ffa0a3be:	01 0d       	CC = R1 <= 0x0;
ffa0a3c0:	22 18       	IF CC JUMP 0xffa0a404 <_printf_int+0xd4>;
ffa0a3c2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a3c6:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0a3c8:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a3cc:	05 20       	JUMP.S 0xffa0a3d6 <_printf_int+0xa6>;
ffa0a3ce:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0a3d2:	06 08       	CC = R6 == R0;
ffa0a3d4:	bd 1b       	IF CC JUMP 0xffa0a34e <_printf_int+0x1e>;
ffa0a3d6:	07 30       	R0 = R7;
ffa0a3d8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0a3da:	00 e3 83 00 	CALL 0xffa0a4e0 <_mod>;
ffa0a3de:	0e 32       	P1 = R6;
ffa0a3e0:	5a 91       	P2 = [P3];
ffa0a3e2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a3e4:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0a3e6:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0a3e8:	8a 5a       	P2 = P2 + P1;
ffa0a3ea:	10 9b       	B[P2] = R0;
ffa0a3ec:	07 30       	R0 = R7;
ffa0a3ee:	00 e3 6b 00 	CALL 0xffa0a4c4 <_div>;
ffa0a3f2:	00 0d       	CC = R0 <= 0x0;
ffa0a3f4:	38 30       	R7 = R0;
ffa0a3f6:	ec 17       	IF !CC JUMP 0xffa0a3ce <_printf_int+0x9e> (BP);
ffa0a3f8:	ab 2f       	JUMP.S 0xffa0a34e <_printf_int+0x1e>;
ffa0a3fa:	01 e8 00 00 	UNLINK;
ffa0a3fe:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a400:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0a402:	10 00       	RTS;
ffa0a404:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a406:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa0a408:	f8 4f       	R0 <<= 0x1f;
ffa0a40a:	f8 53       	R7 = R0 - R7;
ffa0a40c:	07 0d       	CC = R7 <= 0x0;
ffa0a40e:	2c 18       	IF CC JUMP 0xffa0a466 <_printf_int+0x136>;
ffa0a410:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a414:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0a416:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a41a:	05 20       	JUMP.S 0xffa0a424 <_printf_int+0xf4>;
ffa0a41c:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa0a420:	4c 08       	CC = P4 == P1;
ffa0a422:	1e 18       	IF CC JUMP 0xffa0a45e <_printf_int+0x12e>;
ffa0a424:	07 30       	R0 = R7;
ffa0a426:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0a428:	00 e3 5c 00 	CALL 0xffa0a4e0 <_mod>;
ffa0a42c:	5a 91       	P2 = [P3];
ffa0a42e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a430:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0a432:	a2 5a       	P2 = P2 + P4;
ffa0a434:	10 9b       	B[P2] = R0;
ffa0a436:	07 30       	R0 = R7;
ffa0a438:	00 e3 46 00 	CALL 0xffa0a4c4 <_div>;
ffa0a43c:	00 0d       	CC = R0 <= 0x0;
ffa0a43e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0a440:	38 30       	R7 = R0;
ffa0a442:	ed 17       	IF !CC JUMP 0xffa0a41c <_printf_int+0xec> (BP);
ffa0a444:	74 30       	R6 = P4;
ffa0a446:	4c 32       	P1 = P4;
ffa0a448:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0a44a:	5a 91       	P2 = [P3];
ffa0a44c:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0a44e:	8a 5a       	P2 = P2 + P1;
ffa0a450:	10 9b       	B[P2] = R0;
ffa0a452:	7e 2f       	JUMP.S 0xffa0a34e <_printf_int+0x1e>;
ffa0a454:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90724c <_printf_out> */
ffa0a458:	08 e1 4c 72 	P0.L = 0x724c;		/* (29260)	P0=0xff90724c <_printf_out> */
ffa0a45c:	91 2f       	JUMP.S 0xffa0a37e <_printf_int+0x4e>;
ffa0a45e:	4c 32       	P1 = P4;
ffa0a460:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa0a464:	f3 2f       	JUMP.S 0xffa0a44a <_printf_int+0x11a>;
ffa0a466:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a46a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0a46c:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa0a46e:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a472:	ec 2f       	JUMP.S 0xffa0a44a <_printf_int+0x11a>;

ffa0a474 <_printf_ip>:
ffa0a474:	70 05       	[--SP] = (R7:6);
ffa0a476:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a47a:	39 30       	R7 = R1;
ffa0a47c:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa0a480:	49 43       	R1 = R1.B (Z);
ffa0a482:	ff e3 57 ff 	CALL 0xffa0a330 <_printf_int>;
ffa0a486:	06 e1 e8 70 	R6.L = 0x70e8;		/* (28904)	R6=0xff9070e8(-7311128) */
ffa0a48a:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0a48e:	49 43       	R1 = R1.B (Z);
ffa0a490:	06 30       	R0 = R6;
ffa0a492:	ff e3 4f ff 	CALL 0xffa0a330 <_printf_int>;
ffa0a496:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0a49a:	49 43       	R1 = R1.B (Z);
ffa0a49c:	06 30       	R0 = R6;
ffa0a49e:	c7 4e       	R7 >>= 0x18;
ffa0a4a0:	ff e3 48 ff 	CALL 0xffa0a330 <_printf_int>;
ffa0a4a4:	0f 30       	R1 = R7;
ffa0a4a6:	06 30       	R0 = R6;
ffa0a4a8:	ff e3 44 ff 	CALL 0xffa0a330 <_printf_int>;
ffa0a4ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa0a4b0:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0a4b4:	ff e3 7c fe 	CALL 0xffa0a1ac <_printf_str>;
ffa0a4b8:	01 e8 00 00 	UNLINK;
ffa0a4bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4be:	30 05       	(R7:6) = [SP++];
ffa0a4c0:	10 00       	RTS;
	...

ffa0a4c4 <_div>:
ffa0a4c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a4c8:	08 4f       	R0 <<= 0x1;
ffa0a4ca:	48 42       	DIVS (R0, R1);
ffa0a4cc:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0a4ce:	b2 e0 03 20 	LSETUP(0xffa0a4d2 <_div+0xe>, 0xffa0a4d4 <_div+0x10>) LC1 = P2;
ffa0a4d2:	08 42       	DIVQ (R0, R1);
ffa0a4d4:	00 00       	NOP;
ffa0a4d6:	80 42       	R0 = R0.L (X);
ffa0a4d8:	01 e8 00 00 	UNLINK;
ffa0a4dc:	10 00       	RTS;
	...

ffa0a4e0 <_mod>:
ffa0a4e0:	70 05       	[--SP] = (R7:6);
ffa0a4e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a4e6:	30 30       	R6 = R0;
ffa0a4e8:	39 30       	R7 = R1;
ffa0a4ea:	ff e3 ed ff 	CALL 0xffa0a4c4 <_div>;
ffa0a4ee:	c7 40       	R7 *= R0;
ffa0a4f0:	01 e8 00 00 	UNLINK;
ffa0a4f4:	be 53       	R6 = R6 - R7;
ffa0a4f6:	06 30       	R0 = R6;
ffa0a4f8:	30 05       	(R7:6) = [SP++];
ffa0a4fa:	10 00       	RTS;

ffa0a4fc <_memcpy_>:
ffa0a4fc:	02 0d       	CC = R2 <= 0x0;
ffa0a4fe:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a502:	08 32       	P1 = R0;
ffa0a504:	11 32       	P2 = R1;
ffa0a506:	08 18       	IF CC JUMP 0xffa0a516 <_memcpy_+0x1a>;
ffa0a508:	00 00       	NOP;
ffa0a50a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a50c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a50e:	48 98       	R0 = B[P1++] (X);
ffa0a510:	0a 08       	CC = R2 == R1;
ffa0a512:	10 9a       	B[P2++] = R0;
ffa0a514:	fc 17       	IF !CC JUMP 0xffa0a50c <_memcpy_+0x10> (BP);
ffa0a516:	01 e8 00 00 	UNLINK;
ffa0a51a:	10 00       	RTS;

ffa0a51c <_memset_>:
ffa0a51c:	02 0d       	CC = R2 <= 0x0;
ffa0a51e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a522:	10 32       	P2 = R0;
ffa0a524:	06 18       	IF CC JUMP 0xffa0a530 <_memset_+0x14>;
ffa0a526:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a528:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a52a:	02 08       	CC = R2 == R0;
ffa0a52c:	11 9a       	B[P2++] = R1;
ffa0a52e:	fd 17       	IF !CC JUMP 0xffa0a528 <_memset_+0xc> (BP);
ffa0a530:	01 e8 00 00 	UNLINK;
ffa0a534:	10 00       	RTS;
	...

ffa0a538 <_strlen_>:
ffa0a538:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a53c:	10 32       	P2 = R0;
ffa0a53e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a540:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa0a544:	b2 e0 06 10 	LSETUP(0xffa0a548 <_strlen_+0x10>, 0xffa0a550 <_strlen_+0x18>) LC1 = P1;
ffa0a548:	50 99       	R0 = B[P2] (X);
ffa0a54a:	00 0c       	CC = R0 == 0x0;
ffa0a54c:	04 18       	IF CC JUMP 0xffa0a554 <_strlen_+0x1c>;
ffa0a54e:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a550:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a552:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a554:	01 30       	R0 = R1;
ffa0a556:	01 e8 00 00 	UNLINK;
ffa0a55a:	10 00       	RTS;

ffa0a55c <_strcpy_>:
ffa0a55c:	12 32       	P2 = R2;
ffa0a55e:	c5 04       	[--SP] = (P5:5);
ffa0a560:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a564:	29 32       	P5 = R1;
ffa0a566:	00 32       	P0 = R0;
ffa0a568:	51 99       	R1 = B[P2] (X);
ffa0a56a:	08 43       	R0 = R1.B (X);
ffa0a56c:	00 0c       	CC = R0 == 0x0;
ffa0a56e:	17 18       	IF CC JUMP 0xffa0a59c <_strcpy_+0x40>;
ffa0a570:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a572:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a574:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa0a578:	b2 e0 09 10 	LSETUP(0xffa0a57c <_strcpy_+0x20>, 0xffa0a58a <_strcpy_+0x2e>) LC1 = P1;
ffa0a57c:	01 9a       	B[P0++] = R1;
ffa0a57e:	51 99       	R1 = B[P2] (X);
ffa0a580:	08 43       	R0 = R1.B (X);
ffa0a582:	00 0c       	CC = R0 == 0x0;
ffa0a584:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0a586:	03 18       	IF CC JUMP 0xffa0a58c <_strcpy_+0x30>;
ffa0a588:	00 00       	NOP;
ffa0a58a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a58c:	01 e8 00 00 	UNLINK;
ffa0a590:	28 91       	R0 = [P5];
ffa0a592:	10 50       	R0 = R0 + R2;
ffa0a594:	28 93       	[P5] = R0;
ffa0a596:	40 30       	R0 = P0;
ffa0a598:	85 04       	(P5:5) = [SP++];
ffa0a59a:	10 00       	RTS;
ffa0a59c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a59e:	f7 2f       	JUMP.S 0xffa0a58c <_strcpy_+0x30>;

ffa0a5a0 <_strprepend>:
ffa0a5a0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0a5a2:	21 32       	P4 = R1;
ffa0a5a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a5a8:	38 30       	R7 = R0;
ffa0a5aa:	02 30       	R0 = R2;
ffa0a5ac:	2a 32       	P5 = R2;
ffa0a5ae:	ff e3 c5 ff 	CALL 0xffa0a538 <_strlen_>;
ffa0a5b2:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa0a5b6:	20 91 00 00 
ffa0a5ba:	02 0d       	CC = R2 <= 0x0;
ffa0a5bc:	0a 18       	IF CC JUMP 0xffa0a5d0 <_strprepend+0x30>;
ffa0a5be:	07 52       	R0 = R7 - R0;
ffa0a5c0:	10 32       	P2 = R0;
ffa0a5c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a5c4:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a5c6:	68 98       	R0 = B[P5++] (X);
ffa0a5c8:	0a 08       	CC = R2 == R1;
ffa0a5ca:	10 9a       	B[P2++] = R0;
ffa0a5cc:	fc 17       	IF !CC JUMP 0xffa0a5c4 <_strprepend+0x24> (BP);
ffa0a5ce:	20 91       	R0 = [P4];
ffa0a5d0:	01 e8 00 00 	UNLINK;
ffa0a5d4:	07 52       	R0 = R7 - R0;
ffa0a5d6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0a5d8:	10 00       	RTS;
	...

ffa0a5dc <_strcmp>:
ffa0a5dc:	10 32       	P2 = R0;
ffa0a5de:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a5e2:	01 32       	P0 = R1;
ffa0a5e4:	51 99       	R1 = B[P2] (X);
ffa0a5e6:	01 0c       	CC = R1 == 0x0;
ffa0a5e8:	1b 18       	IF CC JUMP 0xffa0a61e <_strcmp+0x42>;
ffa0a5ea:	00 00       	NOP;
ffa0a5ec:	00 00       	NOP;
ffa0a5ee:	00 00       	NOP;
ffa0a5f0:	40 99       	R0 = B[P0] (X);
ffa0a5f2:	00 0c       	CC = R0 == 0x0;
ffa0a5f4:	15 18       	IF CC JUMP 0xffa0a61e <_strcmp+0x42>;
ffa0a5f6:	01 08       	CC = R1 == R0;
ffa0a5f8:	1c 10       	IF !CC JUMP 0xffa0a630 <_strcmp+0x54>;
ffa0a5fa:	4a 32       	P1 = P2;
ffa0a5fc:	50 32       	P2 = P0;
ffa0a5fe:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a600:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a602:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa0a606:	49 99       	R1 = B[P1] (X);
ffa0a608:	01 0c       	CC = R1 == 0x0;
ffa0a60a:	0a 18       	IF CC JUMP 0xffa0a61e <_strcmp+0x42>;
ffa0a60c:	00 00       	NOP;
ffa0a60e:	00 00       	NOP;
ffa0a610:	00 00       	NOP;
ffa0a612:	50 99       	R0 = B[P2] (X);
ffa0a614:	00 0c       	CC = R0 == 0x0;
ffa0a616:	04 18       	IF CC JUMP 0xffa0a61e <_strcmp+0x42>;
ffa0a618:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0a61a:	40 0c       	CC = P0 == 0x0;
ffa0a61c:	05 10       	IF !CC JUMP 0xffa0a626 <_strcmp+0x4a>;
ffa0a61e:	01 e8 00 00 	UNLINK;
ffa0a622:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a624:	10 00       	RTS;
ffa0a626:	01 08       	CC = R1 == R0;
ffa0a628:	04 10       	IF !CC JUMP 0xffa0a630 <_strcmp+0x54>;
ffa0a62a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a62c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a62e:	ec 2f       	JUMP.S 0xffa0a606 <_strcmp+0x2a>;
ffa0a630:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a632:	01 e8 00 00 	UNLINK;
ffa0a636:	10 00       	RTS;

ffa0a638 <_substr>:
ffa0a638:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0a63a:	20 32       	P4 = R0;
ffa0a63c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a640:	11 32       	P2 = R1;
ffa0a642:	32 30       	R6 = R2;
ffa0a644:	61 99       	R1 = B[P4] (X);
ffa0a646:	01 0c       	CC = R1 == 0x0;
ffa0a648:	14 18       	IF CC JUMP 0xffa0a670 <_substr+0x38>;
ffa0a64a:	00 00       	NOP;
ffa0a64c:	00 00       	NOP;
ffa0a64e:	00 00       	NOP;
ffa0a650:	50 99       	R0 = B[P2] (X);
ffa0a652:	00 0c       	CC = R0 == 0x0;
ffa0a654:	0e 18       	IF CC JUMP 0xffa0a670 <_substr+0x38>;
ffa0a656:	02 0d       	CC = R2 <= 0x0;
ffa0a658:	0c 18       	IF CC JUMP 0xffa0a670 <_substr+0x38>;
ffa0a65a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0a65c:	01 08       	CC = R1 == R0;
ffa0a65e:	0f 18       	IF CC JUMP 0xffa0a67c <_substr+0x44>;
ffa0a660:	00 00       	NOP;
ffa0a662:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a664:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0a666:	50 99       	R0 = B[P2] (X);
ffa0a668:	00 0c       	CC = R0 == 0x0;
ffa0a66a:	03 18       	IF CC JUMP 0xffa0a670 <_substr+0x38>;
ffa0a66c:	1e 09       	CC = R6 <= R3;
ffa0a66e:	f7 17       	IF !CC JUMP 0xffa0a65c <_substr+0x24> (BP);
ffa0a670:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0a672:	01 e8 00 00 	UNLINK;
ffa0a676:	40 30       	R0 = P0;
ffa0a678:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0a67a:	10 00       	RTS;
ffa0a67c:	52 30       	R2 = P2;
ffa0a67e:	3b 30       	R7 = R3;
ffa0a680:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0a682:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0a684:	12 32       	P2 = R2;
ffa0a686:	07 32       	P0 = R7;
ffa0a688:	4c 32       	P1 = P4;
ffa0a68a:	6c 32       	P5 = P4;
ffa0a68c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a68e:	15 6c       	P5 += 0x2;		/* (  2) */
ffa0a690:	02 20       	JUMP.S 0xffa0a694 <_substr+0x5c>;
ffa0a692:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0a694:	4b 99       	R3 = B[P1] (X);
ffa0a696:	50 99       	R0 = B[P2] (X);
ffa0a698:	03 08       	CC = R3 == R0;
ffa0a69a:	0e 10       	IF !CC JUMP 0xffa0a6b6 <_substr+0x7e>;
ffa0a69c:	03 0c       	CC = R3 == 0x0;
ffa0a69e:	0c 18       	IF CC JUMP 0xffa0a6b6 <_substr+0x7e>;
ffa0a6a0:	00 00       	NOP;
ffa0a6a2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a6a4:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a6a6:	68 98       	R0 = B[P5++] (X);
ffa0a6a8:	00 0c       	CC = R0 == 0x0;
ffa0a6aa:	f4 17       	IF !CC JUMP 0xffa0a692 <_substr+0x5a> (BP);
ffa0a6ac:	01 e8 00 00 	UNLINK;
ffa0a6b0:	40 30       	R0 = P0;
ffa0a6b2:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0a6b4:	10 00       	RTS;
ffa0a6b6:	12 32       	P2 = R2;
ffa0a6b8:	1f 30       	R3 = R7;
ffa0a6ba:	d6 2f       	JUMP.S 0xffa0a666 <_substr+0x2e>;

ffa0a6bc <_sprintf_int>:
ffa0a6bc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0a6be:	01 0c       	CC = R1 == 0x0;
ffa0a6c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a6c4:	00 34       	I0 = R0;
ffa0a6c6:	11 30       	R2 = R1;
ffa0a6c8:	1a 14       	IF !CC JUMP 0xffa0a6fc <_sprintf_int+0x40> (BP);
ffa0a6ca:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a6ce:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a6d2:	5a 91       	P2 = [P3];
ffa0a6d4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a6d6:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0a6d8:	10 9b       	B[P2] = R0;
ffa0a6da:	88 32       	P1 = I0;
ffa0a6dc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a6de:	0b 52       	R0 = R3 - R1;
ffa0a6e0:	00 32       	P0 = R0;
ffa0a6e2:	5a 91       	P2 = [P3];
ffa0a6e4:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a6e6:	99 08       	CC = R1 < R3;
ffa0a6e8:	82 5a       	P2 = P2 + P0;
ffa0a6ea:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0a6ee:	08 9a       	B[P1++] = R0;
ffa0a6f0:	f7 1f       	IF CC JUMP 0xffa0a6de <_sprintf_int+0x22> (BP);
ffa0a6f2:	01 e8 00 00 	UNLINK;
ffa0a6f6:	03 30       	R0 = R3;
ffa0a6f8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0a6fa:	10 00       	RTS;
ffa0a6fc:	01 0d       	CC = R1 <= 0x0;
ffa0a6fe:	2d 18       	IF CC JUMP 0xffa0a758 <_sprintf_int+0x9c>;
ffa0a700:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a704:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa0a708:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0a70a:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a70e:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa0a712:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa0a714:	b2 e0 20 50 	LSETUP(0xffa0a718 <_sprintf_int+0x5c>, 0xffa0a754 <_sprintf_int+0x98>) LC1 = P5;
ffa0a718:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa0a71c:	59 91 00 00 
ffa0a720:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0a724:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa0a728:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa0a72c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0a730:	0b c4 00 00 	R0 = (A0 += A1);
ffa0a734:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0a738:	10 4d       	R0 >>>= 0x2;
ffa0a73a:	08 52       	R0 = R0 - R1;
ffa0a73c:	00 32       	P0 = R0;
ffa0a73e:	13 32       	P2 = R3;
ffa0a740:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0a742:	40 0d       	CC = P0 <= 0x0;
ffa0a744:	51 5a       	P1 = P1 + P2;
ffa0a746:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa0a748:	92 5a       	P2 = P2 << 0x1;
ffa0a74a:	4a 30       	R1 = P2;
ffa0a74c:	0a 52       	R0 = R2 - R1;
ffa0a74e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a750:	08 9b       	B[P1] = R0;
ffa0a752:	39 18       	IF CC JUMP 0xffa0a7c4 <_sprintf_int+0x108>;
ffa0a754:	50 30       	R2 = P0;
ffa0a756:	c2 2f       	JUMP.S 0xffa0a6da <_sprintf_int+0x1e>;
ffa0a758:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a75a:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa0a75c:	f8 4f       	R0 <<= 0x1f;
ffa0a75e:	90 52       	R2 = R0 - R2;
ffa0a760:	02 0d       	CC = R2 <= 0x0;
ffa0a762:	3c 18       	IF CC JUMP 0xffa0a7da <_sprintf_int+0x11e>;
ffa0a764:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a768:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa0a76c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0a76e:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a772:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa0a776:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa0a778:	b2 e0 1f 50 	LSETUP(0xffa0a77c <_sprintf_int+0xc0>, 0xffa0a7b6 <_sprintf_int+0xfa>) LC1 = P5;
ffa0a77c:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa0a780:	59 91 00 00 
ffa0a784:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0a788:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa0a78c:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa0a790:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0a794:	0b c4 00 00 	R0 = (A0 += A1);
ffa0a798:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0a79c:	10 4d       	R0 >>>= 0x2;
ffa0a79e:	08 52       	R0 = R0 - R1;
ffa0a7a0:	00 32       	P0 = R0;
ffa0a7a2:	61 5a       	P1 = P1 + P4;
ffa0a7a4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0a7a6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa0a7a8:	92 5a       	P2 = P2 << 0x1;
ffa0a7aa:	4a 30       	R1 = P2;
ffa0a7ac:	0a 52       	R0 = R2 - R1;
ffa0a7ae:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a7b0:	40 0d       	CC = P0 <= 0x0;
ffa0a7b2:	08 9b       	B[P1] = R0;
ffa0a7b4:	0f 18       	IF CC JUMP 0xffa0a7d2 <_sprintf_int+0x116>;
ffa0a7b6:	50 30       	R2 = P0;
ffa0a7b8:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa0a7ba:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa0a7bc:	5a 91       	P2 = [P3];
ffa0a7be:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0a7c0:	8a 5a       	P2 = P2 + P1;
ffa0a7c2:	10 9b       	B[P2] = R0;
ffa0a7c4:	03 0d       	CC = R3 <= 0x0;
ffa0a7c6:	8a 17       	IF !CC JUMP 0xffa0a6da <_sprintf_int+0x1e> (BP);
ffa0a7c8:	01 e8 00 00 	UNLINK;
ffa0a7cc:	03 30       	R0 = R3;
ffa0a7ce:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0a7d0:	10 00       	RTS;
ffa0a7d2:	5c 30       	R3 = P4;
ffa0a7d4:	4c 32       	P1 = P4;
ffa0a7d6:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0a7d8:	f2 2f       	JUMP.S 0xffa0a7bc <_sprintf_int+0x100>;
ffa0a7da:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff907248 <_printf_temp> */
ffa0a7de:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0a7e0:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0a7e2:	0b e1 48 72 	P3.L = 0x7248;		/* (29256)	P3=0xff907248 <_printf_temp> */
ffa0a7e6:	eb 2f       	JUMP.S 0xffa0a7bc <_sprintf_int+0x100>;

ffa0a7e8 <_sprintf_hex>:
ffa0a7e8:	10 32       	P2 = R0;
ffa0a7ea:	78 05       	[--SP] = (R7:7);
ffa0a7ec:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a7ee:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a7f2:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa0a7f4:	10 9b       	B[P2] = R0;
ffa0a7f6:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a7fa:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0a7fe:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0a800:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0a802:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa0a804:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa0a806:	b2 e0 09 10 	LSETUP(0xffa0a80a <_sprintf_hex+0x22>, 0xffa0a818 <_sprintf_hex+0x30>) LC1 = P1;
ffa0a80a:	01 30       	R0 = R1;
ffa0a80c:	10 40       	R0 >>>= R2;
ffa0a80e:	18 54       	R0 = R0 & R3;
ffa0a810:	38 09       	CC = R0 <= R7;
ffa0a812:	09 1c       	IF CC JUMP 0xffa0a824 <_sprintf_hex+0x3c> (BP);
ffa0a814:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a816:	10 9a       	B[P2++] = R0;
ffa0a818:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0a81a:	01 e8 00 00 	UNLINK;
ffa0a81e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a820:	38 05       	(R7:7) = [SP++];
ffa0a822:	10 00       	RTS;
ffa0a824:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a826:	f8 2f       	JUMP.S 0xffa0a816 <_sprintf_hex+0x2e>;

ffa0a828 <_strprintf_int>:
ffa0a828:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0a82a:	29 32       	P5 = R1;
ffa0a82c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a830:	0a 30       	R1 = R2;
ffa0a832:	38 30       	R7 = R0;
ffa0a834:	ff e3 44 ff 	CALL 0xffa0a6bc <_sprintf_int>;
ffa0a838:	29 91       	R1 = [P5];
ffa0a83a:	41 50       	R1 = R1 + R0;
ffa0a83c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0a840:	29 93 00 00 
ffa0a844:	01 e8 00 00 	UNLINK;
ffa0a848:	07 30       	R0 = R7;
ffa0a84a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0a84c:	10 00       	RTS;
	...

ffa0a850 <_strprintf_hex>:
ffa0a850:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0a852:	29 32       	P5 = R1;
ffa0a854:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a858:	0a 30       	R1 = R2;
ffa0a85a:	38 30       	R7 = R0;
ffa0a85c:	ff e3 c6 ff 	CALL 0xffa0a7e8 <_sprintf_hex>;
ffa0a860:	29 91       	R1 = [P5];
ffa0a862:	41 50       	R1 = R1 + R0;
ffa0a864:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0a868:	29 93 00 00 
ffa0a86c:	01 e8 00 00 	UNLINK;
ffa0a870:	07 30       	R0 = R7;
ffa0a872:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0a874:	10 00       	RTS;
	...

ffa0a878 <_atoi>:
ffa0a878:	08 32       	P1 = R0;
ffa0a87a:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa0a87c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0a87e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a882:	48 99       	R0 = B[P1] (X);
ffa0a884:	10 08       	CC = R0 == R2;
ffa0a886:	25 18       	IF CC JUMP 0xffa0a8d0 <_atoi+0x58>;
ffa0a888:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0a88a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0a88c:	41 32       	P0 = P1;
ffa0a88e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a890:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0a892:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa0a894:	12 20       	JUMP.S 0xffa0a8b8 <_atoi+0x40>;
ffa0a896:	8b 08       	CC = R3 < R1;
ffa0a898:	16 10       	IF !CC JUMP 0xffa0a8c4 <_atoi+0x4c>;
ffa0a89a:	10 43       	R0 = R2.B (X);
ffa0a89c:	28 32       	P5 = R0;
ffa0a89e:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa0a8a0:	40 99       	R0 = B[P0] (X);
ffa0a8a2:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a8a4:	40 43       	R0 = R0.B (Z);
ffa0a8a6:	aa 5a       	P2 = P2 + P5;
ffa0a8a8:	10 0a       	CC = R0 <= R2 (IU);
ffa0a8aa:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0a8ac:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a8ae:	03 14       	IF !CC JUMP 0xffa0a8b4 <_atoi+0x3c> (BP);
ffa0a8b0:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0a8b2:	92 5a       	P2 = P2 << 0x1;
ffa0a8b4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0a8b6:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0a8b8:	4a 99       	R2 = B[P1] (X);
ffa0a8ba:	02 30       	R0 = R2;
ffa0a8bc:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a8be:	40 43       	R0 = R0.B (Z);
ffa0a8c0:	30 0a       	CC = R0 <= R6 (IU);
ffa0a8c2:	ea 1f       	IF CC JUMP 0xffa0a896 <_atoi+0x1e> (BP);
ffa0a8c4:	42 30       	R0 = P2;
ffa0a8c6:	f8 40       	R0 *= R7;
ffa0a8c8:	01 e8 00 00 	UNLINK;
ffa0a8cc:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0a8ce:	10 00       	RTS;
ffa0a8d0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0a8d2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0a8d4:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0a8d6:	db 2f       	JUMP.S 0xffa0a88c <_atoi+0x14>;

ffa0a8d8 <_udelay>:
ffa0a8d8:	00 0d       	CC = R0 <= 0x0;
ffa0a8da:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a8de:	0b 18       	IF CC JUMP 0xffa0a8f4 <_udelay+0x1c>;
ffa0a8e0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a8e2:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0a8e6:	b2 e0 03 20 	LSETUP(0xffa0a8ea <_udelay+0x12>, 0xffa0a8ec <_udelay+0x14>) LC1 = P2;
ffa0a8ea:	00 00       	NOP;
ffa0a8ec:	00 00       	NOP;
ffa0a8ee:	09 64       	R1 += 0x1;		/* (  1) */
ffa0a8f0:	08 08       	CC = R0 == R1;
ffa0a8f2:	f8 17       	IF !CC JUMP 0xffa0a8e2 <_udelay+0xa> (BP);
ffa0a8f4:	01 e8 00 00 	UNLINK;
ffa0a8f8:	10 00       	RTS;
	...

ffa0a8fc <_spi_delay>:
ffa0a8fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa0a900:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a904:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a908:	00 00       	NOP;
ffa0a90a:	50 95       	R0 = W[P2] (X);
ffa0a90c:	c0 42       	R0 = R0.L (Z);
ffa0a90e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a910:	fc 17       	IF !CC JUMP 0xffa0a908 <_spi_delay+0xc> (BP);
ffa0a912:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a914:	0a 10       	IF !CC JUMP 0xffa0a928 <_spi_delay+0x2c>;
ffa0a916:	00 00       	NOP;
ffa0a918:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a91c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a920:	00 00       	NOP;
ffa0a922:	50 95       	R0 = W[P2] (X);
ffa0a924:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a926:	fd 1f       	IF CC JUMP 0xffa0a920 <_spi_delay+0x24> (BP);
ffa0a928:	01 e8 00 00 	UNLINK;
ffa0a92c:	10 00       	RTS;
	...

ffa0a930 <_spi_write_register>:
ffa0a930:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a934:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0a936:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a93a:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa0a93c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a940:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa0a944:	15 97 00 00 
ffa0a948:	24 00       	SSYNC;
ffa0a94a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa0a94e:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a950:	40 43       	R0 = R0.B (Z);
ffa0a952:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa0a956:	28 97       	W[P5] = R0;
ffa0a958:	ff e3 d2 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0a95c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a960:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a964:	76 43       	R6 = R6.B (Z);
ffa0a966:	57 95       	R7 = W[P2] (X);
ffa0a968:	2e 97       	W[P5] = R6;
ffa0a96a:	ff e3 c9 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0a96e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a972:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a976:	15 97       	W[P2] = R5;
ffa0a978:	24 00       	SSYNC;
ffa0a97a:	7f 43       	R7 = R7.B (Z);
ffa0a97c:	01 e8 00 00 	UNLINK;
ffa0a980:	07 30       	R0 = R7;
ffa0a982:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0a984:	10 00       	RTS;
	...

ffa0a988 <_spi_read_register>:
ffa0a988:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a98c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0a98e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a992:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0a994:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a998:	17 97       	W[P2] = R7;
ffa0a99a:	24 00       	SSYNC;
ffa0a99c:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa0a9a0:	40 43       	R0 = R0.B (Z);
ffa0a9a2:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0a9a6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0a9aa:	20 97       	W[P4] = R0;
ffa0a9ac:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa0a9b0:	ff e3 a6 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0a9b4:	68 95       	R0 = W[P5] (X);
ffa0a9b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a9b8:	20 97       	W[P4] = R0;
ffa0a9ba:	ff e3 a1 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0a9be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a9c2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a9c6:	68 95       	R0 = W[P5] (X);
ffa0a9c8:	17 97       	W[P2] = R7;
ffa0a9ca:	24 00       	SSYNC;
ffa0a9cc:	01 e8 00 00 	UNLINK;
ffa0a9d0:	40 43       	R0 = R0.B (Z);
ffa0a9d2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0a9d4:	10 00       	RTS;
	...

ffa0a9d8 <_spi_read_register_status>:
ffa0a9d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a9dc:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0a9de:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a9e2:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa0a9e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a9e8:	19 32       	P3 = R1;
ffa0a9ea:	16 97       	W[P2] = R6;
ffa0a9ec:	24 00       	SSYNC;
ffa0a9ee:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa0a9f2:	40 43       	R0 = R0.B (Z);
ffa0a9f4:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0a9f8:	20 97       	W[P4] = R0;
ffa0a9fa:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa0a9fe:	ff e3 7f ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0aa02:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa0aa06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aa08:	6f 95       	R7 = W[P5] (X);
ffa0aa0a:	20 97       	W[P4] = R0;
ffa0aa0c:	ff e3 78 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0aa10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0aa14:	68 95       	R0 = W[P5] (X);
ffa0aa16:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0aa1a:	18 9b       	B[P3] = R0;
ffa0aa1c:	16 97       	W[P2] = R6;
ffa0aa1e:	24 00       	SSYNC;
ffa0aa20:	7f 43       	R7 = R7.B (Z);
ffa0aa22:	01 e8 00 00 	UNLINK;
ffa0aa26:	07 30       	R0 = R7;
ffa0aa28:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0aa2a:	10 00       	RTS;

ffa0aa2c <_spi_write_byte>:
ffa0aa2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aa30:	78 05       	[--SP] = (R7:7);
ffa0aa32:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0aa36:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0aa38:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0aa3c:	17 97       	W[P2] = R7;
ffa0aa3e:	24 00       	SSYNC;
ffa0aa40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0aa44:	40 43       	R0 = R0.B (Z);
ffa0aa46:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0aa4a:	10 97       	W[P2] = R0;
ffa0aa4c:	ff e3 58 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0aa50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0aa54:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0aa58:	50 95       	R0 = W[P2] (X);
ffa0aa5a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0aa5e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0aa62:	17 97       	W[P2] = R7;
ffa0aa64:	24 00       	SSYNC;
ffa0aa66:	01 e8 00 00 	UNLINK;
ffa0aa6a:	40 43       	R0 = R0.B (Z);
ffa0aa6c:	38 05       	(R7:7) = [SP++];
ffa0aa6e:	10 00       	RTS;

ffa0aa70 <_spi_write_packet>:
ffa0aa70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aa74:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0aa76:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0aa7a:	38 30       	R7 = R0;
ffa0aa7c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0aa7e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0aa82:	10 97       	W[P2] = R0;
ffa0aa84:	24 00       	SSYNC;
ffa0aa86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0aa8a:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0aa8e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0aa92:	10 97       	W[P2] = R0;
ffa0aa94:	ff e3 34 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0aa98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0aa9c:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0aaa0:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0aaa4:	10 97       	W[P2] = R0;
ffa0aaa6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0aaaa:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0aaac:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0aab0:	10 97       	W[P2] = R0;
ffa0aab2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0aab4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0aab6:	10 97       	W[P2] = R0;
ffa0aab8:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0aaba:	17 93       	[P2] = R7;
ffa0aabc:	24 00       	SSYNC;
ffa0aabe:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0aac2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0aac4:	10 97       	W[P2] = R0;
ffa0aac6:	01 20       	JUMP.S 0xffa0aac8 <_spi_write_packet+0x58>;
	...
ffa0aad0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa0aad4:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa0aad8:	68 95       	R0 = W[P5] (X);
ffa0aada:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0aadc:	f6 1f       	IF CC JUMP 0xffa0aac8 <_spi_write_packet+0x58> (BP);
ffa0aade:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0aae2:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0aae6:	50 95       	R0 = W[P2] (X);
ffa0aae8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0aaea:	ef 17       	IF !CC JUMP 0xffa0aac8 <_spi_write_packet+0x58> (BP);
ffa0aaec:	69 95       	R1 = W[P5] (X);
ffa0aaee:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0aaf0:	08 54       	R0 = R0 & R1;
ffa0aaf2:	00 0c       	CC = R0 == 0x0;
ffa0aaf4:	ea 17       	IF !CC JUMP 0xffa0aac8 <_spi_write_packet+0x58> (BP);
ffa0aaf6:	ff e3 03 ff 	CALL 0xffa0a8fc <_spi_delay>;
ffa0aafa:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0aafc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0ab00:	28 97       	W[P5] = R0;
ffa0ab02:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0ab06:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0ab0a:	10 97       	W[P2] = R0;
ffa0ab0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0ab10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ab12:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0ab16:	10 97       	W[P2] = R0;
ffa0ab18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0ab1c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0ab1e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ab22:	10 97       	W[P2] = R0;
ffa0ab24:	24 00       	SSYNC;
ffa0ab26:	01 e8 00 00 	UNLINK;
ffa0ab2a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0ab2c:	10 00       	RTS;
	...

ffa0ab30 <_spi_write_packet_noDMA>:
ffa0ab30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ab34:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0ab36:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ab3a:	38 30       	R7 = R0;
ffa0ab3c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0ab3e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0ab42:	10 97       	W[P2] = R0;
ffa0ab44:	24 00       	SSYNC;
ffa0ab46:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa0ab4a:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0ab4e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa0ab52:	28 97       	W[P5] = R0;
ffa0ab54:	27 32       	P4 = R7;
ffa0ab56:	ff e3 d3 fe 	CALL 0xffa0a8fc <_spi_delay>;
ffa0ab5a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0ab5c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0ab5e:	60 98       	R0 = B[P4++] (X);
ffa0ab60:	28 97       	W[P5] = R0;
ffa0ab62:	ff e3 cd fe 	CALL 0xffa0a8fc <_spi_delay>;
ffa0ab66:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0ab68:	07 08       	CC = R7 == R0;
ffa0ab6a:	f9 17       	IF !CC JUMP 0xffa0ab5c <_spi_write_packet_noDMA+0x2c> (BP);
ffa0ab6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ab70:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0ab72:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ab76:	10 97       	W[P2] = R0;
ffa0ab78:	24 00       	SSYNC;
ffa0ab7a:	01 e8 00 00 	UNLINK;
ffa0ab7e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0ab80:	10 00       	RTS;
	...

ffa0ab84 <_spi_read_packet>:
ffa0ab84:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0ab86:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0ab8a:	20 32       	P4 = R0;
ffa0ab8c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0ab90:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0ab92:	ff e3 cf fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0ab96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ab9a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0ab9c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0aba0:	10 97       	W[P2] = R0;
ffa0aba2:	24 00       	SSYNC;
ffa0aba4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0aba8:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa0abac:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0abb0:	28 97       	W[P5] = R0;
ffa0abb2:	5d 32       	P3 = P5;
ffa0abb4:	ff e3 a4 fe 	CALL 0xffa0a8fc <_spi_delay>;
ffa0abb8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0abba:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0abbc:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa0abbe:	1e 97       	W[P3] = R6;
ffa0abc0:	ff e3 9e fe 	CALL 0xffa0a8fc <_spi_delay>;
ffa0abc4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0abc6:	68 95       	R0 = W[P5] (X);
ffa0abc8:	20 9a       	B[P4++] = R0;
ffa0abca:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0abcc:	78 43       	R0 = R7.B (Z);
ffa0abce:	08 08       	CC = R0 == R1;
ffa0abd0:	f7 17       	IF !CC JUMP 0xffa0abbe <_spi_read_packet+0x3a> (BP);
ffa0abd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0abd6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0abd8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0abdc:	10 97       	W[P2] = R0;
ffa0abde:	24 00       	SSYNC;
ffa0abe0:	01 e8 00 00 	UNLINK;
ffa0abe4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0abe6:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0abe8:	10 00       	RTS;
	...

ffa0abec <_spi_read_packet_nocheck>:
ffa0abec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0abf0:	78 05       	[--SP] = (R7:7);
ffa0abf2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0abf6:	38 30       	R7 = R0;
ffa0abf8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0abfa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0abfe:	10 97       	W[P2] = R0;
ffa0ac00:	24 00       	SSYNC;
ffa0ac02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ac06:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0ac0a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0ac0e:	10 97       	W[P2] = R0;
ffa0ac10:	ff e3 76 fe 	CALL 0xffa0a8fc <_spi_delay>;
ffa0ac14:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa0ac18:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa0ac1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ac1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0ac22:	08 97       	W[P1] = R0;
ffa0ac24:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0ac28:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0ac2a:	10 97       	W[P2] = R0;
ffa0ac2c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0ac2e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0ac30:	10 97       	W[P2] = R0;
ffa0ac32:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0ac34:	17 93       	[P2] = R7;
ffa0ac36:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0ac3a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0ac3c:	10 97       	W[P2] = R0;
ffa0ac3e:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0ac42:	08 97       	W[P1] = R0;
	...
ffa0ac4c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa0ac50:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa0ac54:	48 95       	R0 = W[P1] (X);
ffa0ac56:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0ac58:	f6 1f       	IF CC JUMP 0xffa0ac44 <_spi_read_packet_nocheck+0x58> (BP);
ffa0ac5a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0ac5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ac60:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0ac64:	10 97       	W[P2] = R0;
ffa0ac66:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0ac68:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0ac6c:	08 97       	W[P1] = R0;
ffa0ac6e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0ac72:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0ac76:	10 97       	W[P2] = R0;
ffa0ac78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0ac7c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0ac7e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ac82:	10 97       	W[P2] = R0;
ffa0ac84:	24 00       	SSYNC;
ffa0ac86:	01 e8 00 00 	UNLINK;
ffa0ac8a:	38 05       	(R7:7) = [SP++];
ffa0ac8c:	10 00       	RTS;
	...

ffa0ac90 <_radio_set_rx>:
ffa0ac90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0ac94:	78 05       	[--SP] = (R7:7);
ffa0ac96:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0ac9a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0ac9c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0aca0:	17 97       	W[P2] = R7;
ffa0aca2:	24 00       	SSYNC;
ffa0aca4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0aca6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0aca8:	ff e3 44 fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0acac:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0acb0:	ff e3 be fe 	CALL 0xffa0aa2c <_spi_write_byte>;
ffa0acb4:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0acb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0acb8:	ff e3 3c fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0acbc:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0acc0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0acc2:	ff e3 37 fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0acc6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0acca:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0accc:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0acd0:	10 97       	W[P2] = R0;
ffa0acd2:	24 00       	SSYNC;
ffa0acd4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0acd8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0acdc:	17 97       	W[P2] = R7;
ffa0acde:	24 00       	SSYNC;
ffa0ace0:	01 e8 00 00 	UNLINK;
ffa0ace4:	38 05       	(R7:7) = [SP++];
ffa0ace6:	10 00       	RTS;

ffa0ace8 <_radio_set_tx>:
ffa0ace8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0acec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0acee:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0acf2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0acf6:	10 97       	W[P2] = R0;
ffa0acf8:	24 00       	SSYNC;
ffa0acfa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0acfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0acfe:	ff e3 19 fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0ad02:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0ad06:	ff e3 93 fe 	CALL 0xffa0aa2c <_spi_write_byte>;
ffa0ad0a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0ad0e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0ad10:	ff e3 10 fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0ad14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ad16:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0ad18:	ff e3 0c fe 	CALL 0xffa0a930 <_spi_write_register>;
ffa0ad1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0ad20:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0ad22:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0ad26:	10 97       	W[P2] = R0;
ffa0ad28:	01 e8 00 00 	UNLINK;
ffa0ad2c:	10 00       	RTS;
	...

ffa0ad30 <_radio_wait_irq>:
ffa0ad30:	78 05       	[--SP] = (R7:7);
ffa0ad32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0ad36:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0ad3a:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0ad3e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa0ad42:	50 95 00 00 
ffa0ad46:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ad48:	25 18       	IF CC JUMP 0xffa0ad92 <_radio_wait_irq+0x62>;
ffa0ad4a:	01 0d       	CC = R1 <= 0x0;
ffa0ad4c:	25 18       	IF CC JUMP 0xffa0ad96 <_radio_wait_irq+0x66>;
ffa0ad4e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0ad50:	04 20       	JUMP.S 0xffa0ad58 <_radio_wait_irq+0x28>;
ffa0ad52:	39 08       	CC = R1 == R7;
ffa0ad54:	10 18       	IF CC JUMP 0xffa0ad74 <_radio_wait_irq+0x44>;
	...
ffa0ad5e:	00 00       	NOP;
ffa0ad60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0ad64:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0ad68:	50 95       	R0 = W[P2] (X);
ffa0ad6a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0ad6c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0ad6e:	f2 17       	IF !CC JUMP 0xffa0ad52 <_radio_wait_irq+0x22> (BP);
ffa0ad70:	39 09       	CC = R1 <= R7;
ffa0ad72:	06 10       	IF !CC JUMP 0xffa0ad7e <_radio_wait_irq+0x4e>;
ffa0ad74:	01 e8 00 00 	UNLINK;
ffa0ad78:	07 30       	R0 = R7;
ffa0ad7a:	38 05       	(R7:7) = [SP++];
ffa0ad7c:	10 00       	RTS;
ffa0ad7e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0ad80:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0ad84:	ff e3 d6 fd 	CALL 0xffa0a930 <_spi_write_register>;
ffa0ad88:	01 e8 00 00 	UNLINK;
ffa0ad8c:	07 30       	R0 = R7;
ffa0ad8e:	38 05       	(R7:7) = [SP++];
ffa0ad90:	10 00       	RTS;
ffa0ad92:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0ad94:	ee 2f       	JUMP.S 0xffa0ad70 <_radio_wait_irq+0x40>;
ffa0ad96:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0ad98:	ee 2f       	JUMP.S 0xffa0ad74 <_radio_wait_irq+0x44>;
	...

ffa0ad9c <_spi_write_register_ver>:
ffa0ad9c:	68 05       	[--SP] = (R7:5);
ffa0ad9e:	47 43       	R7 = R0.B (Z);
ffa0ada0:	4e 43       	R6 = R1.B (Z);
ffa0ada2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0ada6:	0e 30       	R1 = R6;
ffa0ada8:	07 30       	R0 = R7;
ffa0adaa:	ff e3 c3 fd 	CALL 0xffa0a930 <_spi_write_register>;
ffa0adae:	07 30       	R0 = R7;
ffa0adb0:	ff e3 ec fd 	CALL 0xffa0a988 <_spi_read_register>;
ffa0adb4:	45 43       	R5 = R0.B (Z);
ffa0adb6:	2e 08       	CC = R6 == R5;
ffa0adb8:	29 18       	IF CC JUMP 0xffa0ae0a <_spi_write_register_ver+0x6e>;
ffa0adba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa0adbe:	0f 30       	R1 = R7;
ffa0adc0:	00 e1 ec 70 	R0.L = 0x70ec;		/* (28908)	R0=0xff9070ec(-7311124) */
ffa0adc4:	ff e3 b6 fa 	CALL 0xffa0a330 <_printf_int>;
ffa0adc8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070ec(-7311124) */
ffa0adcc:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0add0:	ff e3 94 f9 	CALL 0xffa0a0f8 <_uart_str>;
ffa0add4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907108(-7311096) */
ffa0add8:	0e 30       	R1 = R6;
ffa0adda:	00 e1 00 71 	R0.L = 0x7100;		/* (28928)	R0=0xff907100(-7311104) */
ffa0adde:	ff e3 f7 f9 	CALL 0xffa0a1cc <_printf_hex_byte>;
ffa0ade2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907100(-7311104) */
ffa0ade6:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0adea:	ff e3 87 f9 	CALL 0xffa0a0f8 <_uart_str>;
ffa0adee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907108(-7311096) */
ffa0adf2:	00 e1 0c 71 	R0.L = 0x710c;		/* (28940)	R0=0xff90710c(-7311092) */
ffa0adf6:	0d 30       	R1 = R5;
ffa0adf8:	ff e3 ea f9 	CALL 0xffa0a1cc <_printf_hex_byte>;
ffa0adfc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90710c(-7311092) */
ffa0ae00:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0ae04:	35 30       	R6 = R5;
ffa0ae06:	ff e3 79 f9 	CALL 0xffa0a0f8 <_uart_str>;
ffa0ae0a:	01 e8 00 00 	UNLINK;
ffa0ae0e:	06 30       	R0 = R6;
ffa0ae10:	28 05       	(R7:5) = [SP++];
ffa0ae12:	10 00       	RTS;

ffa0ae14 <_radio_init>:
ffa0ae14:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00d68(-4190872) */
ffa0ae18:	78 05       	[--SP] = (R7:7);
ffa0ae1a:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa0ae1e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0ae20:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0ae24:	0a 97       	W[P1] = R2;
ffa0ae26:	24 00       	SSYNC;
ffa0ae28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0ae2c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0ae2e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0ae32:	11 97       	W[P2] = R1;
ffa0ae34:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0ae38:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0ae3a:	09 97       	W[P1] = R1;
ffa0ae3c:	12 97       	W[P2] = R2;
ffa0ae3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0ae42:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa0ae44:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0ae48:	11 97       	W[P2] = R1;
ffa0ae4a:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa0ae4c:	51 95       	R1 = W[P2] (X);
ffa0ae4e:	19 4a       	BITSET (R1, 0x3);		/* bit  3 */
ffa0ae50:	11 97       	W[P2] = R1;
ffa0ae52:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0ae54:	51 95       	R1 = W[P2] (X);
ffa0ae56:	19 4c       	BITCLR (R1, 0x3);		/* bit  3 */
ffa0ae58:	11 97       	W[P2] = R1;
ffa0ae5a:	52 95       	R2 = W[P2] (X);
ffa0ae5c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0ae5e:	51 56       	R1 = R1 | R2;
ffa0ae60:	11 97       	W[P2] = R1;
ffa0ae62:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa0ae66:	41 43       	R1 = R0.B (Z);
ffa0ae68:	11 0a       	CC = R1 <= R2 (IU);
ffa0ae6a:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0ae6e:	01 06       	IF !CC R0 = R1;
ffa0ae70:	47 43       	R7 = R0.B (Z);
ffa0ae72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa0ae76:	0f 30       	R1 = R7;
ffa0ae78:	00 e1 18 71 	R0.L = 0x7118;		/* (28952)	R0=0xff907118(-7311080) */
ffa0ae7c:	ff e3 5a fa 	CALL 0xffa0a330 <_printf_int>;
ffa0ae80:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907118(-7311080) */
ffa0ae84:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0ae88:	ff e3 38 f9 	CALL 0xffa0a0f8 <_uart_str>;
ffa0ae8c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0ae8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0ae90:	ff e3 50 fd 	CALL 0xffa0a930 <_spi_write_register>;
ffa0ae94:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0ae96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0ae98:	ff e3 82 ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0ae9c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0ae9e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0aea0:	ff e3 7e ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aea4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0aea6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0aea8:	ff e3 7a ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aeac:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0aeae:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0aeb0:	ff e3 76 ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aeb4:	0f 30       	R1 = R7;
ffa0aeb6:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0aeb8:	ff e3 72 ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aebc:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0aebe:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0aec0:	ff e3 6e ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aec4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0aec8:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0aeca:	ff e3 69 ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aece:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0aed0:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0aed2:	ff e3 65 ff 	CALL 0xffa0ad9c <_spi_write_register_ver>;
ffa0aed6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0aeda:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0aede:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0aee2:	10 97       	W[P2] = R0;
ffa0aee4:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0aee6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0aee8:	10 97       	W[P2] = R0;
ffa0aeea:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0aeee:	ff e3 9f fd 	CALL 0xffa0aa2c <_spi_write_byte>;
ffa0aef2:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0aef6:	ff e3 9b fd 	CALL 0xffa0aa2c <_spi_write_byte>;
ffa0aefa:	01 e8 00 00 	UNLINK;
ffa0aefe:	40 43       	R0 = R0.B (Z);
ffa0af00:	38 05       	(R7:7) = [SP++];
ffa0af02:	10 00       	RTS;

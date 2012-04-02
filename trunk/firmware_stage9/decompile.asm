
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
ffa08050:	00 e1 8e 81 	R0.L = 0x818e;		/* (-32370)	R0=0x818e(33166) */
ffa08054:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0818e <_NHANDLER>(-6258290) */
ffa08058:	00 92       	[P0++] = R0;
ffa0805a:	00 e1 94 81 	R0.L = 0x8194;		/* (-32364)	R0=0xffa08194 <EXC_HANDLER>(-6258284) */
ffa0805e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08194 <EXC_HANDLER>(-6258284) */
ffa08062:	00 92       	[P0++] = R0;
ffa08064:	00 92       	[P0++] = R0;
ffa08066:	00 e1 86 81 	R0.L = 0x8186;		/* (-32378)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806e:	00 92       	[P0++] = R0;
ffa08070:	00 e1 12 82 	R0.L = 0x8212;		/* (-32238)	R0=0xffa08212 <_THANDLER>(-6258158) */
ffa08074:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08212 <_THANDLER>(-6258158) */
ffa08078:	00 92       	[P0++] = R0;
ffa0807a:	00 e1 2e 82 	R0.L = 0x822e;		/* (-32210)	R0=0xffa0822e <_RTCHANDLER>(-6258130) */
ffa0807e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0822e <_RTCHANDLER>(-6258130) */
ffa08082:	00 92       	[P0++] = R0;
ffa08084:	00 e1 34 82 	R0.L = 0x8234;		/* (-32204)	R0=0xffa08234 <_I8HANDLER>(-6258124) */
ffa08088:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08234 <_I8HANDLER>(-6258124) */
ffa0808c:	00 92       	[P0++] = R0;
ffa0808e:	00 e1 3a 82 	R0.L = 0x823a;		/* (-32198)	R0=0xffa0823a <_I9HANDLER>(-6258118) */
ffa08092:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0823a <_I9HANDLER>(-6258118) */
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
ffa08148:	08 e1 98 95 	P0.L = 0x9598;		/* (-27240)	P0=0xffa09598 <_main> */
ffa0814c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09598 <_main> */
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
ffa08180:	00 e3 3a 09 	CALL 0xffa093f4 <_exception_report>;
ffa08184:	12 00       	RTX;

ffa08186 <_HWHANDLER>:
ffa08186:	c1 31       	R0 = SEQSTAT;
ffa08188:	cc 31       	R1 = RETX;
ffa0818a:	fe 2f       	JUMP.S 0xffa08186 <_HWHANDLER>;
ffa0818c:	11 00       	RTI;

ffa0818e <_NHANDLER>:
ffa0818e:	00 e3 f3 09 	CALL 0xffa09574 <_nmi_report>;
ffa08192:	12 00       	RTX;

ffa08194 <EXC_HANDLER>:
ffa08194:	00 00       	NOP;
ffa08196:	00 00       	NOP;
ffa08198:	00 00       	NOP;
ffa0819a:	cc 31       	R1 = RETX;
ffa0819c:	fc 2f       	JUMP.S 0xffa08194 <EXC_HANDLER>;
ffa0819e:	4d 01       	[--SP] = P5;
ffa081a0:	0d e1 04 70 	P5.L = 0x7004;		/* (28676)	P5=0x7004 */
ffa081a4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff907004 <_g_excregs> */
ffa081a8:	28 92       	[P5++] = R0;
ffa081aa:	29 92       	[P5++] = R1;
ffa081ac:	2a 92       	[P5++] = R2;
ffa081ae:	2b 92       	[P5++] = R3;
ffa081b0:	2c 92       	[P5++] = R4;
ffa081b2:	2d 92       	[P5++] = R5;
ffa081b4:	2e 92       	[P5++] = R6;
ffa081b6:	2f 92       	[P5++] = R7;
ffa081b8:	68 92       	[P5++] = P0;
ffa081ba:	69 92       	[P5++] = P1;
ffa081bc:	6a 92       	[P5++] = P2;
ffa081be:	6b 92       	[P5++] = P3;
ffa081c0:	6c 92       	[P5++] = P4;
ffa081c2:	65 32       	P4 = P5;
ffa081c4:	75 90       	P5 = [SP++];
ffa081c6:	65 92       	[P4++] = P5;
ffa081c8:	80 30       	R0 = I0;
ffa081ca:	20 92       	[P4++] = R0;
ffa081cc:	c0 30       	R0 = B0;
ffa081ce:	20 92       	[P4++] = R0;
ffa081d0:	c4 30       	R0 = L0;
ffa081d2:	20 92       	[P4++] = R0;
ffa081d4:	81 30       	R0 = I1;
ffa081d6:	20 92       	[P4++] = R0;
ffa081d8:	c1 30       	R0 = B1;
ffa081da:	20 92       	[P4++] = R0;
ffa081dc:	c5 30       	R0 = L1;
ffa081de:	20 92       	[P4++] = R0;
ffa081e0:	82 30       	R0 = I2;
ffa081e2:	20 92       	[P4++] = R0;
ffa081e4:	c2 30       	R0 = B2;
ffa081e6:	20 92       	[P4++] = R0;
ffa081e8:	c6 30       	R0 = L2;
ffa081ea:	20 92       	[P4++] = R0;
ffa081ec:	83 30       	R0 = I3;
ffa081ee:	20 92       	[P4++] = R0;
ffa081f0:	c3 30       	R0 = B3;
ffa081f2:	20 92       	[P4++] = R0;
ffa081f4:	c7 30       	R0 = L3;
ffa081f6:	20 92       	[P4++] = R0;
ffa081f8:	84 30       	R0 = M0;
ffa081fa:	20 92       	[P4++] = R0;
ffa081fc:	85 30       	R0 = M1;
ffa081fe:	20 92       	[P4++] = R0;
ffa08200:	86 30       	R0 = M2;
ffa08202:	20 92       	[P4++] = R0;
ffa08204:	87 30       	R0 = M3;
ffa08206:	20 92       	[P4++] = R0;
ffa08208:	c1 31       	R0 = SEQSTAT;
ffa0820a:	cc 31       	R1 = RETX;
ffa0820c:	00 e3 f4 08 	CALL 0xffa093f4 <_exception_report>;
ffa08210:	12 00       	RTX;

ffa08212 <_THANDLER>:
ffa08212:	4a 01       	[--SP] = P2;
ffa08214:	40 01       	[--SP] = R0;
ffa08216:	41 01       	[--SP] = R1;
ffa08218:	66 01       	[--SP] = ASTAT;
ffa0821a:	10 91       	R0 = [P2];
ffa0821c:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa08220:	08 50       	R0 = R0 + R1;
ffa08222:	10 93       	[P2] = R0;
ffa08224:	26 01       	ASTAT = [SP++];
ffa08226:	31 90       	R1 = [SP++];
ffa08228:	30 90       	R0 = [SP++];
ffa0822a:	72 90       	P2 = [SP++];
ffa0822c:	11 00       	RTI;

ffa0822e <_RTCHANDLER>:
ffa0822e:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa08232:	a5 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08234 <_I8HANDLER>:
ffa08234:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa08238:	a2 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa0823a <_I9HANDLER>:
ffa0823a:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa0823e:	9f 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08240 <_atexit>:
ffa08240:	10 00       	RTS;
ffa08242:	00 00       	NOP;
ffa08244:	00 00       	NOP;
	...

ffa08248 <_get_asm>:
ffa08248:	68 b9       	P0 = [FP -0x28];
ffa0824a:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa0824e:	8f b4       	W[P1 + 0x4] = R7;
ffa08250:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08254:	0f b5       	W[P1 + 0x8] = R7;

ffa08256 <wait_samples>:
ffa08256:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08258:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa0825a:	fe 1b       	IF CC JUMP 0xffa08256 <wait_samples>;
ffa0825c:	00 95       	R0 = W[P0] (Z);
ffa0825e:	01 95       	R1 = W[P0] (Z);
ffa08260:	d2 b8       	R2 = [FP -0x4c];
ffa08262:	81 4f       	R1 <<= 0x10;
ffa08264:	08 56       	R0 = R0 | R1;
ffa08266:	90 54       	R2 = R0 & R2;
ffa08268:	07 9c       	R7 = [I0++];
ffa0826a:	8f b5       	W[P1 + 0xc] = R7;
ffa0826c:	00 00       	NOP;
ffa0826e:	00 00       	NOP;
ffa08270:	81 ce 0a 84 	R2 = R2 << 0x1 (V) || R5 = [I0++] || NOP;
ffa08274:	05 9c 00 00 
ffa08278:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa0827c:	09 9c 06 9c 
ffa08280:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08284:	00 00 00 00 
ffa08288:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa0828c:	61 9e 00 00 
ffa08290:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08294:	89 9d 00 00 
ffa08298:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa0829c:	02 9c 12 9e 
ffa082a0:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082a4:	89 9d 02 9c 
ffa082a8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082ac:	89 9d 02 9c 
ffa082b0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082b4:	89 9d 02 9c 
ffa082b8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082bc:	89 9d 02 9c 
ffa082c0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082c4:	89 9d 02 9c 
ffa082c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082cc:	89 9d 02 9c 
ffa082d0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082d4:	89 9d 02 9c 
ffa082d8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082dc:	89 9d 02 9c 
ffa082e0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082e4:	89 9d 02 9c 
ffa082e8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082ec:	89 9d 02 9c 
ffa082f0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082f4:	89 9d 02 9c 
ffa082f8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082fc:	89 9d 02 9c 
ffa08300:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08304:	89 9d 02 9c 
ffa08308:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0830c:	89 9d 02 9c 
ffa08310:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08314:	09 9c 05 9c 
ffa08318:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa0831c:	74 9e 10 9e 
ffa08320:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08324:	69 9e 17 9e 
ffa08328:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa0832c:	09 9c 02 9d 
ffa08330:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08334:	00 00 00 00 
ffa08338:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa0833c:	79 9e 00 00 
ffa08340:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08344:	0d 9c a4 9f 
ffa08348:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa0834c:	83 c6 40 00 	A0 = A0 << 0x8;
ffa08350:	83 c6 40 10 	A1 = A1 << 0x8;
ffa08354:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08358:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa0835c:	06 9c 00 00 
ffa08360:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa08364:	06 9c 00 00 
ffa08368:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa0836c:	00 00 00 00 
ffa08370:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa08374:	00 00 00 00 
ffa08378:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa0837c:	05 9c 09 9c 
ffa08380:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08384:	13 9e 00 00 
ffa08388:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0838c:	05 9c 0a 9c 
ffa08390:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08394:	05 9c 0b 9c 
ffa08398:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0839c:	05 9c 0c 9c 
ffa083a0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa083a4:	05 9c 17 9e 
ffa083a8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa083ac:	11 9e 00 00 
ffa083b0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa083b4:	05 9c 10 9e 
ffa083b8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa083bc:	05 9c 13 9e 
ffa083c0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa083c4:	05 9c 09 9c 
ffa083c8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa083cc:	05 9c 0a 9c 
ffa083d0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa083d4:	05 9c 00 00 
ffa083d8:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa083dc:	05 9c 00 00 
ffa083e0:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa083e4:	10 9e 00 00 
ffa083e8:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa083ec:	11 9e 00 00 
ffa083f0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa083f4:	05 9c 09 9c 
ffa083f8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa083fc:	05 9c 0a 9c 
ffa08400:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08404:	05 9c 0b 9c 
ffa08408:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0840c:	05 9c 0c 9c 
ffa08410:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08414:	05 9c 17 9e 
ffa08418:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0841c:	11 9e 00 00 
ffa08420:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08424:	05 9c 10 9e 
ffa08428:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa0842c:	05 9c 13 9e 
ffa08430:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08434:	05 9c 09 9c 
ffa08438:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0843c:	05 9c 0a 9c 
ffa08440:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08444:	05 9c 00 00 
ffa08448:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa0844c:	05 9c 00 00 
ffa08450:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08454:	07 9c 10 9e 
ffa08458:	81 ce 88 41 	R0 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa0845c:	05 9c 11 9e 
ffa08460:	be 55       	R6 = R6 & R7;
ffa08462:	28 54       	R0 = R0 & R5;
ffa08464:	86 57       	R6 = R6 | R0;
ffa08466:	76 bb       	[FP -0x24] = R6;
ffa08468:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa0846c:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08470:	d2 b8       	R2 = [FP -0x4c];
ffa08472:	81 4f       	R1 <<= 0x10;
ffa08474:	08 56       	R0 = R0 | R1;
ffa08476:	90 54       	R2 = R0 & R2;
ffa08478:	81 c6 0a 84 	R2 = R2 << 0x1 (V);
ffa0847c:	05 9c       	R5 = [I0++];
ffa0847e:	00 00       	NOP;
ffa08480:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08484:	09 9c 06 9c 
ffa08488:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa0848c:	00 00 00 00 
ffa08490:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08494:	61 9e 00 00 
ffa08498:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa0849c:	89 9d 00 00 
ffa084a0:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa084a4:	02 9c 12 9e 
ffa084a8:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084ac:	89 9d 02 9c 
ffa084b0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084b4:	89 9d 02 9c 
ffa084b8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084bc:	89 9d 02 9c 
ffa084c0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084c4:	89 9d 02 9c 
ffa084c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084cc:	89 9d 02 9c 
ffa084d0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084d4:	89 9d 02 9c 
ffa084d8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084dc:	89 9d 02 9c 
ffa084e0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084e4:	89 9d 02 9c 
ffa084e8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084ec:	89 9d 02 9c 
ffa084f0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084f4:	89 9d 02 9c 
ffa084f8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084fc:	89 9d 02 9c 
ffa08500:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08504:	89 9d 02 9c 
ffa08508:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0850c:	89 9d 02 9c 
ffa08510:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08514:	89 9d 02 9c 
ffa08518:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa0851c:	09 9c 05 9c 
ffa08520:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08524:	74 9e 10 9e 
ffa08528:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa0852c:	69 9e 17 9e 
ffa08530:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08534:	09 9c 02 9d 
ffa08538:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa0853c:	00 00 00 00 
ffa08540:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08544:	79 9e 00 00 
ffa08548:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa0854c:	0d 9c a4 9f 
ffa08550:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08554:	83 c6 40 00 	A0 = A0 << 0x8;
ffa08558:	83 c6 40 10 	A1 = A1 << 0x8;
ffa0855c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08560:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa08564:	06 9c 00 00 
ffa08568:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa0856c:	06 9c 00 00 
ffa08570:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa08574:	00 00 00 00 
ffa08578:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa0857c:	00 00 00 00 
ffa08580:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa08584:	05 9c 09 9c 
ffa08588:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa0858c:	13 9e 00 00 
ffa08590:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08594:	05 9c 0a 9c 
ffa08598:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa0859c:	05 9c 0b 9c 
ffa085a0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa085a4:	05 9c 0c 9c 
ffa085a8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa085ac:	05 9c 17 9e 
ffa085b0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa085b4:	11 9e 00 00 
ffa085b8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa085bc:	05 9c 10 9e 
ffa085c0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa085c4:	05 9c 13 9e 
ffa085c8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa085cc:	05 9c 09 9c 
ffa085d0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa085d4:	05 9c 0a 9c 
ffa085d8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa085dc:	05 9c 00 00 
ffa085e0:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa085e4:	05 9c 00 00 
ffa085e8:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa085ec:	10 9e 00 00 
ffa085f0:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa085f4:	11 9e 00 00 
ffa085f8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa085fc:	05 9c 09 9c 
ffa08600:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08604:	05 9c 0a 9c 
ffa08608:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa0860c:	05 9c 0b 9c 
ffa08610:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08614:	05 9c 0c 9c 
ffa08618:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0861c:	05 9c 17 9e 
ffa08620:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08624:	11 9e 00 00 
ffa08628:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa0862c:	05 9c 10 9e 
ffa08630:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08634:	05 9c 13 9e 
ffa08638:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa0863c:	05 9c 09 9c 
ffa08640:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08644:	05 9c 0a 9c 
ffa08648:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa0864c:	05 9c 00 00 
ffa08650:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08654:	05 9c 00 00 
ffa08658:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa0865c:	07 9c 10 9e 
ffa08660:	81 ce 88 41 	R0 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa08664:	05 9c 11 9e 
ffa08668:	be 55       	R6 = R6 & R7;
ffa0866a:	28 54       	R0 = R0 & R5;
ffa0866c:	86 57       	R6 = R6 | R0;
ffa0866e:	77 b9       	R7 = [FP -0x24];
ffa08670:	37 56       	R0 = R7 | R6;
ffa08672:	06 9c       	R6 = [I0++];
ffa08674:	06 32       	P0 = R6;
ffa08676:	3d b9       	P5 = [FP -0x34];
ffa08678:	19 b9       	P1 = [FP -0x3c];
ffa0867a:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa0867e:	40 43       	R0 = R0.B (Z);
ffa08680:	45 5b       	P5 = P5 + P0;
ffa08682:	29 99       	R1 = B[P5] (Z);
ffa08684:	41 56       	R1 = R1 | R0;
ffa08686:	01 32       	P0 = R1;
ffa08688:	29 9b       	B[P5] = R1;
ffa0868a:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa0868c:	5d 5b       	P5 = P5 + P3;
ffa0868e:	41 5a       	P1 = P1 + P0;
ffa08690:	0a 99       	R2 = B[P1] (Z);
ffa08692:	2a 9b       	B[P5] = R2;
ffa08694:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08696:	06 08       	CC = R6 == R0;
ffa08698:	32 14       	IF !CC JUMP 0xffa086fc <end_txchan> (BP);
ffa0869a:	98 b9       	P0 = [FP -0x1c];
ffa0869c:	00 00       	NOP;
ffa0869e:	00 00       	NOP;
ffa086a0:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa086a4:	a9 b9 18 9c 
ffa086a8:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa086ac:	bb b9 19 9c 
ffa086b0:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa086b4:	cd b9 1c 9c 
ffa086b8:	28 34       	M1 = R0;
ffa086ba:	31 34       	M2 = R1;
ffa086bc:	00 99       	R0 = B[P0] (Z);
ffa086be:	09 99       	R1 = B[P1] (Z);
ffa086c0:	1a 99       	R2 = B[P3] (Z);
ffa086c2:	2b 99       	R3 = B[P5] (Z);
ffa086c4:	20 9a       	B[P4++] = R0;
ffa086c6:	21 9a       	B[P4++] = R1;
ffa086c8:	22 9a       	B[P4++] = R2;
ffa086ca:	23 9a       	B[P4++] = R3;
ffa086cc:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa086ce:	3c 08       	CC = R4 == R7;
ffa086d0:	13 14       	IF !CC JUMP 0xffa086f6 <end_txchan_qs> (BP);
ffa086d2:	1f 9c       	R7 = [I3++];
ffa086d4:	1e 9c       	R6 = [I3++];
ffa086d6:	2e 32       	P5 = R6;
ffa086d8:	f5 b9       	R5 = [FP -0x4];
ffa086da:	0d 64       	R5 += 0x1;		/* (  1) */
ffa086dc:	f5 bb       	[FP -0x4] = R5;
ffa086de:	f5 b8       	R5 = [FP -0x44];
ffa086e0:	28 90       	R0 = [P5++];
ffa086e2:	29 90       	R1 = [P5++];
ffa086e4:	38 56       	R0 = R0 | R7;
ffa086e6:	69 56       	R1 = R1 | R5;
ffa086e8:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa086ea:	45 5b       	P5 = P5 + P0;
ffa086ec:	20 92       	[P4++] = R0;
ffa086ee:	21 92       	[P4++] = R1;
ffa086f0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa086f2:	ac 92       	[P5--] = R4;
ffa086f4:	ac 92       	[P5--] = R4;

ffa086f6 <end_txchan_qs>:
ffa086f6:	7c 30       	R7 = P4;
ffa086f8:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa086fa:	27 32       	P4 = R7;

ffa086fc <end_txchan>:
ffa086fc:	5b b9       	P3 = [FP -0x2c];
ffa086fe:	49 b9       	P1 = [FP -0x30];
ffa08700:	10 00       	RTS;
ffa08702:	00 00       	NOP;
ffa08704:	00 00       	NOP;
	...

ffa08708 <_clearirq_asm>:
ffa08708:	67 01       	[--SP] = RETS;
ffa0870a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0870c:	8f b4       	W[P1 + 0x4] = R7;
ffa0870e:	ff e3 9d fd 	CALL 0xffa08248 <_get_asm>;
ffa08712:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08714:	1e 97       	W[P3] = R6;
ffa08716:	ff e3 99 fd 	CALL 0xffa08248 <_get_asm>;
ffa0871a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0871e:	1e 97       	W[P3] = R6;
ffa08720:	ff e3 94 fd 	CALL 0xffa08248 <_get_asm>;
ffa08724:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08726:	0f b5       	W[P1 + 0x8] = R7;
ffa08728:	ff e3 90 fd 	CALL 0xffa08248 <_get_asm>;
ffa0872c:	27 01       	RETS = [SP++];
ffa0872e:	10 00       	RTS;

ffa08730 <_waitirq_asm>:
ffa08730:	67 01       	[--SP] = RETS;
ffa08732:	27 e1 b6 00 	R7 = 0xb6 (X);		/*		R7=0xb6(182) */
ffa08736:	87 bb       	[FP -0x20] = R7;

ffa08738 <waitirq_loop>:
ffa08738:	0e 95       	R6 = W[P1] (Z);
ffa0873a:	1e 49       	CC = BITTST (R6, 0x3);		/* bit  3 */
ffa0873c:	0c 10       	IF !CC JUMP 0xffa08754 <waitirq_end>;
ffa0873e:	ff e3 85 fd 	CALL 0xffa08248 <_get_asm>;
ffa08742:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08744:	87 b9       	R7 = [FP -0x20];
ffa08746:	3e 08       	CC = R6 == R7;
ffa08748:	06 18       	IF CC JUMP 0xffa08754 <waitirq_end>;
ffa0874a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0874c:	87 bb       	[FP -0x20] = R7;
ffa0874e:	ff e3 7d fd 	CALL 0xffa08248 <_get_asm>;
ffa08752:	f3 2f       	JUMP.S 0xffa08738 <waitirq_loop>;

ffa08754 <waitirq_end>:
ffa08754:	ff e3 7a fd 	CALL 0xffa08248 <_get_asm>;
ffa08758:	27 01       	RETS = [SP++];
ffa0875a:	10 00       	RTS;
ffa0875c:	00 00       	NOP;
	...

ffa08760 <_clearfifos_asm>:
ffa08760:	67 01       	[--SP] = RETS;
ffa08762:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08764:	8f b4       	W[P1 + 0x4] = R7;
ffa08766:	ff e3 71 fd 	CALL 0xffa08248 <_get_asm>;
ffa0876a:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0876e:	1e 97       	W[P3] = R6;
ffa08770:	ff e3 6c fd 	CALL 0xffa08248 <_get_asm>;
ffa08774:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08776:	0f b5       	W[P1 + 0x8] = R7;
ffa08778:	ff e3 68 fd 	CALL 0xffa08248 <_get_asm>;
ffa0877c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0877e:	8f b4       	W[P1 + 0x4] = R7;
ffa08780:	ff e3 64 fd 	CALL 0xffa08248 <_get_asm>;
ffa08784:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08788:	1e 97       	W[P3] = R6;
ffa0878a:	ff e3 5f fd 	CALL 0xffa08248 <_get_asm>;
ffa0878e:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08790:	0f b5       	W[P1 + 0x8] = R7;
ffa08792:	ff e3 5b fd 	CALL 0xffa08248 <_get_asm>;
ffa08796:	27 01       	RETS = [SP++];
ffa08798:	10 00       	RTS;
ffa0879a:	00 00       	NOP;
ffa0879c:	00 00       	NOP;
	...

ffa087a0 <_radio_bidi_asm>:
ffa087a0:	0d e1 14 05 	P5.L = 0x514;		/* (1300)	P5=0xff900514 */
ffa087a4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00514(-4193004) */
ffa087a8:	80 e1 04 00 	R0 = 0x4 (Z);		/*		R0=0x4(  4) */
ffa087ac:	28 97       	W[P5] = R0;
ffa087ae:	0f e1 00 6f 	FP.L = 0x6f00;		/* (28416)	FP=0x6f00 */
ffa087b2:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff906f00 */
ffa087b6:	08 e1 18 08 	P0.L = 0x818;		/* (2072)	P0=0xffff0818(-63464) */
ffa087ba:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00818(-4192232) */
ffa087be:	68 bb       	[FP -0x28] = P0;
ffa087c0:	09 e1 00 07 	P1.L = 0x700;		/* (1792)	P1=0xffc00700(-4192512) */
ffa087c4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa087c8:	49 bb       	[FP -0x30] = P1;
ffa087ca:	0a e1 00 70 	P2.L = 0x7000;		/* (28672)	P2=0x7000 */
ffa087ce:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff807000 */
ffa087d2:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0x50c */
ffa087d6:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0050c(-4193012) */
ffa087da:	5b bb       	[FP -0x2c] = P3;
ffa087dc:	0c e1 00 70 	P4.L = 0x7000;		/* (28672)	P4=0x7000 */
ffa087e0:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff807000 */
ffa087e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087e6:	f0 bb       	[FP -0x4] = R0;
ffa087e8:	f0 ba       	[FP -0x44] = R0;
ffa087ea:	e0 bb       	[FP -0x8] = R0;
ffa087ec:	d0 bb       	[FP -0xc] = R0;
ffa087ee:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0x6000(24576) */
ffa087f2:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806000(-8364032) */
ffa087f6:	30 bb       	[FP -0x34] = R0;
ffa087f8:	00 e1 20 60 	R0.L = 0x6020;		/* (24608)	R0=0xff806020(-8364000) */
ffa087fc:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806020(-8364000) */
ffa08800:	20 bb       	[FP -0x38] = R0;
ffa08802:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08804:	e0 ba       	[FP -0x48] = R0;
ffa08806:	00 e1 00 61 	R0.L = 0x6100;		/* (24832)	R0=0x6100(24832) */
ffa0880a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806100(-8363776) */
ffa0880e:	10 bb       	[FP -0x3c] = R0;
ffa08810:	00 e1 00 62 	R0.L = 0x6200;		/* (25088)	R0=0xff806200(-8363520) */
ffa08814:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806200(-8363520) */
ffa08818:	82 c6 f0 81 	R0 = R0 >> 0x2;
ffa0881c:	00 bb       	[FP -0x40] = R0;
ffa0881e:	00 e1 ff 0f 	R0.L = 0xfff;		/* (4095)	R0=0xff800fff(-8384513) */
ffa08822:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfff0fff(268374015) */
ffa08826:	d0 ba       	[FP -0x4c] = R0;
ffa08828:	00 e1 15 40 	R0.L = 0x4015;		/* (16405)	R0=0xfff4015(268386325) */
ffa0882c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804015(-8372203) */
ffa08830:	90 bb       	[FP -0x1c] = R0;
ffa08832:	00 e1 17 40 	R0.L = 0x4017;		/* (16407)	R0=0xff804017(-8372201) */
ffa08836:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804017(-8372201) */
ffa0883a:	a0 bb       	[FP -0x18] = R0;
ffa0883c:	00 e1 55 40 	R0.L = 0x4055;		/* (16469)	R0=0xff804055(-8372139) */
ffa08840:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804055(-8372139) */
ffa08844:	b0 bb       	[FP -0x14] = R0;
ffa08846:	00 e1 57 40 	R0.L = 0x4057;		/* (16471)	R0=0xff804057(-8372137) */
ffa0884a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804057(-8372137) */
ffa0884e:	c0 bb       	[FP -0x10] = R0;
ffa08850:	20 e1 93 01 	R0 = 0x193 (X);		/*		R0=0x193(403) */
ffa08854:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa08858:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0885a:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa0885e:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08862:	0f b5       	W[P1 + 0x8] = R7;
ffa08864:	24 00       	SSYNC;
ffa08866:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0886a:	8f b4       	W[P1 + 0x4] = R7;
ffa0886c:	24 00       	SSYNC;
ffa0886e:	00 e3 21 01 	CALL 0xffa08ab0 <_init6>;
ffa08872:	0d e1 00 60 	P5.L = 0x6000;		/* (24576)	P5=0xffc06000(-4169728) */
ffa08876:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806000 */
ffa0887a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0887c:	28 92       	[P5++] = R0;
ffa0887e:	28 92       	[P5++] = R0;
ffa08880:	28 92       	[P5++] = R0;
ffa08882:	28 92       	[P5++] = R0;
ffa08884:	28 92       	[P5++] = R0;
ffa08886:	28 92       	[P5++] = R0;
ffa08888:	28 92       	[P5++] = R0;
ffa0888a:	28 92       	[P5++] = R0;
ffa0888c:	00 e3 42 02 	CALL 0xffa08d10 <_enc_create>;
ffa08890:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08894:	0f b5       	W[P1 + 0x8] = R7;
ffa08896:	24 00       	SSYNC;
ffa08898:	0d e1 20 09 	P5.L = 0x920;		/* (2336)	P5=0xff800920 */
ffa0889c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00920(-4191968) */
ffa088a0:	00 e1 01 04 	R0.L = 0x401;		/* (1025)	R0=0x401(1025) */
ffa088a4:	28 97       	W[P5] = R0;
ffa088a6:	0d e1 20 08 	P5.L = 0x820;		/* (2080)	P5=0xffc00820(-4192224) */
ffa088aa:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00820(-4192224) */
ffa088ae:	00 e1 03 06 	R0.L = 0x603;		/* (1539)	R0=0x603(1539) */
ffa088b2:	28 97       	W[P5] = R0;

ffa088b4 <radio_loop>:
ffa088b4:	ff e3 ca fc 	CALL 0xffa08248 <_get_asm>;
ffa088b8:	f5 b9       	R5 = [FP -0x4];
ffa088ba:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa088bc:	fc 13       	IF !CC JUMP 0xffa088b4 <radio_loop>;
ffa088be:	ff e3 c5 fc 	CALL 0xffa08248 <_get_asm>;
ffa088c2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa088c4:	f5 bb       	[FP -0x4] = R5;
ffa088c6:	ff e3 4d ff 	CALL 0xffa08760 <_clearfifos_asm>;
ffa088ca:	ff e3 1f ff 	CALL 0xffa08708 <_clearirq_asm>;
ffa088ce:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa088d0:	a2 e0 24 50 	LSETUP(0xffa088d4 <wp_top>, 0xffa08918 <wp_bot>) LC0 = P5;

ffa088d4 <wp_top>:
ffa088d4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa088d6:	8f b4       	W[P1 + 0x4] = R7;
ffa088d8:	ff e3 b8 fc 	CALL 0xffa08248 <_get_asm>;
ffa088dc:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa088e0:	1e 97       	W[P3] = R6;
ffa088e2:	ff e3 b3 fc 	CALL 0xffa08248 <_get_asm>;
ffa088e6:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa088e8:	b2 e0 06 50 	LSETUP(0xffa088ec <pb_top>, 0xffa088f4 <pb_bot>) LC1 = P5;

ffa088ec <pb_top>:
ffa088ec:	16 98       	R6 = B[P2++] (Z);
ffa088ee:	1e 97       	W[P3] = R6;
ffa088f0:	ff e3 ac fc 	CALL 0xffa08248 <_get_asm>;

ffa088f4 <pb_bot>:
ffa088f4:	00 00       	NOP;
ffa088f6:	7a 30       	R7 = P2;
ffa088f8:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa088fa:	17 32       	P2 = R7;
ffa088fc:	ff e3 a6 fc 	CALL 0xffa08248 <_get_asm>;
ffa08900:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa08902:	0f b5       	W[P1 + 0x8] = R7;
ffa08904:	ff e3 a2 fc 	CALL 0xffa08248 <_get_asm>;
ffa08908:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa0890a:	b0 31       	R6 = LC0;
ffa0890c:	37 08       	CC = R7 == R6;
ffa0890e:	05 18       	IF CC JUMP 0xffa08918 <wp_bot>;
ffa08910:	ff e3 10 ff 	CALL 0xffa08730 <_waitirq_asm>;
ffa08914:	ff e3 fa fe 	CALL 0xffa08708 <_clearirq_asm>;

ffa08918 <wp_bot>:
ffa08918:	00 00       	NOP;
ffa0891a:	ff e3 0b ff 	CALL 0xffa08730 <_waitirq_asm>;
ffa0891e:	ff e3 f5 fe 	CALL 0xffa08708 <_clearirq_asm>;
ffa08922:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08924:	8f b4       	W[P1 + 0x4] = R7;
ffa08926:	ff e3 91 fc 	CALL 0xffa08248 <_get_asm>;
ffa0892a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0892c:	8f b4       	W[P1 + 0x4] = R7;
ffa0892e:	ff e3 8d fc 	CALL 0xffa08248 <_get_asm>;
ffa08932:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08936:	1e 97       	W[P3] = R6;
ffa08938:	ff e3 88 fc 	CALL 0xffa08248 <_get_asm>;
ffa0893c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0893e:	0f b5       	W[P1 + 0x8] = R7;
ffa08940:	ff e3 84 fc 	CALL 0xffa08248 <_get_asm>;
ffa08944:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08946:	8f b4       	W[P1 + 0x4] = R7;
ffa08948:	ff e3 80 fc 	CALL 0xffa08248 <_get_asm>;
ffa0894c:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa0894e:	1e 97       	W[P3] = R6;
ffa08950:	ff e3 7c fc 	CALL 0xffa08248 <_get_asm>;
ffa08954:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa08956:	1e 97       	W[P3] = R6;
ffa08958:	ff e3 78 fc 	CALL 0xffa08248 <_get_asm>;
ffa0895c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0895e:	0f b5       	W[P1 + 0x8] = R7;
ffa08960:	ff e3 74 fc 	CALL 0xffa08248 <_get_asm>;
ffa08964:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08966:	0f b5       	W[P1 + 0x8] = R7;
ffa08968:	ff e3 70 fc 	CALL 0xffa08248 <_get_asm>;
ffa0896c:	ff e3 e2 fe 	CALL 0xffa08730 <_waitirq_asm>;
ffa08970:	0f 95       	R7 = W[P1] (Z);
ffa08972:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa08974:	63 18       	IF CC JUMP 0xffa08a3a <no_rxpacket>;
ffa08976:	ff e3 c9 fe 	CALL 0xffa08708 <_clearirq_asm>;
ffa0897a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0897c:	8f b4       	W[P1 + 0x4] = R7;
ffa0897e:	ff e3 65 fc 	CALL 0xffa08248 <_get_asm>;
ffa08982:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08984:	8f b4       	W[P1 + 0x4] = R7;
ffa08986:	ff e3 61 fc 	CALL 0xffa08248 <_get_asm>;
ffa0898a:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa0898e:	1e 97       	W[P3] = R6;
ffa08990:	ff e3 5c fc 	CALL 0xffa08248 <_get_asm>;
ffa08994:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08996:	a2 e0 4b 50 	LSETUP(0xffa0899a <rp_top>, 0xffa08a2c <rp_bot>) LC0 = P5;

ffa0899a <rp_top>:
ffa0899a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0899c:	e7 bb       	[FP -0x8] = R7;
ffa0899e:	d7 bb       	[FP -0xc] = R7;
ffa089a0:	ff e3 54 fc 	CALL 0xffa08248 <_get_asm>;
ffa089a4:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa089a6:	b2 e0 0e 50 	LSETUP(0xffa089aa <a32_top>, 0xffa089c2 <a32_bot>) LC1 = P5;

ffa089aa <a32_top>:
ffa089aa:	1f 97       	W[P3] = R7;
ffa089ac:	ff e3 4e fc 	CALL 0xffa08248 <_get_asm>;
ffa089b0:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa089b2:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa089b6:	f7 55       	R7 = R7 & R6;
ffa089b8:	e6 b9       	R6 = [FP -0x8];
ffa089ba:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa089be:	be 51       	R6 = R6 + R7;
ffa089c0:	e6 bb       	[FP -0x8] = R6;

ffa089c2 <a32_bot>:
ffa089c2:	00 00       	NOP;
ffa089c4:	ff e3 42 fc 	CALL 0xffa08248 <_get_asm>;
ffa089c8:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa089ca:	b2 e0 0e 50 	LSETUP(0xffa089ce <v32_top>, 0xffa089e6 <v32_bot>) LC1 = P5;

ffa089ce <v32_top>:
ffa089ce:	1f 97       	W[P3] = R7;
ffa089d0:	ff e3 3c fc 	CALL 0xffa08248 <_get_asm>;
ffa089d4:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa089d6:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa089da:	f7 55       	R7 = R7 & R6;
ffa089dc:	d6 b9       	R6 = [FP -0xc];
ffa089de:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa089e2:	be 51       	R6 = R6 + R7;
ffa089e4:	d6 bb       	[FP -0xc] = R6;

ffa089e6 <v32_bot>:
ffa089e6:	00 00       	NOP;
ffa089e8:	ff e3 30 fc 	CALL 0xffa08248 <_get_asm>;
ffa089ec:	e7 b9       	R7 = [FP -0x8];
ffa089ee:	82 c6 27 8d 	R6 = R7 >> 0x1c;
ffa089f2:	06 32       	P0 = R6;
ffa089f4:	0d b9       	P5 = [FP -0x40];
ffa089f6:	7e 60       	R6 = 0xf (X);		/*		R6=0xf( 15) */
ffa089f8:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa089fc:	f7 57       	R7 = R7 | R6;
ffa089fe:	e7 bb       	[FP -0x8] = R7;
ffa08a00:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa08a02:	2f 91       	R7 = [P5];
ffa08a04:	f7 ba       	[FP -0x44] = R7;
ffa08a06:	ff e3 21 fc 	CALL 0xffa08248 <_get_asm>;
ffa08a0a:	e7 b9       	R7 = [FP -0x8];
ffa08a0c:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef000f(-1114097) */
ffa08a10:	06 e1 03 c0 	R6.L = 0xc003;		/* (-16381)	R6=0xffefc003(-1064957) */
ffa08a14:	77 55       	R5 = R7 & R6;
ffa08a16:	46 e1 80 ff 	R6.H = 0xff80;		/* (-128)	R6=0xff80c003(-8339453) */
ffa08a1a:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff804000(-8372224) */
ffa08a1e:	35 08       	CC = R5 == R6;
ffa08a20:	04 10       	IF !CC JUMP 0xffa08a28 <invalid>;
ffa08a22:	2f 32       	P5 = R7;
ffa08a24:	d6 b9       	R6 = [FP -0xc];
ffa08a26:	2e 93       	[P5] = R6;

ffa08a28 <invalid>:
ffa08a28:	ff e3 10 fc 	CALL 0xffa08248 <_get_asm>;

ffa08a2c <rp_bot>:
ffa08a2c:	00 00       	NOP;
ffa08a2e:	ff e3 0d fc 	CALL 0xffa08248 <_get_asm>;
ffa08a32:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a34:	0f b5       	W[P1 + 0x8] = R7;
ffa08a36:	ff e3 09 fc 	CALL 0xffa08248 <_get_asm>;

ffa08a3a <no_rxpacket>:
ffa08a3a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08a3c:	8f b4       	W[P1 + 0x4] = R7;
ffa08a3e:	ff e3 05 fc 	CALL 0xffa08248 <_get_asm>;
ffa08a42:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a44:	8f b4       	W[P1 + 0x4] = R7;
ffa08a46:	ff e3 01 fc 	CALL 0xffa08248 <_get_asm>;
ffa08a4a:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08a4e:	1e 97       	W[P3] = R6;
ffa08a50:	ff e3 fc fb 	CALL 0xffa08248 <_get_asm>;
ffa08a54:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a56:	0f b5       	W[P1 + 0x8] = R7;
ffa08a58:	ff e3 f8 fb 	CALL 0xffa08248 <_get_asm>;
ffa08a5c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a5e:	8f b4       	W[P1 + 0x4] = R7;
ffa08a60:	ff e3 f4 fb 	CALL 0xffa08248 <_get_asm>;
ffa08a64:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa08a66:	1e 97       	W[P3] = R6;
ffa08a68:	ff e3 f0 fb 	CALL 0xffa08248 <_get_asm>;
ffa08a6c:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa08a6e:	1e 97       	W[P3] = R6;
ffa08a70:	ff e3 ec fb 	CALL 0xffa08248 <_get_asm>;
ffa08a74:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a76:	0f b5       	W[P1 + 0x8] = R7;
ffa08a78:	ff e3 e8 fb 	CALL 0xffa08248 <_get_asm>;
ffa08a7c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa08a80:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa08a84:	2f 93       	[P5] = R7;
ffa08a86:	ff e3 e1 fb 	CALL 0xffa08248 <_get_asm>;
ffa08a8a:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa08a8c:	8f b4       	W[P1 + 0x4] = R7;
ffa08a8e:	ff e3 dd fb 	CALL 0xffa08248 <_get_asm>;
ffa08a92:	e7 b8       	R7 = [FP -0x48];
ffa08a94:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa08a98:	f7 51       	R7 = R7 + R6;
ffa08a9a:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa08a9e:	0e b5       	W[P1 + 0x8] = R6;
ffa08aa0:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa08aa2:	e7 ba       	[FP -0x48] = R7;
ffa08aa4:	ff e3 d2 fb 	CALL 0xffa08248 <_get_asm>;
ffa08aa8:	06 2f       	JUMP.S 0xffa088b4 <radio_loop>;
ffa08aaa:	00 00       	NOP;
ffa08aac:	00 00       	NOP;
	...

ffa08ab0 <_init6>:
ffa08ab0:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08ab4:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08ab8:	80 36       	B0 = I0;
ffa08aba:	1c e1 00 2d 	L0.L = 0x2d00;		/* (11520)	L0=0x2d00(11520) */
ffa08abe:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x2d00(11520) */
ffa08ac2:	14 e1 00 01 	M0.L = 0x100;		/* (256)	M0=0x100(256) */
ffa08ac6:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x100(256) */
ffa08aca:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08acc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08ace:	a2 e0 a6 50 	LSETUP(0xffa08ad2 <lt_top>, 0xffa08c1a <lt_bot>) LC0 = P5;

ffa08ad2 <lt_top>:
ffa08ad2:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08ad6:	00 9e       	[I0++] = R0;
ffa08ad8:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08ada:	b2 e0 8e 50 	LSETUP(0xffa08ade <lt2_top>, 0xffa08bf6 <lt2_bot>) LC1 = P5;

ffa08ade <lt2_top>:
ffa08ade:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa08ae2:	40 e1 00 c0 	R0.H = 0xc000;		/* (-16384)	R0=0xc0007d00(-1073709824) */
ffa08ae6:	00 9e       	[I0++] = R0;
ffa08ae8:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xc0004000(-1073725440) */
ffa08aec:	40 e1 84 03 	R0.H = 0x384;		/* (900)	R0=0x3844000(58998784) */
ffa08af0:	00 9e       	[I0++] = R0;
ffa08af2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08af4:	00 9e       	[I0++] = R0;
ffa08af6:	00 9e       	[I0++] = R0;
ffa08af8:	00 9e       	[I0++] = R0;
ffa08afa:	00 9e       	[I0++] = R0;
ffa08afc:	00 9e       	[I0++] = R0;
ffa08afe:	00 9e       	[I0++] = R0;
ffa08b00:	00 9e       	[I0++] = R0;
ffa08b02:	00 9e       	[I0++] = R0;
ffa08b04:	00 9e       	[I0++] = R0;
ffa08b06:	00 9e       	[I0++] = R0;
ffa08b08:	00 9e       	[I0++] = R0;
ffa08b0a:	00 9e       	[I0++] = R0;
ffa08b0c:	00 9e       	[I0++] = R0;
ffa08b0e:	00 9e       	[I0++] = R0;
ffa08b10:	00 9e       	[I0++] = R0;
ffa08b12:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa08b16:	20 9e       	W[I0++] = R0.L;
ffa08b18:	20 9e       	W[I0++] = R0.L;
ffa08b1a:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08b1e:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08b22:	00 9e       	[I0++] = R0;
ffa08b24:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x26bb4000(649805824) */
ffa08b28:	40 e1 01 00 	R0.H = 0x1;		/* (  1)	R0=0x14000(81920) */
ffa08b2c:	00 9e       	[I0++] = R0;
ffa08b2e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b32:	20 9e       	W[I0++] = R0.L;
ffa08b34:	20 9e       	W[I0++] = R0.L;
ffa08b36:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08b3a:	20 9e       	W[I0++] = R0.L;
ffa08b3c:	20 9e       	W[I0++] = R0.L;
ffa08b3e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b42:	20 9e       	W[I0++] = R0.L;
ffa08b44:	20 9e       	W[I0++] = R0.L;
ffa08b46:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08b4a:	20 9e       	W[I0++] = R0.L;
ffa08b4c:	20 9e       	W[I0++] = R0.L;
ffa08b4e:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08b52:	20 9e       	W[I0++] = R0.L;
ffa08b54:	20 9e       	W[I0++] = R0.L;
ffa08b56:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b5a:	20 9e       	W[I0++] = R0.L;
ffa08b5c:	20 9e       	W[I0++] = R0.L;
ffa08b5e:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08b62:	20 9e       	W[I0++] = R0.L;
ffa08b64:	20 9e       	W[I0++] = R0.L;
ffa08b66:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b6a:	20 9e       	W[I0++] = R0.L;
ffa08b6c:	20 9e       	W[I0++] = R0.L;
ffa08b6e:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08b72:	20 9e       	W[I0++] = R0.L;
ffa08b74:	20 9e       	W[I0++] = R0.L;
ffa08b76:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa08b7a:	20 9e       	W[I0++] = R0.L;
ffa08b7c:	20 9e       	W[I0++] = R0.L;
ffa08b7e:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa08b82:	20 9e       	W[I0++] = R0.L;
ffa08b84:	20 9e       	W[I0++] = R0.L;
ffa08b86:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b8a:	20 9e       	W[I0++] = R0.L;
ffa08b8c:	20 9e       	W[I0++] = R0.L;
ffa08b8e:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa08b92:	20 9e       	W[I0++] = R0.L;
ffa08b94:	20 9e       	W[I0++] = R0.L;
ffa08b96:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b9a:	20 9e       	W[I0++] = R0.L;
ffa08b9c:	20 9e       	W[I0++] = R0.L;
ffa08b9e:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08ba2:	20 9e       	W[I0++] = R0.L;
ffa08ba4:	20 9e       	W[I0++] = R0.L;
ffa08ba6:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa08baa:	20 9e       	W[I0++] = R0.L;
ffa08bac:	20 9e       	W[I0++] = R0.L;
ffa08bae:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08bb2:	20 9e       	W[I0++] = R0.L;
ffa08bb4:	20 9e       	W[I0++] = R0.L;
ffa08bb6:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa08bba:	20 9e       	W[I0++] = R0.L;
ffa08bbc:	20 9e       	W[I0++] = R0.L;
ffa08bbe:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08bc2:	20 9e       	W[I0++] = R0.L;
ffa08bc4:	20 9e       	W[I0++] = R0.L;
ffa08bc6:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa08bca:	20 9e       	W[I0++] = R0.L;
ffa08bcc:	20 9e       	W[I0++] = R0.L;
ffa08bce:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa08bd2:	20 9e       	W[I0++] = R0.L;
ffa08bd4:	20 9e       	W[I0++] = R0.L;
ffa08bd6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa08bda:	20 9e       	W[I0++] = R0.L;
ffa08bdc:	20 9e       	W[I0++] = R0.L;
ffa08bde:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa08be2:	20 9e       	W[I0++] = R0.L;
ffa08be4:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa08be8:	20 9e       	W[I0++] = R0.L;
ffa08bea:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa08bee:	20 9e       	W[I0++] = R0.L;
ffa08bf0:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa08bf4:	20 9e       	W[I0++] = R0.L;

ffa08bf6 <lt2_bot>:
ffa08bf6:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa08bfa:	7c 9e       	I0 -= M3;
ffa08bfc:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa08c00:	20 9e       	W[I0++] = R0.L;
ffa08c02:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa08c06:	20 9e       	W[I0++] = R0.L;
ffa08c08:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa08c0c:	20 9e       	W[I0++] = R0.L;
ffa08c0e:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa08c12:	20 9e       	W[I0++] = R0.L;
ffa08c14:	01 9e       	[I0++] = R1;
ffa08c16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08c18:	41 50       	R1 = R1 + R0;

ffa08c1a <lt_bot>:
ffa08c1a:	08 e1 c8 28 	P0.L = 0x28c8;		/* (10440)	P0=0xffc028c8(-4183864) */
ffa08c1e:	48 e1 00 00 	P0.H = 0x0;		/* (  0)	P0=0x28c8 */
ffa08c22:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa08c26:	00 93       	[P0] = R0;
ffa08c28:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa08c2c:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa08c30:	1d e1 00 10 	L1.L = 0x1000;		/* (4096)	L1=0x1000(4096) */
ffa08c34:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1000(4096) */
ffa08c38:	91 34       	I2 = I1;
ffa08c3a:	89 36       	B1 = I1;
ffa08c3c:	92 36       	B2 = I2;
ffa08c3e:	f5 36       	L2 = L1;
ffa08c40:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa08c44:	b4 34       	M2 = M0;
ffa08c46:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0x4000 */
ffa08c4a:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa08c4e:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0x400 */
ffa08c52:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x400 */
ffa08c56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c58:	a2 e0 04 50 	LSETUP(0xffa08c5c <lt3_top>, 0xffa08c60 <lt3_bot>) LC0 = P5;

ffa08c5c <lt3_top>:
ffa08c5c:	00 00       	NOP;
ffa08c5e:	00 92       	[P0++] = R0;

ffa08c60 <lt3_bot>:
ffa08c60:	00 00       	NOP;
ffa08c62:	13 e1 00 50 	I3.L = 0x5000;		/* (20480)	I3=0x5000(20480) */
ffa08c66:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805000(-8368128) */
ffa08c6a:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa08c6e:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa08c72:	9b 36       	B3 = I3;
ffa08c74:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c76:	8c 30       	R1 = M0;
ffa08c78:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08c7a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa08c7c:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa08c7e:	a2 e0 46 50 	LSETUP(0xffa08c82 <lt4_top>, 0xffa08d0a <lt4_bot>) LC0 = P5;

ffa08c82 <lt4_top>:
ffa08c82:	00 00       	NOP;
ffa08c84:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa08c86:	b2 e0 18 50 	LSETUP(0xffa08c8a <lt5_top>, 0xffa08cb6 <lt5_bot>) LC1 = P5;

ffa08c8a <lt5_top>:
ffa08c8a:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa08c8c:	c4 52       	R3 = R4 - R0;
ffa08c8e:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa08c90:	e3 40       	R3 *= R4;
ffa08c92:	1b 9e       	[I3++] = R3;
ffa08c94:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08c96:	e0 50       	R3 = R0 + R4;
ffa08c98:	cb 40       	R3 *= R1;
ffa08c9a:	1b 9e       	[I3++] = R3;
ffa08c9c:	1f 9e       	[I3++] = R7;
ffa08c9e:	20 50       	R0 = R0 + R4;
ffa08ca0:	e7 51       	R7 = R7 + R4;
ffa08ca2:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa08ca4:	20 08       	CC = R0 == R4;
ffa08ca6:	02 10       	IF !CC JUMP 0xffa08caa <no_rollover>;
ffa08ca8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa08caa <no_rollover>:
ffa08caa:	00 00       	NOP;
ffa08cac:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa08cae:	27 08       	CC = R7 == R4;
ffa08cb0:	02 10       	IF !CC JUMP 0xffa08cb4 <no_rollover2>;
ffa08cb2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa08cb4 <no_rollover2>:
	...

ffa08cb6 <lt5_bot>:
ffa08cb6:	00 00       	NOP;
ffa08cb8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08cba:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa08cbe:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08cc0:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa08cc4:	e3 54       	R3 = R3 & R4;
ffa08cc6:	5d 57       	R5 = R5 | R3;
ffa08cc8:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa08ccc:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08cd0:	e3 54       	R3 = R3 & R4;
ffa08cd2:	5d 57       	R5 = R5 | R3;
ffa08cd4:	82 c6 72 86 	R3 = R2 << 0xe;
ffa08cd8:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08cdc:	e3 54       	R3 = R3 & R4;
ffa08cde:	5d 57       	R5 = R5 | R3;
ffa08ce0:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa08ce4:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08ce8:	e3 54       	R3 = R3 & R4;
ffa08cea:	5d 57       	R5 = R5 | R3;
ffa08cec:	1d 9e       	[I3++] = R5;
ffa08cee:	03 e1 20 60 	R3.L = 0x6020;		/* (24608)	R3=0x6020(24608) */
ffa08cf2:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806020(-8364000) */
ffa08cf6:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa08cf8:	62 55       	R5 = R2 & R4;
ffa08cfa:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa08cfe:	5d 51       	R5 = R5 + R3;
ffa08d00:	1d 9e       	[I3++] = R5;
ffa08d02:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08d04:	a2 50       	R2 = R2 + R4;
ffa08d06:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa08d08:	a2 54       	R2 = R2 & R4;

ffa08d0a <lt4_bot>:
ffa08d0a:	00 00       	NOP;
ffa08d0c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08d0e:	10 00       	RTS;

ffa08d10 <_enc_create>:
ffa08d10:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0x6100 */
ffa08d14:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa08d18:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa08d1a:	28 9a       	B[P5++] = R0;
ffa08d1c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa08d1e:	28 9a       	B[P5++] = R0;
ffa08d20:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa08d22:	28 9a       	B[P5++] = R0;
ffa08d24:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa08d26:	28 9a       	B[P5++] = R0;
ffa08d28:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08d2a:	28 9a       	B[P5++] = R0;
ffa08d2c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d2e:	28 9a       	B[P5++] = R0;
ffa08d30:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa08d32:	28 9a       	B[P5++] = R0;
ffa08d34:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d36:	28 9a       	B[P5++] = R0;
ffa08d38:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa08d3a:	28 9a       	B[P5++] = R0;
ffa08d3c:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa08d3e:	28 9a       	B[P5++] = R0;
ffa08d40:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa08d42:	28 9a       	B[P5++] = R0;
ffa08d44:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa08d46:	28 9a       	B[P5++] = R0;
ffa08d48:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08d4a:	28 9a       	B[P5++] = R0;
ffa08d4c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d4e:	28 9a       	B[P5++] = R0;
ffa08d50:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa08d52:	28 9a       	B[P5++] = R0;
ffa08d54:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d56:	28 9a       	B[P5++] = R0;
ffa08d58:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa08d5a:	28 9a       	B[P5++] = R0;
ffa08d5c:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08d5e:	28 9a       	B[P5++] = R0;
ffa08d60:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa08d62:	28 9a       	B[P5++] = R0;
ffa08d64:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa08d66:	28 9a       	B[P5++] = R0;
ffa08d68:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08d6a:	28 9a       	B[P5++] = R0;
ffa08d6c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08d6e:	28 9a       	B[P5++] = R0;
ffa08d70:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa08d72:	28 9a       	B[P5++] = R0;
ffa08d74:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08d76:	28 9a       	B[P5++] = R0;
ffa08d78:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa08d7a:	28 9a       	B[P5++] = R0;
ffa08d7c:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08d7e:	28 9a       	B[P5++] = R0;
ffa08d80:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa08d82:	28 9a       	B[P5++] = R0;
ffa08d84:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08d86:	28 9a       	B[P5++] = R0;
ffa08d88:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08d8a:	28 9a       	B[P5++] = R0;
ffa08d8c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08d8e:	28 9a       	B[P5++] = R0;
ffa08d90:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa08d92:	28 9a       	B[P5++] = R0;
ffa08d94:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa08d96:	28 9a       	B[P5++] = R0;
ffa08d98:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa08d9a:	28 9a       	B[P5++] = R0;
ffa08d9c:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08da0:	28 9a       	B[P5++] = R0;
ffa08da2:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa08da6:	28 9a       	B[P5++] = R0;
ffa08da8:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08dac:	28 9a       	B[P5++] = R0;
ffa08dae:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08db2:	28 9a       	B[P5++] = R0;
ffa08db4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08db8:	28 9a       	B[P5++] = R0;
ffa08dba:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08dbe:	28 9a       	B[P5++] = R0;
ffa08dc0:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08dc4:	28 9a       	B[P5++] = R0;
ffa08dc6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa08dca:	28 9a       	B[P5++] = R0;
ffa08dcc:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa08dd0:	28 9a       	B[P5++] = R0;
ffa08dd2:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa08dd6:	28 9a       	B[P5++] = R0;
ffa08dd8:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa08ddc:	28 9a       	B[P5++] = R0;
ffa08dde:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08de2:	28 9a       	B[P5++] = R0;
ffa08de4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08de8:	28 9a       	B[P5++] = R0;
ffa08dea:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08dee:	28 9a       	B[P5++] = R0;
ffa08df0:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08df4:	28 9a       	B[P5++] = R0;
ffa08df6:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa08df8:	28 9a       	B[P5++] = R0;
ffa08dfa:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08dfc:	28 9a       	B[P5++] = R0;
ffa08dfe:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa08e00:	28 9a       	B[P5++] = R0;
ffa08e02:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08e04:	28 9a       	B[P5++] = R0;
ffa08e06:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa08e0a:	28 9a       	B[P5++] = R0;
ffa08e0c:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa08e10:	28 9a       	B[P5++] = R0;
ffa08e12:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa08e16:	28 9a       	B[P5++] = R0;
ffa08e18:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08e1a:	28 9a       	B[P5++] = R0;
ffa08e1c:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa08e1e:	28 9a       	B[P5++] = R0;
ffa08e20:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08e22:	28 9a       	B[P5++] = R0;
ffa08e24:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa08e26:	28 9a       	B[P5++] = R0;
ffa08e28:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08e2a:	28 9a       	B[P5++] = R0;
ffa08e2c:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08e2e:	28 9a       	B[P5++] = R0;
ffa08e30:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08e32:	28 9a       	B[P5++] = R0;
ffa08e34:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa08e36:	28 9a       	B[P5++] = R0;
ffa08e38:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa08e3c:	28 9a       	B[P5++] = R0;
ffa08e3e:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa08e42:	28 9a       	B[P5++] = R0;
ffa08e44:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08e48:	28 9a       	B[P5++] = R0;
ffa08e4a:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa08e4e:	28 9a       	B[P5++] = R0;
ffa08e50:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08e54:	28 9a       	B[P5++] = R0;
ffa08e56:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa08e5a:	28 9a       	B[P5++] = R0;
ffa08e5c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e60:	28 9a       	B[P5++] = R0;
ffa08e62:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08e66:	28 9a       	B[P5++] = R0;
ffa08e68:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e6c:	28 9a       	B[P5++] = R0;
ffa08e6e:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa08e72:	28 9a       	B[P5++] = R0;
ffa08e74:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa08e78:	28 9a       	B[P5++] = R0;
ffa08e7a:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa08e7e:	28 9a       	B[P5++] = R0;
ffa08e80:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa08e84:	28 9a       	B[P5++] = R0;
ffa08e86:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa08e8a:	28 9a       	B[P5++] = R0;
ffa08e8c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e90:	28 9a       	B[P5++] = R0;
ffa08e92:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08e96:	28 9a       	B[P5++] = R0;
ffa08e98:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e9c:	28 9a       	B[P5++] = R0;
ffa08e9e:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08ea2:	28 9a       	B[P5++] = R0;
ffa08ea4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08ea8:	28 9a       	B[P5++] = R0;
ffa08eaa:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08eae:	28 9a       	B[P5++] = R0;
ffa08eb0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08eb4:	28 9a       	B[P5++] = R0;
ffa08eb6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08eba:	28 9a       	B[P5++] = R0;
ffa08ebc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08ec0:	28 9a       	B[P5++] = R0;
ffa08ec2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08ec6:	28 9a       	B[P5++] = R0;
ffa08ec8:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa08ecc:	28 9a       	B[P5++] = R0;
ffa08ece:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa08ed2:	28 9a       	B[P5++] = R0;
ffa08ed4:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08ed8:	28 9a       	B[P5++] = R0;
ffa08eda:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08ede:	28 9a       	B[P5++] = R0;
ffa08ee0:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08ee4:	28 9a       	B[P5++] = R0;
ffa08ee6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08eea:	28 9a       	B[P5++] = R0;
ffa08eec:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08ef0:	28 9a       	B[P5++] = R0;
ffa08ef2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08ef6:	28 9a       	B[P5++] = R0;
ffa08ef8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08efc:	28 9a       	B[P5++] = R0;
ffa08efe:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa08f02:	28 9a       	B[P5++] = R0;
ffa08f04:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08f08:	28 9a       	B[P5++] = R0;
ffa08f0a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa08f0e:	28 9a       	B[P5++] = R0;
ffa08f10:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08f14:	28 9a       	B[P5++] = R0;
ffa08f16:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa08f1a:	28 9a       	B[P5++] = R0;
ffa08f1c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f20:	28 9a       	B[P5++] = R0;
ffa08f22:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08f26:	28 9a       	B[P5++] = R0;
ffa08f28:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f2c:	28 9a       	B[P5++] = R0;
ffa08f2e:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa08f32:	28 9a       	B[P5++] = R0;
ffa08f34:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa08f38:	28 9a       	B[P5++] = R0;
ffa08f3a:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa08f3e:	28 9a       	B[P5++] = R0;
ffa08f40:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa08f44:	28 9a       	B[P5++] = R0;
ffa08f46:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa08f4a:	28 9a       	B[P5++] = R0;
ffa08f4c:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa08f50:	28 9a       	B[P5++] = R0;
ffa08f52:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08f56:	28 9a       	B[P5++] = R0;
ffa08f58:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f5c:	28 9a       	B[P5++] = R0;
ffa08f5e:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08f62:	28 9a       	B[P5++] = R0;
ffa08f64:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08f68:	28 9a       	B[P5++] = R0;
ffa08f6a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08f6e:	28 9a       	B[P5++] = R0;
ffa08f70:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08f74:	28 9a       	B[P5++] = R0;
ffa08f76:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08f7a:	28 9a       	B[P5++] = R0;
ffa08f7c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f80:	28 9a       	B[P5++] = R0;
ffa08f82:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa08f86:	28 9a       	B[P5++] = R0;
ffa08f88:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa08f8c:	28 9a       	B[P5++] = R0;
ffa08f8e:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa08f92:	28 9a       	B[P5++] = R0;
ffa08f94:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f98:	28 9a       	B[P5++] = R0;
ffa08f9a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08f9e:	28 9a       	B[P5++] = R0;
ffa08fa0:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08fa4:	28 9a       	B[P5++] = R0;
ffa08fa6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08faa:	28 9a       	B[P5++] = R0;
ffa08fac:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08fb0:	28 9a       	B[P5++] = R0;
ffa08fb2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08fb6:	28 9a       	B[P5++] = R0;
ffa08fb8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08fbc:	28 9a       	B[P5++] = R0;
ffa08fbe:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa08fc2:	28 9a       	B[P5++] = R0;
ffa08fc4:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa08fc8:	28 9a       	B[P5++] = R0;
ffa08fca:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa08fce:	28 9a       	B[P5++] = R0;
ffa08fd0:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa08fd4:	28 9a       	B[P5++] = R0;
ffa08fd6:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa08fda:	28 9a       	B[P5++] = R0;
ffa08fdc:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08fe0:	28 9a       	B[P5++] = R0;
ffa08fe2:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa08fe6:	28 9a       	B[P5++] = R0;
ffa08fe8:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08fec:	28 9a       	B[P5++] = R0;
ffa08fee:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa08ff2:	28 9a       	B[P5++] = R0;
ffa08ff4:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa08ff8:	28 9a       	B[P5++] = R0;
ffa08ffa:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa08ffe:	28 9a       	B[P5++] = R0;
ffa09000:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09004:	28 9a       	B[P5++] = R0;
ffa09006:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0900a:	28 9a       	B[P5++] = R0;
ffa0900c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09010:	28 9a       	B[P5++] = R0;
ffa09012:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa09016:	28 9a       	B[P5++] = R0;
ffa09018:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa0901c:	28 9a       	B[P5++] = R0;
ffa0901e:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09022:	28 9a       	B[P5++] = R0;
ffa09024:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09028:	28 9a       	B[P5++] = R0;
ffa0902a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0902c:	28 9a       	B[P5++] = R0;
ffa0902e:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09032:	28 9a       	B[P5++] = R0;
ffa09034:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09036:	28 9a       	B[P5++] = R0;
ffa09038:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0903a:	28 9a       	B[P5++] = R0;
ffa0903c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0903e:	28 9a       	B[P5++] = R0;
ffa09040:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa09042:	28 9a       	B[P5++] = R0;
ffa09044:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa09046:	28 9a       	B[P5++] = R0;
ffa09048:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0904a:	28 9a       	B[P5++] = R0;
ffa0904c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0904e:	28 9a       	B[P5++] = R0;
ffa09050:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa09052:	28 9a       	B[P5++] = R0;
ffa09054:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09056:	28 9a       	B[P5++] = R0;
ffa09058:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0905a:	28 9a       	B[P5++] = R0;
ffa0905c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0905e:	28 9a       	B[P5++] = R0;
ffa09060:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09062:	28 9a       	B[P5++] = R0;
ffa09064:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09066:	28 9a       	B[P5++] = R0;
ffa09068:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0906a:	28 9a       	B[P5++] = R0;
ffa0906c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0906e:	28 9a       	B[P5++] = R0;
ffa09070:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa09072:	28 9a       	B[P5++] = R0;
ffa09074:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa09076:	28 9a       	B[P5++] = R0;
ffa09078:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0907a:	28 9a       	B[P5++] = R0;
ffa0907c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa0907e:	28 9a       	B[P5++] = R0;
ffa09080:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa09082:	28 9a       	B[P5++] = R0;
ffa09084:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09086:	28 9a       	B[P5++] = R0;
ffa09088:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0908a:	28 9a       	B[P5++] = R0;
ffa0908c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0908e:	28 9a       	B[P5++] = R0;
ffa09090:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa09092:	28 9a       	B[P5++] = R0;
ffa09094:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa09096:	28 9a       	B[P5++] = R0;
ffa09098:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa0909a:	28 9a       	B[P5++] = R0;
ffa0909c:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa0909e:	28 9a       	B[P5++] = R0;
ffa090a0:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa090a2:	28 9a       	B[P5++] = R0;
ffa090a4:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa090a8:	28 9a       	B[P5++] = R0;
ffa090aa:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa090ae:	28 9a       	B[P5++] = R0;
ffa090b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090b2:	28 9a       	B[P5++] = R0;
ffa090b4:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa090b8:	28 9a       	B[P5++] = R0;
ffa090ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090bc:	28 9a       	B[P5++] = R0;
ffa090be:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090c0:	28 9a       	B[P5++] = R0;
ffa090c2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa090c4:	28 9a       	B[P5++] = R0;
ffa090c6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090c8:	28 9a       	B[P5++] = R0;
ffa090ca:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa090cc:	28 9a       	B[P5++] = R0;
ffa090ce:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa090d0:	28 9a       	B[P5++] = R0;
ffa090d2:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa090d4:	28 9a       	B[P5++] = R0;
ffa090d6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa090d8:	28 9a       	B[P5++] = R0;
ffa090da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090dc:	28 9a       	B[P5++] = R0;
ffa090de:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090e0:	28 9a       	B[P5++] = R0;
ffa090e2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa090e4:	28 9a       	B[P5++] = R0;
ffa090e6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090e8:	28 9a       	B[P5++] = R0;
ffa090ea:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa090ee:	28 9a       	B[P5++] = R0;
ffa090f0:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa090f4:	28 9a       	B[P5++] = R0;
ffa090f6:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa090fa:	28 9a       	B[P5++] = R0;
ffa090fc:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa090fe:	28 9a       	B[P5++] = R0;
ffa09100:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa09102:	28 9a       	B[P5++] = R0;
ffa09104:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa09106:	28 9a       	B[P5++] = R0;
ffa09108:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0910c:	28 9a       	B[P5++] = R0;
ffa0910e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09112:	28 9a       	B[P5++] = R0;
ffa09114:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09118:	28 9a       	B[P5++] = R0;
ffa0911a:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0911e:	28 9a       	B[P5++] = R0;
ffa09120:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09124:	28 9a       	B[P5++] = R0;
ffa09126:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0912a:	28 9a       	B[P5++] = R0;
ffa0912c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09130:	28 9a       	B[P5++] = R0;
ffa09132:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09136:	28 9a       	B[P5++] = R0;
ffa09138:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa0913a:	28 9a       	B[P5++] = R0;
ffa0913c:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa0913e:	28 9a       	B[P5++] = R0;
ffa09140:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa09142:	28 9a       	B[P5++] = R0;
ffa09144:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09148:	28 9a       	B[P5++] = R0;
ffa0914a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0914e:	28 9a       	B[P5++] = R0;
ffa09150:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09154:	28 9a       	B[P5++] = R0;
ffa09156:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0915a:	28 9a       	B[P5++] = R0;
ffa0915c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09160:	28 9a       	B[P5++] = R0;
ffa09162:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09166:	28 9a       	B[P5++] = R0;
ffa09168:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0916c:	28 9a       	B[P5++] = R0;
ffa0916e:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09172:	28 9a       	B[P5++] = R0;
ffa09174:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa09176:	28 9a       	B[P5++] = R0;
ffa09178:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0917a:	28 9a       	B[P5++] = R0;
ffa0917c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0917e:	28 9a       	B[P5++] = R0;
ffa09180:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09184:	28 9a       	B[P5++] = R0;
ffa09186:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0918a:	28 9a       	B[P5++] = R0;
ffa0918c:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09190:	28 9a       	B[P5++] = R0;
ffa09192:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09196:	28 9a       	B[P5++] = R0;
ffa09198:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa0919c:	28 9a       	B[P5++] = R0;
ffa0919e:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa091a2:	28 9a       	B[P5++] = R0;
ffa091a4:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa091a8:	28 9a       	B[P5++] = R0;
ffa091aa:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa091ae:	28 9a       	B[P5++] = R0;
ffa091b0:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa091b2:	28 9a       	B[P5++] = R0;
ffa091b4:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa091b6:	28 9a       	B[P5++] = R0;
ffa091b8:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa091ba:	28 9a       	B[P5++] = R0;
ffa091bc:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa091c0:	28 9a       	B[P5++] = R0;
ffa091c2:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa091c6:	28 9a       	B[P5++] = R0;
ffa091c8:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa091cc:	28 9a       	B[P5++] = R0;
ffa091ce:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa091d2:	28 9a       	B[P5++] = R0;
ffa091d4:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa091d8:	28 9a       	B[P5++] = R0;
ffa091da:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa091de:	28 9a       	B[P5++] = R0;
ffa091e0:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa091e4:	28 9a       	B[P5++] = R0;
ffa091e6:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa091ea:	28 9a       	B[P5++] = R0;
ffa091ec:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa091ee:	28 9a       	B[P5++] = R0;
ffa091f0:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa091f2:	28 9a       	B[P5++] = R0;
ffa091f4:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa091f6:	28 9a       	B[P5++] = R0;
ffa091f8:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa091fc:	28 9a       	B[P5++] = R0;
ffa091fe:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09202:	28 9a       	B[P5++] = R0;
ffa09204:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09208:	28 9a       	B[P5++] = R0;
ffa0920a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0920e:	28 9a       	B[P5++] = R0;
ffa09210:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09214:	28 9a       	B[P5++] = R0;
ffa09216:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0921a:	28 9a       	B[P5++] = R0;
ffa0921c:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09220:	28 9a       	B[P5++] = R0;
ffa09222:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09226:	28 9a       	B[P5++] = R0;
ffa09228:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa0922a:	28 9a       	B[P5++] = R0;
ffa0922c:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa0922e:	28 9a       	B[P5++] = R0;
ffa09230:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa09232:	28 9a       	B[P5++] = R0;
ffa09234:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09238:	28 9a       	B[P5++] = R0;
ffa0923a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09244:	28 9a       	B[P5++] = R0;
ffa09246:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0xff806200 */
ffa0924a:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa0924e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09252:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09256:	28 92       	[P5++] = R0;
ffa09258:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa0925c:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa09260:	28 92       	[P5++] = R0;
ffa09262:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa09266:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa0926a:	28 92       	[P5++] = R0;
ffa0926c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa09270:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa09274:	28 92       	[P5++] = R0;
ffa09276:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa0927a:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa0927e:	28 92       	[P5++] = R0;
ffa09280:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09284:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09288:	28 92       	[P5++] = R0;
ffa0928a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa0928e:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa09292:	28 92       	[P5++] = R0;
ffa09294:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa09298:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa0929c:	28 92       	[P5++] = R0;
ffa0929e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa092a2:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa092a6:	28 92       	[P5++] = R0;
ffa092a8:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa092ac:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa092b0:	28 92       	[P5++] = R0;
ffa092b2:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa092b6:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa092ba:	28 92       	[P5++] = R0;
ffa092bc:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa092c0:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa092c4:	28 92       	[P5++] = R0;
ffa092c6:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa092ca:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa092ce:	28 92       	[P5++] = R0;
ffa092d0:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa092d4:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa092d8:	28 92       	[P5++] = R0;
ffa092da:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa092de:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa092e2:	28 92       	[P5++] = R0;
ffa092e4:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa092e8:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa092ec:	28 92       	[P5++] = R0;
ffa092ee:	10 00       	RTS;

ffa092f0 <___divsi3>:
ffa092f0:	c8 58       	R3 = R0 ^ R1;
ffa092f2:	07 c4 00 80 	R0 = ABS R0;
ffa092f6:	18 03       	CC = V;
ffa092f8:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa092fc:	07 c4 08 82 	R1 = ABS R1;
ffa09300:	88 08       	CC = R0 < R1;
ffa09302:	76 18       	IF CC JUMP 0xffa093ee <___divsi3+0xfe>;
ffa09304:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa09308:	0a 02       	CC = R2;
ffa0930a:	1e 18       	IF CC JUMP 0xffa09346 <___divsi3+0x56>;
ffa0930c:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09310:	02 09       	CC = R2 <= R0;
ffa09312:	1a 18       	IF CC JUMP 0xffa09346 <___divsi3+0x56>;
ffa09314:	48 42       	DIVS (R0, R1);
ffa09316:	08 42       	DIVQ (R0, R1);
ffa09318:	08 42       	DIVQ (R0, R1);
ffa0931a:	08 42       	DIVQ (R0, R1);
ffa0931c:	08 42       	DIVQ (R0, R1);
ffa0931e:	08 42       	DIVQ (R0, R1);
ffa09320:	08 42       	DIVQ (R0, R1);
ffa09322:	08 42       	DIVQ (R0, R1);
ffa09324:	08 42       	DIVQ (R0, R1);
ffa09326:	08 42       	DIVQ (R0, R1);
ffa09328:	08 42       	DIVQ (R0, R1);
ffa0932a:	08 42       	DIVQ (R0, R1);
ffa0932c:	08 42       	DIVQ (R0, R1);
ffa0932e:	08 42       	DIVQ (R0, R1);
ffa09330:	08 42       	DIVQ (R0, R1);
ffa09332:	08 42       	DIVQ (R0, R1);
ffa09334:	08 42       	DIVQ (R0, R1);
ffa09336:	c0 42       	R0 = R0.L (Z);
ffa09338:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa0933c:	08 50       	R0 = R0 + R1;
ffa0933e:	81 43       	R1 = -R0;
ffa09340:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09342:	01 07       	IF CC R0 = R1;
ffa09344:	10 00       	RTS;
ffa09346:	01 0c       	CC = R1 == 0x0;
ffa09348:	34 18       	IF CC JUMP 0xffa093b0 <___divsi3+0xc0>;
ffa0934a:	00 0c       	CC = R0 == 0x0;
ffa0934c:	3f 18       	IF CC JUMP 0xffa093ca <___divsi3+0xda>;
ffa0934e:	08 08       	CC = R0 == R1;
ffa09350:	30 18       	IF CC JUMP 0xffa093b0 <___divsi3+0xc0>;
ffa09352:	09 0c       	CC = R1 == 0x1;
ffa09354:	2e 18       	IF CC JUMP 0xffa093b0 <___divsi3+0xc0>;
ffa09356:	06 c6 01 c4 	R2.L = ONES R1;
ffa0935a:	d2 42       	R2 = R2.L (Z);
ffa0935c:	0a 0c       	CC = R2 == 0x1;
ffa0935e:	37 18       	IF CC JUMP 0xffa093cc <___divsi3+0xdc>;
ffa09360:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa09362:	68 05       	[--SP] = (R7:5);
ffa09364:	8a 43       	R2 = -R1;
ffa09366:	42 01       	[--SP] = R2;
ffa09368:	82 c6 08 84 	R2 = R0 << 0x1;
ffa0936c:	88 59       	R6 = R0 ^ R1;
ffa0936e:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa09372:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09374:	aa 56       	R2 = R2 | R5;
ffa09376:	88 59       	R6 = R0 ^ R1;
ffa09378:	a2 e0 12 10 	LSETUP(0xffa0937c <___divsi3+0x8c>, 0xffa0939c <___divsi3+0xac>) LC0 = P1;
ffa0937c:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09380:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa09384:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa09388:	35 91 00 00 
ffa0938c:	38 56       	R0 = R0 | R7;
ffa0938e:	86 0c       	CC = R6 < 0x0;
ffa09390:	29 07       	IF CC R5 = R1;
ffa09392:	28 50       	R0 = R0 + R5;
ffa09394:	88 59       	R6 = R0 ^ R1;
ffa09396:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0939a:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa0939c:	aa 50       	R2 = R2 + R5;
ffa0939e:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa093a2:	8a 50       	R2 = R2 + R1;
ffa093a4:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa093a6:	90 43       	R0 = -R2;
ffa093a8:	02 06       	IF !CC R0 = R2;
ffa093aa:	26 6c       	SP += 0x4;		/* (  4) */
ffa093ac:	28 05       	(R7:5) = [SP++];
ffa093ae:	10 00       	RTS;
ffa093b0:	01 0c       	CC = R1 == 0x0;
ffa093b2:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa093b4:	0a 4e       	R2 >>= 0x1;
ffa093b6:	06 18       	IF CC JUMP 0xffa093c2 <___divsi3+0xd2>;
ffa093b8:	08 08       	CC = R0 == R1;
ffa093ba:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa093be:	02 18       	IF CC JUMP 0xffa093c2 <___divsi3+0xd2>;
ffa093c0:	10 30       	R2 = R0;
ffa093c2:	02 30       	R0 = R2;
ffa093c4:	92 43       	R2 = -R2;
ffa093c6:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa093c8:	02 07       	IF CC R0 = R2;
ffa093ca:	10 00       	RTS;
ffa093cc:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa093d0:	81 0c       	CC = R1 < 0x0;
ffa093d2:	f8 1b       	IF CC JUMP 0xffa093c2 <___divsi3+0xd2>;
ffa093d4:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa093d8:	c9 42       	R1 = R1.L (Z);
ffa093da:	11 67       	R1 += -0x1e;		/* (-30) */
ffa093dc:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa093e0:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa093e4:	08 50       	R0 = R0 + R1;
ffa093e6:	82 43       	R2 = -R0;
ffa093e8:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa093ea:	02 07       	IF CC R0 = R2;
ffa093ec:	10 00       	RTS;
ffa093ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa093f0:	10 00       	RTS;
	...

ffa093f4 <_exception_report>:
ffa093f4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa093f8:	b8 b0       	[FP + 0x8] = R0;
ffa093fa:	f9 b0       	[FP + 0xc] = R1;
ffa093fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa09400:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09404:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09406:	10 97       	W[P2] = R0;
ffa09408:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0940c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09410:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09414:	10 97       	W[P2] = R0;
ffa09416:	24 00       	SSYNC;
ffa09418:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0941c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09420:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09424:	10 97       	W[P2] = R0;
ffa09426:	24 00       	SSYNC;
ffa09428:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0942a:	d0 bb       	[FP -0xc] = R0;
ffa0942c:	b8 a0       	R0 = [FP + 0x8];
ffa0942e:	e0 bb       	[FP -0x8] = R0;
ffa09430:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09432:	f0 bb       	[FP -0x4] = R0;
ffa09434:	27 20       	JUMP.S 0xffa09482 <_exception_report+0x8e>;
ffa09436:	d0 b9       	R0 = [FP -0xc];
ffa09438:	e1 b9       	R1 = [FP -0x8];
ffa0943a:	08 54       	R0 = R0 & R1;
ffa0943c:	00 0c       	CC = R0 == 0x0;
ffa0943e:	08 18       	IF CC JUMP 0xffa0944e <_exception_report+0x5a>;
ffa09440:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09444:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09448:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0944a:	10 97       	W[P2] = R0;
ffa0944c:	07 20       	JUMP.S 0xffa0945a <_exception_report+0x66>;
ffa0944e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09452:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09456:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09458:	10 97       	W[P2] = R0;
ffa0945a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0945e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09462:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09464:	10 97       	W[P2] = R0;
ffa09466:	24 00       	SSYNC;
ffa09468:	d0 b9       	R0 = [FP -0xc];
ffa0946a:	08 4e       	R0 >>= 0x1;
ffa0946c:	d0 bb       	[FP -0xc] = R0;
ffa0946e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09472:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09476:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09478:	10 97       	W[P2] = R0;
ffa0947a:	24 00       	SSYNC;
ffa0947c:	f0 b9       	R0 = [FP -0x4];
ffa0947e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09480:	f0 bb       	[FP -0x4] = R0;
ffa09482:	f0 b9       	R0 = [FP -0x4];
ffa09484:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa09486:	08 09       	CC = R0 <= R1;
ffa09488:	d7 1b       	IF CC JUMP 0xffa09436 <_exception_report+0x42>;
ffa0948a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0948e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09492:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09494:	10 97       	W[P2] = R0;
ffa09496:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09498:	f0 bb       	[FP -0x4] = R0;
ffa0949a:	06 20       	JUMP.S 0xffa094a6 <_exception_report+0xb2>;
ffa0949c:	00 00       	NOP;
ffa0949e:	00 00       	NOP;
ffa094a0:	f0 b9       	R0 = [FP -0x4];
ffa094a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa094a4:	f0 bb       	[FP -0x4] = R0;
ffa094a6:	f0 b9       	R0 = [FP -0x4];
ffa094a8:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa094aa:	08 09       	CC = R0 <= R1;
ffa094ac:	f8 1b       	IF CC JUMP 0xffa0949c <_exception_report+0xa8>;
ffa094ae:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa094b2:	d0 bb       	[FP -0xc] = R0;
ffa094b4:	f8 a0       	R0 = [FP + 0xc];
ffa094b6:	e0 bb       	[FP -0x8] = R0;
ffa094b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa094ba:	f0 bb       	[FP -0x4] = R0;
ffa094bc:	44 20       	JUMP.S 0xffa09544 <_exception_report+0x150>;
ffa094be:	d0 b9       	R0 = [FP -0xc];
ffa094c0:	e1 b9       	R1 = [FP -0x8];
ffa094c2:	08 54       	R0 = R0 & R1;
ffa094c4:	00 0c       	CC = R0 == 0x0;
ffa094c6:	08 18       	IF CC JUMP 0xffa094d6 <_exception_report+0xe2>;
ffa094c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa094cc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa094d0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094d2:	10 97       	W[P2] = R0;
ffa094d4:	07 20       	JUMP.S 0xffa094e2 <_exception_report+0xee>;
ffa094d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa094da:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa094de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094e0:	10 97       	W[P2] = R0;
ffa094e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa094e6:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa094ea:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094ec:	10 97       	W[P2] = R0;
ffa094ee:	24 00       	SSYNC;
ffa094f0:	d0 b9       	R0 = [FP -0xc];
ffa094f2:	08 4e       	R0 >>= 0x1;
ffa094f4:	d0 bb       	[FP -0xc] = R0;
ffa094f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa094fa:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa094fe:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09500:	10 97       	W[P2] = R0;
ffa09502:	24 00       	SSYNC;
ffa09504:	f1 b9       	R1 = [FP -0x4];
ffa09506:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09508:	01 54       	R0 = R1 & R0;
ffa0950a:	18 0c       	CC = R0 == 0x3;
ffa0950c:	19 10       	IF !CC JUMP 0xffa0953e <_exception_report+0x14a>;
	...
ffa0953e:	f0 b9       	R0 = [FP -0x4];
ffa09540:	08 64       	R0 += 0x1;		/* (  1) */
ffa09542:	f0 bb       	[FP -0x4] = R0;
ffa09544:	f0 b9       	R0 = [FP -0x4];
ffa09546:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa09548:	08 09       	CC = R0 <= R1;
ffa0954a:	ba 1b       	IF CC JUMP 0xffa094be <_exception_report+0xca>;
ffa0954c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09550:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09554:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09556:	10 97       	W[P2] = R0;
ffa09558:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0955a:	f0 bb       	[FP -0x4] = R0;
ffa0955c:	06 20       	JUMP.S 0xffa09568 <_exception_report+0x174>;
ffa0955e:	00 00       	NOP;
ffa09560:	00 00       	NOP;
ffa09562:	f0 b9       	R0 = [FP -0x4];
ffa09564:	08 64       	R0 += 0x1;		/* (  1) */
ffa09566:	f0 bb       	[FP -0x4] = R0;
ffa09568:	f0 b9       	R0 = [FP -0x4];
ffa0956a:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa0956e:	08 09       	CC = R0 <= R1;
ffa09570:	f7 1b       	IF CC JUMP 0xffa0955e <_exception_report+0x16a>;
ffa09572:	4b 2f       	JUMP.S 0xffa09408 <_exception_report+0x14>;

ffa09574 <_nmi_report>:
ffa09574:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09578:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0957a:	f0 bb       	[FP -0x4] = R0;
ffa0957c:	06 20       	JUMP.S 0xffa09588 <_nmi_report+0x14>;
ffa0957e:	00 00       	NOP;
ffa09580:	00 00       	NOP;
ffa09582:	f0 b9       	R0 = [FP -0x4];
ffa09584:	08 64       	R0 += 0x1;		/* (  1) */
ffa09586:	f0 bb       	[FP -0x4] = R0;
ffa09588:	f0 b9       	R0 = [FP -0x4];
ffa0958a:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa0958e:	08 09       	CC = R0 <= R1;
ffa09590:	f7 1b       	IF CC JUMP 0xffa0957e <_nmi_report+0xa>;
ffa09592:	01 e8 00 00 	UNLINK;
ffa09596:	10 00       	RTS;

ffa09598 <_main>:
ffa09598:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0959c:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa095a0:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa095a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095a6:	10 93       	[P2] = R0;
ffa095a8:	23 00       	CSYNC;
ffa095aa:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa095ae:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa095b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095b4:	10 93       	[P2] = R0;
ffa095b6:	23 00       	CSYNC;
ffa095b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa095bc:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa095c0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa095c2:	10 97       	W[P2] = R0;
ffa095c4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa095c8:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa095cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa095d0:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa095d4:	50 95       	R0 = W[P2] (X);
ffa095d6:	c0 43       	R0 =~ R0;
ffa095d8:	08 97       	W[P1] = R0;
ffa095da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa095de:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa095e2:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa095e6:	10 97       	W[P2] = R0;
ffa095e8:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa095ec:	00 e3 6a 06 	CALL 0xffa0a2c0 <_radio_init>;
ffa095f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa095f4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa095f8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095fa:	10 97       	W[P2] = R0;
ffa095fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09600:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09604:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09608:	10 97       	W[P2] = R0;
ffa0960a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0960c:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09610:	0a 20       	JUMP.S 0xffa09624 <_main+0x8c>;
	...
ffa0961a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0961e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09620:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09624:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09628:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa0962c:	08 0a       	CC = R0 <= R1 (IU);
ffa0962e:	f2 1b       	IF CC JUMP 0xffa09612 <_main+0x7a>;
ffa09630:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09634:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09638:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0963c:	10 97       	W[P2] = R0;
ffa0963e:	00 e3 f5 05 	CALL 0xffa0a228 <_radio_set_tx>;
ffa09642:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09646:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa0964a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0964c:	10 97       	W[P2] = R0;
ffa0964e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09652:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09656:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09658:	10 97       	W[P2] = R0;
ffa0965a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa0965e:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09662:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09666:	10 97       	W[P2] = R0;
ffa09668:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa0966c:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09670:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09672:	10 97       	W[P2] = R0;
ffa09674:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa09678:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa0967c:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa0967e:	10 97       	W[P2] = R0;
ffa09680:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09684:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa09688:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa0968c:	10 97       	W[P2] = R0;
ffa0968e:	ff e3 89 f8 	CALL 0xffa087a0 <_radio_bidi_asm>;
ffa09692:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09694:	01 e8 00 00 	UNLINK;
ffa09698:	10 00       	RTS;
	...

ffa0969c <_div>:
ffa0969c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa096a0:	b8 b0       	[FP + 0x8] = R0;
ffa096a2:	f9 b0       	[FP + 0xc] = R1;
ffa096a4:	b8 a0       	R0 = [FP + 0x8];
ffa096a6:	08 4f       	R0 <<= 0x1;
ffa096a8:	b8 b0       	[FP + 0x8] = R0;
ffa096aa:	b9 a0       	R1 = [FP + 0x8];
ffa096ac:	f8 a0       	R0 = [FP + 0xc];
ffa096ae:	11 30       	R2 = R1;
ffa096b0:	18 30       	R3 = R0;
ffa096b2:	5a 42       	DIVS (R2, R3);
ffa096b4:	0b 30       	R1 = R3;
ffa096b6:	02 30       	R0 = R2;
ffa096b8:	b8 b0       	[FP + 0x8] = R0;
ffa096ba:	f9 b0       	[FP + 0xc] = R1;
ffa096bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096be:	f0 bb       	[FP -0x4] = R0;
ffa096c0:	0d 20       	JUMP.S 0xffa096da <_div+0x3e>;
ffa096c2:	b9 a0       	R1 = [FP + 0x8];
ffa096c4:	f8 a0       	R0 = [FP + 0xc];
ffa096c6:	11 30       	R2 = R1;
ffa096c8:	18 30       	R3 = R0;
ffa096ca:	1a 42       	DIVQ (R2, R3);
ffa096cc:	0b 30       	R1 = R3;
ffa096ce:	02 30       	R0 = R2;
ffa096d0:	b8 b0       	[FP + 0x8] = R0;
ffa096d2:	f9 b0       	[FP + 0xc] = R1;
ffa096d4:	f0 b9       	R0 = [FP -0x4];
ffa096d6:	08 64       	R0 += 0x1;		/* (  1) */
ffa096d8:	f0 bb       	[FP -0x4] = R0;
ffa096da:	f0 b9       	R0 = [FP -0x4];
ffa096dc:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa096de:	08 09       	CC = R0 <= R1;
ffa096e0:	f1 1b       	IF CC JUMP 0xffa096c2 <_div+0x26>;
ffa096e2:	b8 a0       	R0 = [FP + 0x8];
ffa096e4:	80 42       	R0 = R0.L (X);
ffa096e6:	b8 b0       	[FP + 0x8] = R0;
ffa096e8:	b8 a0       	R0 = [FP + 0x8];
ffa096ea:	01 e8 00 00 	UNLINK;
ffa096ee:	10 00       	RTS;

ffa096f0 <_mod>:
ffa096f0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa096f4:	b8 b0       	[FP + 0x8] = R0;
ffa096f6:	f9 b0       	[FP + 0xc] = R1;
ffa096f8:	f9 a0       	R1 = [FP + 0xc];
ffa096fa:	b8 a0       	R0 = [FP + 0x8];
ffa096fc:	ff e3 d0 ff 	CALL 0xffa0969c <_div>;
ffa09700:	f0 bb       	[FP -0x4] = R0;
ffa09702:	f1 b9       	R1 = [FP -0x4];
ffa09704:	f8 a0       	R0 = [FP + 0xc];
ffa09706:	c1 40       	R1 *= R0;
ffa09708:	b8 a0       	R0 = [FP + 0x8];
ffa0970a:	08 52       	R0 = R0 - R1;
ffa0970c:	01 e8 00 00 	UNLINK;
ffa09710:	10 00       	RTS;
	...

ffa09714 <_memcpy_>:
ffa09714:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09718:	b8 b0       	[FP + 0x8] = R0;
ffa0971a:	f9 b0       	[FP + 0xc] = R1;
ffa0971c:	3a b1       	[FP + 0x10] = R2;
ffa0971e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09720:	f0 bb       	[FP -0x4] = R0;
ffa09722:	0e 20       	JUMP.S 0xffa0973e <_memcpy_+0x2a>;
ffa09724:	ba ac       	P2 = [FP + 0x8];
ffa09726:	50 99       	R0 = B[P2] (X);
ffa09728:	fa ac       	P2 = [FP + 0xc];
ffa0972a:	10 9b       	B[P2] = R0;
ffa0972c:	f8 a0       	R0 = [FP + 0xc];
ffa0972e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09730:	f8 b0       	[FP + 0xc] = R0;
ffa09732:	b8 a0       	R0 = [FP + 0x8];
ffa09734:	08 64       	R0 += 0x1;		/* (  1) */
ffa09736:	b8 b0       	[FP + 0x8] = R0;
ffa09738:	f0 b9       	R0 = [FP -0x4];
ffa0973a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0973c:	f0 bb       	[FP -0x4] = R0;
ffa0973e:	f1 b9       	R1 = [FP -0x4];
ffa09740:	38 a1       	R0 = [FP + 0x10];
ffa09742:	81 08       	CC = R1 < R0;
ffa09744:	f0 1b       	IF CC JUMP 0xffa09724 <_memcpy_+0x10>;
ffa09746:	01 e8 00 00 	UNLINK;
ffa0974a:	10 00       	RTS;

ffa0974c <_memset_>:
ffa0974c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09750:	b8 b0       	[FP + 0x8] = R0;
ffa09752:	3a b1       	[FP + 0x10] = R2;
ffa09754:	01 30       	R0 = R1;
ffa09756:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0975a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0975c:	f0 bb       	[FP -0x4] = R0;
ffa0975e:	0b 20       	JUMP.S 0xffa09774 <_memset_+0x28>;
ffa09760:	ba ac       	P2 = [FP + 0x8];
ffa09762:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa09766:	10 9b       	B[P2] = R0;
ffa09768:	b8 a0       	R0 = [FP + 0x8];
ffa0976a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0976c:	b8 b0       	[FP + 0x8] = R0;
ffa0976e:	f0 b9       	R0 = [FP -0x4];
ffa09770:	08 64       	R0 += 0x1;		/* (  1) */
ffa09772:	f0 bb       	[FP -0x4] = R0;
ffa09774:	f1 b9       	R1 = [FP -0x4];
ffa09776:	38 a1       	R0 = [FP + 0x10];
ffa09778:	81 08       	CC = R1 < R0;
ffa0977a:	f3 1b       	IF CC JUMP 0xffa09760 <_memset_+0x14>;
ffa0977c:	01 e8 00 00 	UNLINK;
ffa09780:	10 00       	RTS;
	...

ffa09784 <_strlen_>:
ffa09784:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09788:	b8 b0       	[FP + 0x8] = R0;
ffa0978a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0978c:	f0 bb       	[FP -0x4] = R0;
ffa0978e:	10 20       	JUMP.S 0xffa097ae <_strlen_+0x2a>;
ffa09790:	f0 b9       	R0 = [FP -0x4];
ffa09792:	08 30       	R1 = R0;
ffa09794:	b8 a0       	R0 = [FP + 0x8];
ffa09796:	41 50       	R1 = R1 + R0;
ffa09798:	11 32       	P2 = R1;
ffa0979a:	50 99       	R0 = B[P2] (X);
ffa0979c:	00 43       	R0 = R0.B (X);
ffa0979e:	00 0c       	CC = R0 == 0x0;
ffa097a0:	04 10       	IF !CC JUMP 0xffa097a8 <_strlen_+0x24>;
ffa097a2:	f0 b9       	R0 = [FP -0x4];
ffa097a4:	e0 bb       	[FP -0x8] = R0;
ffa097a6:	0b 20       	JUMP.S 0xffa097bc <_strlen_+0x38>;
ffa097a8:	f0 b9       	R0 = [FP -0x4];
ffa097aa:	08 64       	R0 += 0x1;		/* (  1) */
ffa097ac:	f0 bb       	[FP -0x4] = R0;
ffa097ae:	f0 b9       	R0 = [FP -0x4];
ffa097b0:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa097b4:	08 09       	CC = R0 <= R1;
ffa097b6:	ed 1b       	IF CC JUMP 0xffa09790 <_strlen_+0xc>;
ffa097b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097ba:	e0 bb       	[FP -0x8] = R0;
ffa097bc:	e0 b9       	R0 = [FP -0x8];
ffa097be:	01 e8 00 00 	UNLINK;
ffa097c2:	10 00       	RTS;

ffa097c4 <_strcpy_>:
ffa097c4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa097c8:	b8 b0       	[FP + 0x8] = R0;
ffa097ca:	f9 b0       	[FP + 0xc] = R1;
ffa097cc:	3a b1       	[FP + 0x10] = R2;
ffa097ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097d0:	f0 bb       	[FP -0x4] = R0;
ffa097d2:	0e 20       	JUMP.S 0xffa097ee <_strcpy_+0x2a>;
ffa097d4:	3a ad       	P2 = [FP + 0x10];
ffa097d6:	50 99       	R0 = B[P2] (X);
ffa097d8:	ba ac       	P2 = [FP + 0x8];
ffa097da:	10 9b       	B[P2] = R0;
ffa097dc:	b8 a0       	R0 = [FP + 0x8];
ffa097de:	08 64       	R0 += 0x1;		/* (  1) */
ffa097e0:	b8 b0       	[FP + 0x8] = R0;
ffa097e2:	38 a1       	R0 = [FP + 0x10];
ffa097e4:	08 64       	R0 += 0x1;		/* (  1) */
ffa097e6:	38 b1       	[FP + 0x10] = R0;
ffa097e8:	f0 b9       	R0 = [FP -0x4];
ffa097ea:	08 64       	R0 += 0x1;		/* (  1) */
ffa097ec:	f0 bb       	[FP -0x4] = R0;
ffa097ee:	3a ad       	P2 = [FP + 0x10];
ffa097f0:	50 99       	R0 = B[P2] (X);
ffa097f2:	00 43       	R0 = R0.B (X);
ffa097f4:	00 0c       	CC = R0 == 0x0;
ffa097f6:	08 18       	IF CC JUMP 0xffa09806 <_strcpy_+0x42>;
ffa097f8:	f0 b9       	R0 = [FP -0x4];
ffa097fa:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa097fe:	08 09       	CC = R0 <= R1;
ffa09800:	ea 1b       	IF CC JUMP 0xffa097d4 <_strcpy_+0x10>;
ffa09802:	00 00       	NOP;
ffa09804:	00 00       	NOP;
ffa09806:	fa ac       	P2 = [FP + 0xc];
ffa09808:	11 91       	R1 = [P2];
ffa0980a:	f0 b9       	R0 = [FP -0x4];
ffa0980c:	01 50       	R0 = R1 + R0;
ffa0980e:	fa ac       	P2 = [FP + 0xc];
ffa09810:	10 93       	[P2] = R0;
ffa09812:	b8 a0       	R0 = [FP + 0x8];
ffa09814:	01 e8 00 00 	UNLINK;
ffa09818:	10 00       	RTS;
	...

ffa0981c <_strprepend>:
ffa0981c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09820:	b8 b0       	[FP + 0x8] = R0;
ffa09822:	f9 b0       	[FP + 0xc] = R1;
ffa09824:	3a b1       	[FP + 0x10] = R2;
ffa09826:	38 a1       	R0 = [FP + 0x10];
ffa09828:	ff e3 ae ff 	CALL 0xffa09784 <_strlen_>;
ffa0982c:	d0 bb       	[FP -0xc] = R0;
ffa0982e:	fa ac       	P2 = [FP + 0xc];
ffa09830:	10 91       	R0 = [P2];
ffa09832:	08 30       	R1 = R0;
ffa09834:	b8 a0       	R0 = [FP + 0x8];
ffa09836:	08 52       	R0 = R0 - R1;
ffa09838:	e0 bb       	[FP -0x8] = R0;
ffa0983a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0983c:	f0 bb       	[FP -0x4] = R0;
ffa0983e:	0e 20       	JUMP.S 0xffa0985a <_strprepend+0x3e>;
ffa09840:	3a ad       	P2 = [FP + 0x10];
ffa09842:	50 99       	R0 = B[P2] (X);
ffa09844:	ea b9       	P2 = [FP -0x8];
ffa09846:	10 9b       	B[P2] = R0;
ffa09848:	e0 b9       	R0 = [FP -0x8];
ffa0984a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0984c:	e0 bb       	[FP -0x8] = R0;
ffa0984e:	38 a1       	R0 = [FP + 0x10];
ffa09850:	08 64       	R0 += 0x1;		/* (  1) */
ffa09852:	38 b1       	[FP + 0x10] = R0;
ffa09854:	f0 b9       	R0 = [FP -0x4];
ffa09856:	08 64       	R0 += 0x1;		/* (  1) */
ffa09858:	f0 bb       	[FP -0x4] = R0;
ffa0985a:	f1 b9       	R1 = [FP -0x4];
ffa0985c:	d0 b9       	R0 = [FP -0xc];
ffa0985e:	81 08       	CC = R1 < R0;
ffa09860:	f0 1b       	IF CC JUMP 0xffa09840 <_strprepend+0x24>;
ffa09862:	00 00       	NOP;
ffa09864:	00 00       	NOP;
ffa09866:	fa ac       	P2 = [FP + 0xc];
ffa09868:	10 91       	R0 = [P2];
ffa0986a:	08 30       	R1 = R0;
ffa0986c:	b8 a0       	R0 = [FP + 0x8];
ffa0986e:	08 52       	R0 = R0 - R1;
ffa09870:	01 e8 00 00 	UNLINK;
ffa09874:	10 00       	RTS;
	...

ffa09878 <_strcmp>:
ffa09878:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0987c:	b8 b0       	[FP + 0x8] = R0;
ffa0987e:	f9 b0       	[FP + 0xc] = R1;
ffa09880:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09882:	f0 bb       	[FP -0x4] = R0;
ffa09884:	1a 20       	JUMP.S 0xffa098b8 <_strcmp+0x40>;
ffa09886:	ba ac       	P2 = [FP + 0x8];
ffa09888:	51 99       	R1 = B[P2] (X);
ffa0988a:	fa ac       	P2 = [FP + 0xc];
ffa0988c:	50 99       	R0 = B[P2] (X);
ffa0988e:	09 43       	R1 = R1.B (X);
ffa09890:	00 43       	R0 = R0.B (X);
ffa09892:	01 08       	CC = R1 == R0;
ffa09894:	18 02       	CC = !CC;
ffa09896:	00 02       	R0 = CC;
ffa09898:	08 30       	R1 = R0;
ffa0989a:	b8 a0       	R0 = [FP + 0x8];
ffa0989c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0989e:	b8 b0       	[FP + 0x8] = R0;
ffa098a0:	f8 a0       	R0 = [FP + 0xc];
ffa098a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa098a4:	f8 b0       	[FP + 0xc] = R0;
ffa098a6:	48 43       	R0 = R1.B (Z);
ffa098a8:	00 0c       	CC = R0 == 0x0;
ffa098aa:	04 18       	IF CC JUMP 0xffa098b2 <_strcmp+0x3a>;
ffa098ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098ae:	e0 bb       	[FP -0x8] = R0;
ffa098b0:	17 20       	JUMP.S 0xffa098de <_strcmp+0x66>;
ffa098b2:	f0 b9       	R0 = [FP -0x4];
ffa098b4:	08 64       	R0 += 0x1;		/* (  1) */
ffa098b6:	f0 bb       	[FP -0x4] = R0;
ffa098b8:	ba ac       	P2 = [FP + 0x8];
ffa098ba:	50 99       	R0 = B[P2] (X);
ffa098bc:	00 43       	R0 = R0.B (X);
ffa098be:	00 0c       	CC = R0 == 0x0;
ffa098c0:	0d 18       	IF CC JUMP 0xffa098da <_strcmp+0x62>;
ffa098c2:	00 00       	NOP;
ffa098c4:	00 00       	NOP;
ffa098c6:	fa ac       	P2 = [FP + 0xc];
ffa098c8:	50 99       	R0 = B[P2] (X);
ffa098ca:	00 43       	R0 = R0.B (X);
ffa098cc:	00 0c       	CC = R0 == 0x0;
ffa098ce:	06 18       	IF CC JUMP 0xffa098da <_strcmp+0x62>;
ffa098d0:	f0 b9       	R0 = [FP -0x4];
ffa098d2:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa098d6:	08 09       	CC = R0 <= R1;
ffa098d8:	d7 1b       	IF CC JUMP 0xffa09886 <_strcmp+0xe>;
ffa098da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098dc:	e0 bb       	[FP -0x8] = R0;
ffa098de:	e0 b9       	R0 = [FP -0x8];
ffa098e0:	01 e8 00 00 	UNLINK;
ffa098e4:	10 00       	RTS;
	...

ffa098e8 <_substr>:
ffa098e8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa098ec:	b8 b0       	[FP + 0x8] = R0;
ffa098ee:	f9 b0       	[FP + 0xc] = R1;
ffa098f0:	3a b1       	[FP + 0x10] = R2;
ffa098f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098f4:	e0 bb       	[FP -0x8] = R0;
ffa098f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098f8:	f0 bb       	[FP -0x4] = R0;
ffa098fa:	39 20       	JUMP.S 0xffa0996c <_substr+0x84>;
ffa098fc:	ba ac       	P2 = [FP + 0x8];
ffa098fe:	51 99       	R1 = B[P2] (X);
ffa09900:	fa ac       	P2 = [FP + 0xc];
ffa09902:	50 99       	R0 = B[P2] (X);
ffa09904:	09 43       	R1 = R1.B (X);
ffa09906:	00 43       	R0 = R0.B (X);
ffa09908:	01 08       	CC = R1 == R0;
ffa0990a:	2b 10       	IF !CC JUMP 0xffa09960 <_substr+0x78>;
ffa0990c:	b8 a0       	R0 = [FP + 0x8];
ffa0990e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09910:	c0 bb       	[FP -0x10] = R0;
ffa09912:	f8 a0       	R0 = [FP + 0xc];
ffa09914:	08 64       	R0 += 0x1;		/* (  1) */
ffa09916:	d0 bb       	[FP -0xc] = R0;
ffa09918:	e0 b9       	R0 = [FP -0x8];
ffa0991a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0991c:	f0 bb       	[FP -0x4] = R0;
ffa0991e:	12 20       	JUMP.S 0xffa09942 <_substr+0x5a>;
ffa09920:	c0 b9       	R0 = [FP -0x10];
ffa09922:	08 64       	R0 += 0x1;		/* (  1) */
ffa09924:	c0 bb       	[FP -0x10] = R0;
ffa09926:	d0 b9       	R0 = [FP -0xc];
ffa09928:	08 64       	R0 += 0x1;		/* (  1) */
ffa0992a:	d0 bb       	[FP -0xc] = R0;
ffa0992c:	f0 b9       	R0 = [FP -0x4];
ffa0992e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09930:	f0 bb       	[FP -0x4] = R0;
ffa09932:	ca b9       	P2 = [FP -0x10];
ffa09934:	50 99       	R0 = B[P2] (X);
ffa09936:	00 43       	R0 = R0.B (X);
ffa09938:	00 0c       	CC = R0 == 0x0;
ffa0993a:	04 10       	IF !CC JUMP 0xffa09942 <_substr+0x5a>;
ffa0993c:	f0 b9       	R0 = [FP -0x4];
ffa0993e:	b0 bb       	[FP -0x14] = R0;
ffa09940:	28 20       	JUMP.S 0xffa09990 <_substr+0xa8>;
ffa09942:	ca b9       	P2 = [FP -0x10];
ffa09944:	51 99       	R1 = B[P2] (X);
ffa09946:	da b9       	P2 = [FP -0xc];
ffa09948:	50 99       	R0 = B[P2] (X);
ffa0994a:	09 43       	R1 = R1.B (X);
ffa0994c:	00 43       	R0 = R0.B (X);
ffa0994e:	01 08       	CC = R1 == R0;
ffa09950:	08 10       	IF !CC JUMP 0xffa09960 <_substr+0x78>;
ffa09952:	00 00       	NOP;
ffa09954:	00 00       	NOP;
ffa09956:	da b9       	P2 = [FP -0xc];
ffa09958:	50 99       	R0 = B[P2] (X);
ffa0995a:	00 43       	R0 = R0.B (X);
ffa0995c:	00 0c       	CC = R0 == 0x0;
ffa0995e:	e1 13       	IF !CC JUMP 0xffa09920 <_substr+0x38>;
ffa09960:	f8 a0       	R0 = [FP + 0xc];
ffa09962:	08 64       	R0 += 0x1;		/* (  1) */
ffa09964:	f8 b0       	[FP + 0xc] = R0;
ffa09966:	e0 b9       	R0 = [FP -0x8];
ffa09968:	08 64       	R0 += 0x1;		/* (  1) */
ffa0996a:	e0 bb       	[FP -0x8] = R0;
ffa0996c:	ba ac       	P2 = [FP + 0x8];
ffa0996e:	50 99       	R0 = B[P2] (X);
ffa09970:	00 43       	R0 = R0.B (X);
ffa09972:	00 0c       	CC = R0 == 0x0;
ffa09974:	0c 18       	IF CC JUMP 0xffa0998c <_substr+0xa4>;
ffa09976:	00 00       	NOP;
ffa09978:	00 00       	NOP;
ffa0997a:	fa ac       	P2 = [FP + 0xc];
ffa0997c:	50 99       	R0 = B[P2] (X);
ffa0997e:	00 43       	R0 = R0.B (X);
ffa09980:	00 0c       	CC = R0 == 0x0;
ffa09982:	05 18       	IF CC JUMP 0xffa0998c <_substr+0xa4>;
ffa09984:	e1 b9       	R1 = [FP -0x8];
ffa09986:	38 a1       	R0 = [FP + 0x10];
ffa09988:	81 08       	CC = R1 < R0;
ffa0998a:	b9 1b       	IF CC JUMP 0xffa098fc <_substr+0x14>;
ffa0998c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0998e:	b0 bb       	[FP -0x14] = R0;
ffa09990:	b0 b9       	R0 = [FP -0x14];
ffa09992:	01 e8 00 00 	UNLINK;
ffa09996:	10 00       	RTS;

ffa09998 <_sprintf_int>:
ffa09998:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0999c:	b8 b0       	[FP + 0x8] = R0;
ffa0999e:	f9 b0       	[FP + 0xc] = R1;
ffa099a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099a2:	c0 bb       	[FP -0x10] = R0;
ffa099a4:	f8 a0       	R0 = [FP + 0xc];
ffa099a6:	00 0c       	CC = R0 == 0x0;
ffa099a8:	0b 10       	IF !CC JUMP 0xffa099be <_sprintf_int+0x26>;
ffa099aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa099ae:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa099b2:	52 91       	P2 = [P2];
ffa099b4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa099b6:	10 9b       	B[P2] = R0;
ffa099b8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099ba:	c0 bb       	[FP -0x10] = R0;
ffa099bc:	90 20       	JUMP.S 0xffa09adc <_sprintf_int+0x144>;
ffa099be:	f8 a0       	R0 = [FP + 0xc];
ffa099c0:	00 0d       	CC = R0 <= 0x0;
ffa099c2:	3c 18       	IF CC JUMP 0xffa09a3a <_sprintf_int+0xa2>;
ffa099c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099c6:	c0 bb       	[FP -0x10] = R0;
ffa099c8:	31 20       	JUMP.S 0xffa09a2a <_sprintf_int+0x92>;
ffa099ca:	f9 a0       	R1 = [FP + 0xc];
ffa099cc:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa099d0:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa099d4:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa099d8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa099dc:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa099e0:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa099e4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa099e8:	0b c4 00 00 	R0 = (A0 += A1);
ffa099ec:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa099f0:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa099f4:	02 52       	R0 = R2 - R0;
ffa099f6:	f0 bb       	[FP -0x4] = R0;
ffa099f8:	f1 b9       	R1 = [FP -0x4];
ffa099fa:	01 30       	R0 = R1;
ffa099fc:	10 4f       	R0 <<= 0x2;
ffa099fe:	08 50       	R0 = R0 + R1;
ffa09a00:	08 4f       	R0 <<= 0x1;
ffa09a02:	08 30       	R1 = R0;
ffa09a04:	f8 a0       	R0 = [FP + 0xc];
ffa09a06:	08 52       	R0 = R0 - R1;
ffa09a08:	d0 bb       	[FP -0xc] = R0;
ffa09a0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09a0e:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09a12:	11 91       	R1 = [P2];
ffa09a14:	c0 b9       	R0 = [FP -0x10];
ffa09a16:	41 50       	R1 = R1 + R0;
ffa09a18:	11 32       	P2 = R1;
ffa09a1a:	d0 b9       	R0 = [FP -0xc];
ffa09a1c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09a1e:	10 9b       	B[P2] = R0;
ffa09a20:	c0 b9       	R0 = [FP -0x10];
ffa09a22:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a24:	c0 bb       	[FP -0x10] = R0;
ffa09a26:	f0 b9       	R0 = [FP -0x4];
ffa09a28:	f8 b0       	[FP + 0xc] = R0;
ffa09a2a:	f8 a0       	R0 = [FP + 0xc];
ffa09a2c:	00 0d       	CC = R0 <= 0x0;
ffa09a2e:	57 18       	IF CC JUMP 0xffa09adc <_sprintf_int+0x144>;
ffa09a30:	c0 b9       	R0 = [FP -0x10];
ffa09a32:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09a34:	08 09       	CC = R0 <= R1;
ffa09a36:	ca 1b       	IF CC JUMP 0xffa099ca <_sprintf_int+0x32>;
ffa09a38:	52 20       	JUMP.S 0xffa09adc <_sprintf_int+0x144>;
ffa09a3a:	f8 a0       	R0 = [FP + 0xc];
ffa09a3c:	80 0c       	CC = R0 < 0x0;
ffa09a3e:	4f 10       	IF !CC JUMP 0xffa09adc <_sprintf_int+0x144>;
ffa09a40:	f8 a0       	R0 = [FP + 0xc];
ffa09a42:	08 30       	R1 = R0;
ffa09a44:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09a46:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09a48:	f8 4f       	R0 <<= 0x1f;
ffa09a4a:	08 52       	R0 = R0 - R1;
ffa09a4c:	f8 b0       	[FP + 0xc] = R0;
ffa09a4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a50:	c0 bb       	[FP -0x10] = R0;
ffa09a52:	31 20       	JUMP.S 0xffa09ab4 <_sprintf_int+0x11c>;
ffa09a54:	f9 a0       	R1 = [FP + 0xc];
ffa09a56:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09a5a:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09a5e:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09a62:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09a66:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09a6a:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09a6e:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09a72:	0b c4 00 00 	R0 = (A0 += A1);
ffa09a76:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09a7a:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09a7e:	02 52       	R0 = R2 - R0;
ffa09a80:	f0 bb       	[FP -0x4] = R0;
ffa09a82:	f1 b9       	R1 = [FP -0x4];
ffa09a84:	01 30       	R0 = R1;
ffa09a86:	10 4f       	R0 <<= 0x2;
ffa09a88:	08 50       	R0 = R0 + R1;
ffa09a8a:	08 4f       	R0 <<= 0x1;
ffa09a8c:	08 30       	R1 = R0;
ffa09a8e:	f8 a0       	R0 = [FP + 0xc];
ffa09a90:	08 52       	R0 = R0 - R1;
ffa09a92:	d0 bb       	[FP -0xc] = R0;
ffa09a94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09a98:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09a9c:	11 91       	R1 = [P2];
ffa09a9e:	c0 b9       	R0 = [FP -0x10];
ffa09aa0:	41 50       	R1 = R1 + R0;
ffa09aa2:	11 32       	P2 = R1;
ffa09aa4:	d0 b9       	R0 = [FP -0xc];
ffa09aa6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09aa8:	10 9b       	B[P2] = R0;
ffa09aaa:	c0 b9       	R0 = [FP -0x10];
ffa09aac:	08 64       	R0 += 0x1;		/* (  1) */
ffa09aae:	c0 bb       	[FP -0x10] = R0;
ffa09ab0:	f0 b9       	R0 = [FP -0x4];
ffa09ab2:	f8 b0       	[FP + 0xc] = R0;
ffa09ab4:	f8 a0       	R0 = [FP + 0xc];
ffa09ab6:	00 0d       	CC = R0 <= 0x0;
ffa09ab8:	05 18       	IF CC JUMP 0xffa09ac2 <_sprintf_int+0x12a>;
ffa09aba:	c0 b9       	R0 = [FP -0x10];
ffa09abc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09abe:	08 09       	CC = R0 <= R1;
ffa09ac0:	ca 1b       	IF CC JUMP 0xffa09a54 <_sprintf_int+0xbc>;
ffa09ac2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09ac6:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09aca:	11 91       	R1 = [P2];
ffa09acc:	c0 b9       	R0 = [FP -0x10];
ffa09ace:	41 50       	R1 = R1 + R0;
ffa09ad0:	11 32       	P2 = R1;
ffa09ad2:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09ad4:	10 9b       	B[P2] = R0;
ffa09ad6:	c0 b9       	R0 = [FP -0x10];
ffa09ad8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ada:	c0 bb       	[FP -0x10] = R0;
ffa09adc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ade:	e0 bb       	[FP -0x8] = R0;
ffa09ae0:	16 20       	JUMP.S 0xffa09b0c <_sprintf_int+0x174>;
ffa09ae2:	e0 b9       	R0 = [FP -0x8];
ffa09ae4:	08 30       	R1 = R0;
ffa09ae6:	b8 a0       	R0 = [FP + 0x8];
ffa09ae8:	41 50       	R1 = R1 + R0;
ffa09aea:	09 32       	P1 = R1;
ffa09aec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09af0:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09af4:	12 91       	R2 = [P2];
ffa09af6:	c1 b9       	R1 = [FP -0x10];
ffa09af8:	e0 b9       	R0 = [FP -0x8];
ffa09afa:	01 52       	R0 = R1 - R0;
ffa09afc:	02 50       	R0 = R2 + R0;
ffa09afe:	10 32       	P2 = R0;
ffa09b00:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09b02:	50 99       	R0 = B[P2] (X);
ffa09b04:	08 9b       	B[P1] = R0;
ffa09b06:	e0 b9       	R0 = [FP -0x8];
ffa09b08:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b0a:	e0 bb       	[FP -0x8] = R0;
ffa09b0c:	e1 b9       	R1 = [FP -0x8];
ffa09b0e:	c0 b9       	R0 = [FP -0x10];
ffa09b10:	81 08       	CC = R1 < R0;
ffa09b12:	e8 1b       	IF CC JUMP 0xffa09ae2 <_sprintf_int+0x14a>;
ffa09b14:	c0 b9       	R0 = [FP -0x10];
ffa09b16:	01 e8 00 00 	UNLINK;
ffa09b1a:	10 00       	RTS;

ffa09b1c <_sprintf_hex>:
ffa09b1c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09b20:	b8 b0       	[FP + 0x8] = R0;
ffa09b22:	f9 b0       	[FP + 0xc] = R1;
ffa09b24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b26:	d0 bb       	[FP -0xc] = R0;
ffa09b28:	d0 b9       	R0 = [FP -0xc];
ffa09b2a:	08 30       	R1 = R0;
ffa09b2c:	b8 a0       	R0 = [FP + 0x8];
ffa09b2e:	41 50       	R1 = R1 + R0;
ffa09b30:	11 32       	P2 = R1;
ffa09b32:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09b34:	10 9b       	B[P2] = R0;
ffa09b36:	d0 b9       	R0 = [FP -0xc];
ffa09b38:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b3a:	d0 bb       	[FP -0xc] = R0;
ffa09b3c:	d0 b9       	R0 = [FP -0xc];
ffa09b3e:	08 30       	R1 = R0;
ffa09b40:	b8 a0       	R0 = [FP + 0x8];
ffa09b42:	41 50       	R1 = R1 + R0;
ffa09b44:	11 32       	P2 = R1;
ffa09b46:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09b4a:	10 9b       	B[P2] = R0;
ffa09b4c:	d0 b9       	R0 = [FP -0xc];
ffa09b4e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b50:	d0 bb       	[FP -0xc] = R0;
ffa09b52:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b54:	c0 bb       	[FP -0x10] = R0;
ffa09b56:	2c 20       	JUMP.S 0xffa09bae <_sprintf_hex+0x92>;
ffa09b58:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09b5a:	c0 b9       	R0 = [FP -0x10];
ffa09b5c:	01 52       	R0 = R1 - R0;
ffa09b5e:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09b62:	f8 a0       	R0 = [FP + 0xc];
ffa09b64:	08 40       	R0 >>>= R1;
ffa09b66:	e0 bb       	[FP -0x8] = R0;
ffa09b68:	e0 b9       	R0 = [FP -0x8];
ffa09b6a:	08 30       	R1 = R0;
ffa09b6c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09b6e:	01 54       	R0 = R1 & R0;
ffa09b70:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b74:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b78:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09b7a:	08 09       	CC = R0 <= R1;
ffa09b7c:	07 18       	IF CC JUMP 0xffa09b8a <_sprintf_hex+0x6e>;
ffa09b7e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b82:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09b84:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b88:	06 20       	JUMP.S 0xffa09b94 <_sprintf_hex+0x78>;
ffa09b8a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b8e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09b90:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b94:	d1 b9       	R1 = [FP -0xc];
ffa09b96:	c0 b9       	R0 = [FP -0x10];
ffa09b98:	01 50       	R0 = R1 + R0;
ffa09b9a:	08 30       	R1 = R0;
ffa09b9c:	b8 a0       	R0 = [FP + 0x8];
ffa09b9e:	41 50       	R1 = R1 + R0;
ffa09ba0:	11 32       	P2 = R1;
ffa09ba2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09ba6:	10 9b       	B[P2] = R0;
ffa09ba8:	c0 b9       	R0 = [FP -0x10];
ffa09baa:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bac:	c0 bb       	[FP -0x10] = R0;
ffa09bae:	c0 b9       	R0 = [FP -0x10];
ffa09bb0:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09bb2:	08 09       	CC = R0 <= R1;
ffa09bb4:	d2 1b       	IF CC JUMP 0xffa09b58 <_sprintf_hex+0x3c>;
ffa09bb6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09bb8:	01 e8 00 00 	UNLINK;
ffa09bbc:	10 00       	RTS;
	...

ffa09bc0 <_strprintf_int>:
ffa09bc0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09bc4:	b8 b0       	[FP + 0x8] = R0;
ffa09bc6:	f9 b0       	[FP + 0xc] = R1;
ffa09bc8:	3a b1       	[FP + 0x10] = R2;
ffa09bca:	39 a1       	R1 = [FP + 0x10];
ffa09bcc:	b8 a0       	R0 = [FP + 0x8];
ffa09bce:	ff e3 e5 fe 	CALL 0xffa09998 <_sprintf_int>;
ffa09bd2:	f0 bb       	[FP -0x4] = R0;
ffa09bd4:	fa ac       	P2 = [FP + 0xc];
ffa09bd6:	11 91       	R1 = [P2];
ffa09bd8:	f0 b9       	R0 = [FP -0x4];
ffa09bda:	01 50       	R0 = R1 + R0;
ffa09bdc:	fa ac       	P2 = [FP + 0xc];
ffa09bde:	10 93       	[P2] = R0;
ffa09be0:	f0 b9       	R0 = [FP -0x4];
ffa09be2:	08 30       	R1 = R0;
ffa09be4:	b8 a0       	R0 = [FP + 0x8];
ffa09be6:	08 50       	R0 = R0 + R1;
ffa09be8:	b8 b0       	[FP + 0x8] = R0;
ffa09bea:	b8 a0       	R0 = [FP + 0x8];
ffa09bec:	01 e8 00 00 	UNLINK;
ffa09bf0:	10 00       	RTS;
	...

ffa09bf4 <_strprintf_hex>:
ffa09bf4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09bf8:	b8 b0       	[FP + 0x8] = R0;
ffa09bfa:	f9 b0       	[FP + 0xc] = R1;
ffa09bfc:	3a b1       	[FP + 0x10] = R2;
ffa09bfe:	39 a1       	R1 = [FP + 0x10];
ffa09c00:	b8 a0       	R0 = [FP + 0x8];
ffa09c02:	ff e3 8d ff 	CALL 0xffa09b1c <_sprintf_hex>;
ffa09c06:	f0 bb       	[FP -0x4] = R0;
ffa09c08:	fa ac       	P2 = [FP + 0xc];
ffa09c0a:	11 91       	R1 = [P2];
ffa09c0c:	f0 b9       	R0 = [FP -0x4];
ffa09c0e:	01 50       	R0 = R1 + R0;
ffa09c10:	fa ac       	P2 = [FP + 0xc];
ffa09c12:	10 93       	[P2] = R0;
ffa09c14:	f0 b9       	R0 = [FP -0x4];
ffa09c16:	08 30       	R1 = R0;
ffa09c18:	b8 a0       	R0 = [FP + 0x8];
ffa09c1a:	08 50       	R0 = R0 + R1;
ffa09c1c:	b8 b0       	[FP + 0x8] = R0;
ffa09c1e:	b8 a0       	R0 = [FP + 0x8];
ffa09c20:	01 e8 00 00 	UNLINK;
ffa09c24:	10 00       	RTS;
	...

ffa09c28 <_atoi>:
ffa09c28:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09c2c:	b8 b0       	[FP + 0x8] = R0;
ffa09c2e:	f9 b0       	[FP + 0xc] = R1;
ffa09c30:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c32:	d0 bb       	[FP -0xc] = R0;
ffa09c34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c36:	e0 bb       	[FP -0x8] = R0;
ffa09c38:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09c3a:	f0 bb       	[FP -0x4] = R0;
ffa09c3c:	ba ac       	P2 = [FP + 0x8];
ffa09c3e:	50 99       	R0 = B[P2] (X);
ffa09c40:	00 43       	R0 = R0.B (X);
ffa09c42:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa09c44:	08 08       	CC = R0 == R1;
ffa09c46:	2c 10       	IF !CC JUMP 0xffa09c9e <_atoi+0x76>;
ffa09c48:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09c4a:	f0 bb       	[FP -0x4] = R0;
ffa09c4c:	b8 a0       	R0 = [FP + 0x8];
ffa09c4e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c50:	b8 b0       	[FP + 0x8] = R0;
ffa09c52:	d0 b9       	R0 = [FP -0xc];
ffa09c54:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c56:	d0 bb       	[FP -0xc] = R0;
ffa09c58:	23 20       	JUMP.S 0xffa09c9e <_atoi+0x76>;
ffa09c5a:	ba ac       	P2 = [FP + 0x8];
ffa09c5c:	50 99       	R0 = B[P2] (X);
ffa09c5e:	01 43       	R1 = R0.B (X);
ffa09c60:	e0 b9       	R0 = [FP -0x8];
ffa09c62:	01 50       	R0 = R1 + R0;
ffa09c64:	80 66       	R0 += -0x30;		/* (-48) */
ffa09c66:	e0 bb       	[FP -0x8] = R0;
ffa09c68:	b8 a0       	R0 = [FP + 0x8];
ffa09c6a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c6c:	b8 b0       	[FP + 0x8] = R0;
ffa09c6e:	d0 b9       	R0 = [FP -0xc];
ffa09c70:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c72:	d0 bb       	[FP -0xc] = R0;
ffa09c74:	ba ac       	P2 = [FP + 0x8];
ffa09c76:	50 99       	R0 = B[P2] (X);
ffa09c78:	00 43       	R0 = R0.B (X);
ffa09c7a:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09c7c:	08 09       	CC = R0 <= R1;
ffa09c7e:	10 18       	IF CC JUMP 0xffa09c9e <_atoi+0x76>;
ffa09c80:	00 00       	NOP;
ffa09c82:	00 00       	NOP;
ffa09c84:	ba ac       	P2 = [FP + 0x8];
ffa09c86:	50 99       	R0 = B[P2] (X);
ffa09c88:	00 43       	R0 = R0.B (X);
ffa09c8a:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09c8c:	08 09       	CC = R0 <= R1;
ffa09c8e:	08 10       	IF !CC JUMP 0xffa09c9e <_atoi+0x76>;
ffa09c90:	e0 b9       	R0 = [FP -0x8];
ffa09c92:	08 30       	R1 = R0;
ffa09c94:	11 4f       	R1 <<= 0x2;
ffa09c96:	41 50       	R1 = R1 + R0;
ffa09c98:	82 c6 09 80 	R0 = R1 << 0x1;
ffa09c9c:	e0 bb       	[FP -0x8] = R0;
ffa09c9e:	ba ac       	P2 = [FP + 0x8];
ffa09ca0:	50 99       	R0 = B[P2] (X);
ffa09ca2:	00 43       	R0 = R0.B (X);
ffa09ca4:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09ca6:	08 09       	CC = R0 <= R1;
ffa09ca8:	0d 18       	IF CC JUMP 0xffa09cc2 <_atoi+0x9a>;
ffa09caa:	00 00       	NOP;
ffa09cac:	00 00       	NOP;
ffa09cae:	ba ac       	P2 = [FP + 0x8];
ffa09cb0:	50 99       	R0 = B[P2] (X);
ffa09cb2:	00 43       	R0 = R0.B (X);
ffa09cb4:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09cb6:	08 09       	CC = R0 <= R1;
ffa09cb8:	05 10       	IF !CC JUMP 0xffa09cc2 <_atoi+0x9a>;
ffa09cba:	d1 b9       	R1 = [FP -0xc];
ffa09cbc:	f8 a0       	R0 = [FP + 0xc];
ffa09cbe:	81 08       	CC = R1 < R0;
ffa09cc0:	cd 1b       	IF CC JUMP 0xffa09c5a <_atoi+0x32>;
ffa09cc2:	e1 b9       	R1 = [FP -0x8];
ffa09cc4:	f0 b9       	R0 = [FP -0x4];
ffa09cc6:	c8 40       	R0 *= R1;
ffa09cc8:	01 e8 00 00 	UNLINK;
ffa09ccc:	10 00       	RTS;
	...

ffa09cd0 <_udelay>:
ffa09cd0:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09cd4:	b8 b0       	[FP + 0x8] = R0;
ffa09cd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cd8:	e0 bb       	[FP -0x8] = R0;
ffa09cda:	10 20       	JUMP.S 0xffa09cfa <_udelay+0x2a>;
ffa09cdc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cde:	f0 bb       	[FP -0x4] = R0;
ffa09ce0:	05 20       	JUMP.S 0xffa09cea <_udelay+0x1a>;
ffa09ce2:	00 00       	NOP;
ffa09ce4:	f0 b9       	R0 = [FP -0x4];
ffa09ce6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ce8:	f0 bb       	[FP -0x4] = R0;
ffa09cea:	f0 b9       	R0 = [FP -0x4];
ffa09cec:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa09cf0:	08 09       	CC = R0 <= R1;
ffa09cf2:	f8 1b       	IF CC JUMP 0xffa09ce2 <_udelay+0x12>;
ffa09cf4:	e0 b9       	R0 = [FP -0x8];
ffa09cf6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cf8:	e0 bb       	[FP -0x8] = R0;
ffa09cfa:	e1 b9       	R1 = [FP -0x8];
ffa09cfc:	b8 a0       	R0 = [FP + 0x8];
ffa09cfe:	81 08       	CC = R1 < R0;
ffa09d00:	ee 1b       	IF CC JUMP 0xffa09cdc <_udelay+0xc>;
ffa09d02:	01 e8 00 00 	UNLINK;
ffa09d06:	10 00       	RTS;

ffa09d08 <_spi_delay>:
ffa09d08:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09d0c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09d0e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d12:	08 20       	JUMP.S 0xffa09d22 <_spi_delay+0x1a>;
ffa09d14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa09d18:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09d1c:	50 95       	R0 = W[P2] (X);
ffa09d1e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d22:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09d26:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa09d28:	08 54       	R0 = R0 & R1;
ffa09d2a:	00 0c       	CC = R0 == 0x0;
ffa09d2c:	f4 13       	IF !CC JUMP 0xffa09d14 <_spi_delay+0xc>;
ffa09d2e:	08 20       	JUMP.S 0xffa09d3e <_spi_delay+0x36>;
ffa09d30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09d34:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09d38:	50 95       	R0 = W[P2] (X);
ffa09d3a:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d3e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09d42:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa09d44:	00 02       	R0 = CC;
ffa09d46:	00 0c       	CC = R0 == 0x0;
ffa09d48:	f4 1b       	IF CC JUMP 0xffa09d30 <_spi_delay+0x28>;
ffa09d4a:	01 e8 00 00 	UNLINK;
ffa09d4e:	10 00       	RTS;

ffa09d50 <_spi_write_register>:
ffa09d50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d54:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09d58:	01 30       	R0 = R1;
ffa09d5a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09d5e:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa09d62:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa09d64:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09d68:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09d6c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09d70:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09d72:	10 97       	W[P2] = R0;
ffa09d74:	24 00       	SSYNC;
ffa09d76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09d7a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09d7e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09d82:	10 97       	W[P2] = R0;
ffa09d84:	ff e3 c2 ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09d88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09d8c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09d90:	50 95       	R0 = W[P2] (X);
ffa09d92:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09d96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09d9a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09d9e:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa09da2:	10 97       	W[P2] = R0;
ffa09da4:	ff e3 b2 ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09da8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09dac:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09db0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09db2:	10 97       	W[P2] = R0;
ffa09db4:	24 00       	SSYNC;
ffa09db6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09dba:	01 e8 00 00 	UNLINK;
ffa09dbe:	10 00       	RTS;

ffa09dc0 <_spi_write_register_ver>:
ffa09dc0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09dc4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09dc8:	01 30       	R0 = R1;
ffa09dca:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09dce:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09dd2:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa09dd6:	ff e3 bd ff 	CALL 0xffa09d50 <_spi_write_register>;
ffa09dda:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09dde:	00 e3 09 00 	CALL 0xffa09df0 <_spi_read_register>;
ffa09de2:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa09de6:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa09dea:	01 e8 00 00 	UNLINK;
ffa09dee:	10 00       	RTS;

ffa09df0 <_spi_read_register>:
ffa09df0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09df4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09df8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09dfc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09e00:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e02:	10 97       	W[P2] = R0;
ffa09e04:	24 00       	SSYNC;
ffa09e06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09e0a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e0e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e12:	10 97       	W[P2] = R0;
ffa09e14:	ff e3 7a ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09e18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e1c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e20:	50 95       	R0 = W[P2] (X);
ffa09e22:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e26:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e2a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e30:	10 97       	W[P2] = R0;
ffa09e32:	ff e3 6b ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09e36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e3a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e3e:	50 95       	R0 = W[P2] (X);
ffa09e40:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e44:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e48:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09e4c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e4e:	10 97       	W[P2] = R0;
ffa09e50:	24 00       	SSYNC;
ffa09e52:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e56:	01 e8 00 00 	UNLINK;
ffa09e5a:	10 00       	RTS;

ffa09e5c <_spi_read_register_status>:
ffa09e5c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09e60:	f9 b0       	[FP + 0xc] = R1;
ffa09e62:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09e6a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09e6e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e70:	10 97       	W[P2] = R0;
ffa09e72:	24 00       	SSYNC;
ffa09e74:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09e78:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e7c:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e80:	10 97       	W[P2] = R0;
ffa09e82:	ff e3 43 ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09e86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e8a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e8e:	50 95       	R0 = W[P2] (X);
ffa09e90:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e98:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e9c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e9e:	10 97       	W[P2] = R0;
ffa09ea0:	ff e3 34 ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09ea4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09ea8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09eac:	50 95       	R0 = W[P2] (X);
ffa09eae:	fa ac       	P2 = [FP + 0xc];
ffa09eb0:	10 9b       	B[P2] = R0;
ffa09eb2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09eb6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09eba:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09ebc:	10 97       	W[P2] = R0;
ffa09ebe:	24 00       	SSYNC;
ffa09ec0:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09ec4:	01 e8 00 00 	UNLINK;
ffa09ec8:	10 00       	RTS;
	...

ffa09ecc <_spi_write_byte>:
ffa09ecc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ed0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09ed4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09ed8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09edc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09ede:	10 97       	W[P2] = R0;
ffa09ee0:	24 00       	SSYNC;
ffa09ee2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09ee6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09eea:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09eee:	10 97       	W[P2] = R0;
ffa09ef0:	ff e3 0c ff 	CALL 0xffa09d08 <_spi_delay>;
ffa09ef4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09ef8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09efc:	50 95       	R0 = W[P2] (X);
ffa09efe:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09f02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09f06:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09f0a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f0c:	10 97       	W[P2] = R0;
ffa09f0e:	24 00       	SSYNC;
ffa09f10:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09f14:	01 e8 00 00 	UNLINK;
ffa09f18:	10 00       	RTS;
	...

ffa09f1c <_spi_write_packet>:
ffa09f1c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09f20:	b8 b0       	[FP + 0x8] = R0;
ffa09f22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09f26:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09f2a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f2c:	10 97       	W[P2] = R0;
ffa09f2e:	24 00       	SSYNC;
ffa09f30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09f34:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09f38:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa09f3c:	10 97       	W[P2] = R0;
ffa09f3e:	ff e3 e5 fe 	CALL 0xffa09d08 <_spi_delay>;
ffa09f42:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09f46:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa09f4a:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa09f4e:	10 97       	W[P2] = R0;
ffa09f50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09f54:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa09f58:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09f5a:	10 97       	W[P2] = R0;
ffa09f5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa09f60:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa09f64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09f66:	10 97       	W[P2] = R0;
ffa09f68:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa09f6c:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa09f70:	b8 a0       	R0 = [FP + 0x8];
ffa09f72:	10 93       	[P2] = R0;
ffa09f74:	24 00       	SSYNC;
ffa09f76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa09f7a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa09f7e:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa09f82:	10 97       	W[P2] = R0;
ffa09f84:	01 20       	JUMP.S 0xffa09f86 <_spi_write_packet+0x6a>;
	...
ffa09f8e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa09f92:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09f96:	50 95       	R0 = W[P2] (X);
ffa09f98:	c0 42       	R0 = R0.L (Z);
ffa09f9a:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa09f9c:	00 02       	R0 = CC;
ffa09f9e:	00 0c       	CC = R0 == 0x0;
ffa09fa0:	f3 1b       	IF CC JUMP 0xffa09f86 <_spi_write_packet+0x6a>;
ffa09fa2:	00 00       	NOP;
ffa09fa4:	00 00       	NOP;
ffa09fa6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa09faa:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09fae:	50 95       	R0 = W[P2] (X);
ffa09fb0:	c1 42       	R1 = R0.L (Z);
ffa09fb2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09fb4:	01 54       	R0 = R1 & R0;
ffa09fb6:	00 0c       	CC = R0 == 0x0;
ffa09fb8:	e7 13       	IF !CC JUMP 0xffa09f86 <_spi_write_packet+0x6a>;
ffa09fba:	00 00       	NOP;
ffa09fbc:	00 00       	NOP;
ffa09fbe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09fc2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09fc6:	50 95       	R0 = W[P2] (X);
ffa09fc8:	c1 42       	R1 = R0.L (Z);
ffa09fca:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09fcc:	01 54       	R0 = R1 & R0;
ffa09fce:	00 0c       	CC = R0 == 0x0;
ffa09fd0:	db 13       	IF !CC JUMP 0xffa09f86 <_spi_write_packet+0x6a>;
ffa09fd2:	ff e3 9b fe 	CALL 0xffa09d08 <_spi_delay>;
ffa09fd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa09fda:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09fde:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09fe0:	10 97       	W[P2] = R0;
ffa09fe2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa09fe6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa09fea:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa09fee:	10 97       	W[P2] = R0;
ffa09ff0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09ff4:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa09ff8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ffa:	10 97       	W[P2] = R0;
ffa09ffc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a000:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a004:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a006:	10 97       	W[P2] = R0;
ffa0a008:	24 00       	SSYNC;
ffa0a00a:	01 e8 00 00 	UNLINK;
ffa0a00e:	10 00       	RTS;

ffa0a010 <_spi_write_packet_noDMA>:
ffa0a010:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a014:	b8 b0       	[FP + 0x8] = R0;
ffa0a016:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a01a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a01e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a020:	10 97       	W[P2] = R0;
ffa0a022:	24 00       	SSYNC;
ffa0a024:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a028:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a02c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a030:	10 97       	W[P2] = R0;
ffa0a032:	ff e3 6b fe 	CALL 0xffa09d08 <_spi_delay>;
ffa0a036:	b8 a0       	R0 = [FP + 0x8];
ffa0a038:	f0 bb       	[FP -0x4] = R0;
ffa0a03a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a03c:	e0 bb       	[FP -0x8] = R0;
ffa0a03e:	11 20       	JUMP.S 0xffa0a060 <_spi_write_packet_noDMA+0x50>;
ffa0a040:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a044:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a048:	fa b9       	P2 = [FP -0x4];
ffa0a04a:	50 99       	R0 = B[P2] (X);
ffa0a04c:	00 43       	R0 = R0.B (X);
ffa0a04e:	08 97       	W[P1] = R0;
ffa0a050:	f0 b9       	R0 = [FP -0x4];
ffa0a052:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a054:	f0 bb       	[FP -0x4] = R0;
ffa0a056:	ff e3 59 fe 	CALL 0xffa09d08 <_spi_delay>;
ffa0a05a:	e0 b9       	R0 = [FP -0x8];
ffa0a05c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a05e:	e0 bb       	[FP -0x8] = R0;
ffa0a060:	e0 b9       	R0 = [FP -0x8];
ffa0a062:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a064:	08 09       	CC = R0 <= R1;
ffa0a066:	ed 1b       	IF CC JUMP 0xffa0a040 <_spi_write_packet_noDMA+0x30>;
ffa0a068:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a06c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a070:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a072:	10 97       	W[P2] = R0;
ffa0a074:	24 00       	SSYNC;
ffa0a076:	01 e8 00 00 	UNLINK;
ffa0a07a:	10 00       	RTS;

ffa0a07c <_spi_read_packet>:
ffa0a07c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a080:	b8 b0       	[FP + 0x8] = R0;
ffa0a082:	b8 a0       	R0 = [FP + 0x8];
ffa0a084:	f0 bb       	[FP -0x4] = R0;
ffa0a086:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a088:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a08c:	ff e3 62 fe 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a090:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a094:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a098:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a09a:	10 97       	W[P2] = R0;
ffa0a09c:	24 00       	SSYNC;
ffa0a09e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a0a2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a0a6:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a0aa:	10 97       	W[P2] = R0;
ffa0a0ac:	ff e3 2e fe 	CALL 0xffa09d08 <_spi_delay>;
ffa0a0b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0b2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a0b6:	18 20       	JUMP.S 0xffa0a0e6 <_spi_read_packet+0x6a>;
ffa0a0b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0bc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a0c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0c2:	10 97       	W[P2] = R0;
ffa0a0c4:	ff e3 22 fe 	CALL 0xffa09d08 <_spi_delay>;
ffa0a0c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0cc:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a0d0:	50 95       	R0 = W[P2] (X);
ffa0a0d2:	fa b9       	P2 = [FP -0x4];
ffa0a0d4:	10 9b       	B[P2] = R0;
ffa0a0d6:	f0 b9       	R0 = [FP -0x4];
ffa0a0d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0da:	f0 bb       	[FP -0x4] = R0;
ffa0a0dc:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a0e0:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0e2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a0e6:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a0ea:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a0ec:	08 0a       	CC = R0 <= R1 (IU);
ffa0a0ee:	e5 1b       	IF CC JUMP 0xffa0a0b8 <_spi_read_packet+0x3c>;
ffa0a0f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a0f4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a0f8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a0fa:	10 97       	W[P2] = R0;
ffa0a0fc:	24 00       	SSYNC;
ffa0a0fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a100:	01 e8 00 00 	UNLINK;
ffa0a104:	10 00       	RTS;
	...

ffa0a108 <_spi_read_packet_nocheck>:
ffa0a108:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a10c:	b8 b0       	[FP + 0x8] = R0;
ffa0a10e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a112:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a116:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a118:	10 97       	W[P2] = R0;
ffa0a11a:	24 00       	SSYNC;
ffa0a11c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a120:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a124:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a128:	10 97       	W[P2] = R0;
ffa0a12a:	ff e3 ef fd 	CALL 0xffa09d08 <_spi_delay>;
ffa0a12e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a132:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a136:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a138:	10 97       	W[P2] = R0;
ffa0a13a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a13e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a142:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a144:	10 97       	W[P2] = R0;
ffa0a146:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a14a:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a14e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a150:	10 97       	W[P2] = R0;
ffa0a152:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a156:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a15a:	b8 a0       	R0 = [FP + 0x8];
ffa0a15c:	10 93       	[P2] = R0;
ffa0a15e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a162:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a166:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a16a:	10 97       	W[P2] = R0;
ffa0a16c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a170:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a174:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a178:	10 97       	W[P2] = R0;
	...
ffa0a182:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a186:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a18a:	50 95       	R0 = W[P2] (X);
ffa0a18c:	c0 42       	R0 = R0.L (Z);
ffa0a18e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a190:	00 02       	R0 = CC;
ffa0a192:	00 0c       	CC = R0 == 0x0;
ffa0a194:	f3 1b       	IF CC JUMP 0xffa0a17a <_spi_read_packet_nocheck+0x72>;
ffa0a196:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a19a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a19e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1a0:	10 97       	W[P2] = R0;
ffa0a1a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a1a6:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a1aa:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a1ac:	10 97       	W[P2] = R0;
ffa0a1ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a1b2:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a1b6:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a1ba:	10 97       	W[P2] = R0;
ffa0a1bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a1c0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a1c4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a1c6:	10 97       	W[P2] = R0;
ffa0a1c8:	24 00       	SSYNC;
ffa0a1ca:	01 e8 00 00 	UNLINK;
ffa0a1ce:	10 00       	RTS;

ffa0a1d0 <_radio_set_rx>:
ffa0a1d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a1d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a1d8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a1dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a1de:	10 97       	W[P2] = R0;
ffa0a1e0:	24 00       	SSYNC;
ffa0a1e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a1e6:	ff e3 b5 fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a1ea:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a1ee:	ff e3 6f fe 	CALL 0xffa09ecc <_spi_write_byte>;
ffa0a1f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1f4:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a1f6:	ff e3 ad fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a1fa:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a1fc:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a200:	ff e3 a8 fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a204:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a208:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a20c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a20e:	10 97       	W[P2] = R0;
ffa0a210:	24 00       	SSYNC;
ffa0a212:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a216:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a21a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a21c:	10 97       	W[P2] = R0;
ffa0a21e:	24 00       	SSYNC;
ffa0a220:	01 e8 00 00 	UNLINK;
ffa0a224:	10 00       	RTS;
	...

ffa0a228 <_radio_set_tx>:
ffa0a228:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a22c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a230:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a234:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a236:	10 97       	W[P2] = R0;
ffa0a238:	24 00       	SSYNC;
ffa0a23a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a23c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a23e:	ff e3 89 fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a242:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a246:	ff e3 43 fe 	CALL 0xffa09ecc <_spi_write_byte>;
ffa0a24a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a24c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a250:	ff e3 80 fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a254:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a256:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a258:	ff e3 7c fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a25c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a260:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a264:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a266:	10 97       	W[P2] = R0;
ffa0a268:	01 e8 00 00 	UNLINK;
ffa0a26c:	10 00       	RTS;
	...

ffa0a270 <_radio_wait_irq>:
ffa0a270:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a274:	b8 b0       	[FP + 0x8] = R0;
ffa0a276:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a278:	f0 bb       	[FP -0x4] = R0;
ffa0a27a:	08 20       	JUMP.S 0xffa0a28a <_radio_wait_irq+0x1a>;
	...
ffa0a284:	f0 b9       	R0 = [FP -0x4];
ffa0a286:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a288:	f0 bb       	[FP -0x4] = R0;
ffa0a28a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a28e:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a292:	50 95       	R0 = W[P2] (X);
ffa0a294:	c1 42       	R1 = R0.L (Z);
ffa0a296:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a298:	01 54       	R0 = R1 & R0;
ffa0a29a:	00 0c       	CC = R0 == 0x0;
ffa0a29c:	05 18       	IF CC JUMP 0xffa0a2a6 <_radio_wait_irq+0x36>;
ffa0a29e:	f1 b9       	R1 = [FP -0x4];
ffa0a2a0:	b8 a0       	R0 = [FP + 0x8];
ffa0a2a2:	81 08       	CC = R1 < R0;
ffa0a2a4:	ec 1b       	IF CC JUMP 0xffa0a27c <_radio_wait_irq+0xc>;
ffa0a2a6:	f1 b9       	R1 = [FP -0x4];
ffa0a2a8:	b8 a0       	R0 = [FP + 0x8];
ffa0a2aa:	81 08       	CC = R1 < R0;
ffa0a2ac:	06 10       	IF !CC JUMP 0xffa0a2b8 <_radio_wait_irq+0x48>;
ffa0a2ae:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a2b0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a2b4:	ff e3 4e fd 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a2b8:	f0 b9       	R0 = [FP -0x4];
ffa0a2ba:	01 e8 00 00 	UNLINK;
ffa0a2be:	10 00       	RTS;

ffa0a2c0 <_radio_init>:
ffa0a2c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a2c4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a2cc:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a2d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2d2:	10 97       	W[P2] = R0;
ffa0a2d4:	24 00       	SSYNC;
ffa0a2d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a2da:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a2de:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a2e0:	10 97       	W[P2] = R0;
ffa0a2e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a2e6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a2ea:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a2ee:	10 97       	W[P2] = R0;
ffa0a2f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a2f4:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a2f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2fa:	10 97       	W[P2] = R0;
ffa0a2fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a300:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a304:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a306:	10 97       	W[P2] = R0;
ffa0a308:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a30c:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a310:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a314:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a318:	50 95       	R0 = W[P2] (X);
ffa0a31a:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a31c:	08 97       	W[P1] = R0;
ffa0a31e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a322:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a326:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a32a:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a32e:	51 95       	R1 = W[P2] (X);
ffa0a330:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a332:	01 54       	R0 = R1 & R0;
ffa0a334:	08 97       	W[P1] = R0;
ffa0a336:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a33a:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a33e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a342:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a346:	51 95       	R1 = W[P2] (X);
ffa0a348:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a34a:	01 56       	R0 = R1 | R0;
ffa0a34c:	08 97       	W[P1] = R0;
ffa0a34e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a352:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a356:	08 0a       	CC = R0 <= R1 (IU);
ffa0a358:	05 18       	IF CC JUMP 0xffa0a362 <_radio_init+0xa2>;
ffa0a35a:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a35e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a362:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a364:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a366:	ff e3 f5 fc 	CALL 0xffa09d50 <_spi_write_register>;
ffa0a36a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a36c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a36e:	ff e3 29 fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a372:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a374:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a376:	ff e3 25 fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a37a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a37c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a37e:	ff e3 21 fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a382:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a384:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a386:	ff e3 1d fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a38a:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a38e:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a390:	ff e3 18 fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a394:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a396:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a398:	ff e3 14 fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a39c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a39e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a3a2:	ff e3 0f fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a3a6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a3a8:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a3aa:	ff e3 0b fd 	CALL 0xffa09dc0 <_spi_write_register_ver>;
ffa0a3ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a3b2:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a3b6:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a3ba:	10 97       	W[P2] = R0;
ffa0a3bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a3c0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a3c4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a3c6:	10 97       	W[P2] = R0;
ffa0a3c8:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a3cc:	ff e3 80 fd 	CALL 0xffa09ecc <_spi_write_byte>;
ffa0a3d0:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a3d4:	ff e3 7c fd 	CALL 0xffa09ecc <_spi_write_byte>;
ffa0a3d8:	40 43       	R0 = R0.B (Z);
ffa0a3da:	01 e8 00 00 	UNLINK;
ffa0a3de:	10 00       	RTS;

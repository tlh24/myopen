
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
ffa08148:	08 e1 74 93 	P0.L = 0x9374;		/* (-27788)	P0=0xffa09374 <_main> */
ffa0814c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09374 <_main> */
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
ffa08180:	00 e3 6c 09 	CALL 0xffa09458 <_exception_report>;
ffa08184:	12 00       	RTX;

ffa08186 <_HWHANDLER>:
ffa08186:	11 00       	RTI;

ffa08188 <_NHANDLER>:
ffa08188:	00 e3 50 09 	CALL 0xffa09428 <_nmi_report>;
ffa0818c:	12 00       	RTX;

ffa0818e <EXC_HANDLER>:
ffa0818e:	c1 31       	R0 = SEQSTAT;
ffa08190:	cc 31       	R1 = RETX;
ffa08192:	fe 2f       	JUMP.S 0xffa0818e <EXC_HANDLER>;
ffa08194:	4d 01       	[--SP] = P5;
ffa08196:	0d e1 34 71 	P5.L = 0x7134;		/* (28980)	P5=0x7134 */
ffa0819a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff907134 <_g_excregs> */
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
ffa08202:	00 e3 2b 09 	CALL 0xffa09458 <_exception_report>;
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
ffa08238:	68 b9       	P0 = [FP -0x28];
ffa0823a:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa0823e:	8f b4       	W[P1 + 0x4] = R7;
ffa08240:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08244:	0f b5       	W[P1 + 0x8] = R7;

ffa08246 <wait_samples>:
ffa08246:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08248:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa0824a:	fe 1b       	IF CC JUMP 0xffa08246 <wait_samples>;
ffa0824c:	00 95       	R0 = W[P0] (Z);
ffa0824e:	01 95       	R1 = W[P0] (Z);
ffa08250:	d2 b8       	R2 = [FP -0x4c];
ffa08252:	81 4f       	R1 <<= 0x10;
ffa08254:	08 56       	R0 = R0 | R1;
ffa08256:	90 54       	R2 = R0 & R2;
ffa08258:	07 9c       	R7 = [I0++];
ffa0825a:	8f b5       	W[P1 + 0xc] = R7;
ffa0825c:	00 00       	NOP;
ffa0825e:	00 00       	NOP;
ffa08260:	81 ce 0a 84 	R2 = R2 << 0x1 (V) || R5 = [I0++] || NOP;
ffa08264:	05 9c 00 00 
ffa08268:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa0826c:	09 9c 06 9c 
ffa08270:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08274:	00 00 00 00 
ffa08278:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa0827c:	61 9e 00 00 
ffa08280:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08284:	89 9d 00 00 
ffa08288:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa0828c:	02 9c 12 9e 
ffa08290:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08294:	89 9d 02 9c 
ffa08298:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0829c:	89 9d 02 9c 
ffa082a0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa08300:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08304:	09 9c 05 9c 
ffa08308:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa0830c:	74 9e 10 9e 
ffa08310:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08314:	69 9e 17 9e 
ffa08318:	81 ce 8e 4d 	R6 = R6 >>> 0xf (V, S) || R1 = [I1++] || R2 = [I0];
ffa0831c:	09 9c 02 9d 
ffa08320:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08324:	00 00 00 00 
ffa08328:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa0832c:	79 9e 00 00 
ffa08330:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08334:	0d 9c a4 9f 
ffa08338:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa0833c:	83 c6 40 00 	A0 = A0 << 0x8;
ffa08340:	83 c6 40 10 	A1 = A1 << 0x8;
ffa08344:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08348:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa0834c:	06 9c 00 00 
ffa08350:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa08354:	06 9c 00 00 
ffa08358:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa0835c:	00 00 00 00 
ffa08360:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa08364:	00 00 00 00 
ffa08368:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa0836c:	05 9c 09 9c 
ffa08370:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08374:	13 9e 00 00 
ffa08378:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0837c:	05 9c 0a 9c 
ffa08380:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08384:	05 9c 0b 9c 
ffa08388:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0838c:	05 9c 0c 9c 
ffa08390:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08394:	05 9c 17 9e 
ffa08398:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0839c:	11 9e 00 00 
ffa083a0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa083a4:	05 9c 10 9e 
ffa083a8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa083ac:	05 9c 13 9e 
ffa083b0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa083b4:	05 9c 09 9c 
ffa083b8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa083bc:	05 9c 0a 9c 
ffa083c0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa083c4:	05 9c 00 00 
ffa083c8:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa083cc:	05 9c 00 00 
ffa083d0:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa083d4:	10 9e 00 00 
ffa083d8:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa083dc:	05 9c 11 9e 
ffa083e0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa083e4:	05 9c 09 9c 
ffa083e8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa083ec:	05 9c 0a 9c 
ffa083f0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa083f4:	05 9c 0b 9c 
ffa083f8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa083fc:	05 9c 0c 9c 
ffa08400:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08404:	05 9c 17 9e 
ffa08408:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0840c:	11 9e 00 00 
ffa08410:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08414:	05 9c 10 9e 
ffa08418:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa0841c:	05 9c 13 9e 
ffa08420:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08424:	05 9c 09 9c 
ffa08428:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0842c:	05 9c 0a 9c 
ffa08430:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08434:	05 9c 00 00 
ffa08438:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa0843c:	05 9c 00 00 
ffa08440:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08444:	07 9c 10 9e 
ffa08448:	81 ce 88 41 	R0 = R0 >>> 0xf (V, S) || R5 = [I0++] || [I2++] = R1;
ffa0844c:	05 9c 11 9e 
ffa08450:	be 55       	R6 = R6 & R7;
ffa08452:	28 54       	R0 = R0 & R5;
ffa08454:	86 57       	R6 = R6 | R0;
ffa08456:	76 bb       	[FP -0x24] = R6;
ffa08458:	00 95       	R0 = W[P0] (Z);
ffa0845a:	01 95       	R1 = W[P0] (Z);
ffa0845c:	d2 b8       	R2 = [FP -0x4c];
ffa0845e:	81 4f       	R1 <<= 0x10;
ffa08460:	08 56       	R0 = R0 | R1;
ffa08462:	90 54       	R2 = R0 & R2;
ffa08464:	81 c6 0a 84 	R2 = R2 << 0x1 (V);
ffa08468:	05 9c       	R5 = [I0++];
ffa0846a:	00 00       	NOP;
ffa0846c:	00 00       	NOP;
ffa0846e:	00 00       	NOP;
ffa08470:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08474:	09 9c 06 9c 
ffa08478:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa0847c:	00 00 00 00 
ffa08480:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08484:	61 9e 00 00 
ffa08488:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa0848c:	89 9d 00 00 
ffa08490:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08494:	02 9c 12 9e 
ffa08498:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0849c:	89 9d 02 9c 
ffa084a0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084a4:	89 9d 02 9c 
ffa084a8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa08508:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa0850c:	09 9c 05 9c 
ffa08510:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08514:	74 9e 10 9e 
ffa08518:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa0851c:	69 9e 17 9e 
ffa08520:	81 ce 8e 4d 	R6 = R6 >>> 0xf (V, S) || R1 = [I1++] || R2 = [I0];
ffa08524:	09 9c 02 9d 
ffa08528:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa0852c:	00 00 00 00 
ffa08530:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08534:	79 9e 00 00 
ffa08538:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa0853c:	0d 9c a4 9f 
ffa08540:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08544:	83 c6 40 00 	A0 = A0 << 0x8;
ffa08548:	83 c6 40 10 	A1 = A1 << 0x8;
ffa0854c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08550:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa08554:	06 9c 00 00 
ffa08558:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa0855c:	06 9c 00 00 
ffa08560:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa08564:	00 00 00 00 
ffa08568:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa0856c:	00 00 00 00 
ffa08570:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa08574:	05 9c 09 9c 
ffa08578:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa0857c:	13 9e 00 00 
ffa08580:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08584:	05 9c 0a 9c 
ffa08588:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa0858c:	05 9c 0b 9c 
ffa08590:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08594:	05 9c 0c 9c 
ffa08598:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0859c:	05 9c 17 9e 
ffa085a0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa085a4:	11 9e 00 00 
ffa085a8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa085ac:	05 9c 10 9e 
ffa085b0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa085b4:	05 9c 13 9e 
ffa085b8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa085bc:	05 9c 09 9c 
ffa085c0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa085c4:	05 9c 0a 9c 
ffa085c8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa085cc:	05 9c 00 00 
ffa085d0:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa085d4:	05 9c 00 00 
ffa085d8:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa085dc:	10 9e 00 00 
ffa085e0:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa085e4:	05 9c 11 9e 
ffa085e8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa085ec:	05 9c 09 9c 
ffa085f0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa085f4:	05 9c 0a 9c 
ffa085f8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa085fc:	05 9c 0b 9c 
ffa08600:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08604:	05 9c 0c 9c 
ffa08608:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0860c:	05 9c 17 9e 
ffa08610:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08614:	11 9e 00 00 
ffa08618:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa0861c:	05 9c 10 9e 
ffa08620:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08624:	05 9c 13 9e 
ffa08628:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa0862c:	05 9c 09 9c 
ffa08630:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08634:	05 9c 0a 9c 
ffa08638:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa0863c:	05 9c 00 00 
ffa08640:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08644:	05 9c 00 00 
ffa08648:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa0864c:	07 9c 10 9e 
ffa08650:	81 ce 88 41 	R0 = R0 >>> 0xf (V, S) || R5 = [I0++] || [I2++] = R1;
ffa08654:	05 9c 11 9e 
ffa08658:	be 55       	R6 = R6 & R7;
ffa0865a:	28 54       	R0 = R0 & R5;
ffa0865c:	86 57       	R6 = R6 | R0;
ffa0865e:	77 b9       	R7 = [FP -0x24];
ffa08660:	37 56       	R0 = R7 | R6;
ffa08662:	06 9c       	R6 = [I0++];
ffa08664:	06 32       	P0 = R6;
ffa08666:	3d b9       	P5 = [FP -0x34];
ffa08668:	19 b9       	P1 = [FP -0x3c];
ffa0866a:	80 c6 20 b0 	R0.H = R0.H << 0x4;
ffa0866e:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08672:	45 5b       	P5 = P5 + P0;
ffa08674:	29 99       	R1 = B[P5] (Z);
ffa08676:	41 56       	R1 = R1 | R0;
ffa08678:	01 32       	P0 = R1;
ffa0867a:	29 9b       	B[P5] = R1;
ffa0867c:	03 69       	P3 = 0x20 (X);		/*		P3=0x0(  0) */
ffa0867e:	5d 5b       	P5 = P5 + P3;
ffa08680:	41 5a       	P1 = P1 + P0;
ffa08682:	0a 99       	R2 = B[P1] (Z);
ffa08684:	2a 9b       	B[P5] = R2;
ffa08686:	f8 60       	R0 = 0x1f (X);		/*		R0=0x0(  0) */
ffa08688:	06 08       	CC = R6 == R0;
ffa0868a:	34 14       	IF !CC JUMP 0xffa086f2 <end_txchan> (BP);
ffa0868c:	98 b9       	P0 = [FP -0x1c];
ffa0868e:	00 00       	NOP;
ffa08690:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08694:	a9 b9 18 9c 
ffa08698:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa0869c:	bb b9 19 9c 
ffa086a0:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa086a4:	cd b9 1c 9c 
ffa086a8:	28 34       	M1 = R0;
ffa086aa:	31 34       	M2 = R1;
ffa086ac:	00 99       	R0 = B[P0] (Z);
ffa086ae:	09 99       	R1 = B[P1] (Z);
ffa086b0:	1a 99       	R2 = B[P3] (Z);
ffa086b2:	2b 99       	R3 = B[P5] (Z);
ffa086b4:	20 9a       	B[P4++] = R0;
ffa086b6:	21 9a       	B[P4++] = R1;
ffa086b8:	22 9a       	B[P4++] = R2;
ffa086ba:	23 9a       	B[P4++] = R3;
ffa086bc:	2f 60       	R7 = 0x5 (X);		/*		R7=0x0(  0) */
ffa086be:	3c 08       	CC = R4 == R7;
ffa086c0:	14 14       	IF !CC JUMP 0xffa086e8 <end_txchan_qs> (BP);
ffa086c2:	1f 9c       	R7 = [I3++];
ffa086c4:	1e 9c       	R6 = [I3++];
ffa086c6:	2d 32       	P5 = R5;
ffa086c8:	f5 b9       	R5 = [FP -0x4];
ffa086ca:	0d 64       	R5 += 0x1;		/* (  1) */
ffa086cc:	f5 bb       	[FP -0x4] = R5;
ffa086ce:	f5 b8       	R5 = [FP -0x44];
ffa086d0:	28 90       	R0 = [P5++];
ffa086d2:	29 90       	R1 = [P5++];
ffa086d4:	38 56       	R0 = R0 | R7;
ffa086d6:	69 56       	R1 = R1 | R5;
ffa086d8:	7d 30       	R7 = P5;
ffa086da:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffff80(-128) */
ffa086dc:	45 5b       	P5 = P5 + P0;
ffa086de:	20 92       	[P4++] = R0;
ffa086e0:	21 92       	[P4++] = R1;
ffa086e2:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa086e4:	ac 92       	[P5--] = R4;
ffa086e6:	ac 92       	[P5--] = R4;

ffa086e8 <end_txchan_qs>:
ffa086e8:	49 b9       	P1 = [FP -0x30];
ffa086ea:	5b b9       	P3 = [FP -0x2c];
ffa086ec:	7c 30       	R7 = P4;
ffa086ee:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa086f0:	27 32       	P4 = R7;

ffa086f2 <end_txchan>:
ffa086f2:	10 00       	RTS;

ffa086f4 <_clearirq_asm>:
ffa086f4:	67 01       	[--SP] = RETS;
ffa086f6:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa086f8:	8f b4       	W[P1 + 0x4] = R7;
ffa086fa:	ff e3 9f fd 	CALL 0xffa08238 <_get_asm>;
ffa086fe:	3e 61       	R6 = 0x27 (X);		/*		R6=0x0(  0) */
ffa08700:	1e 97       	W[P3] = R6;
ffa08702:	ff e3 9b fd 	CALL 0xffa08238 <_get_asm>;
ffa08706:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0870a:	1e 97       	W[P3] = R6;
ffa0870c:	ff e3 96 fd 	CALL 0xffa08238 <_get_asm>;
ffa08710:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08712:	0f b5       	W[P1 + 0x8] = R7;
ffa08714:	ff e3 92 fd 	CALL 0xffa08238 <_get_asm>;
ffa08718:	27 01       	RETS = [SP++];
ffa0871a:	10 00       	RTS;

ffa0871c <_waitirq_asm>:
ffa0871c:	67 01       	[--SP] = RETS;
ffa0871e:	27 e1 b6 00 	R7 = 0xb6 (X);		/*		R7=0xb6(182) */
ffa08722:	87 bb       	[FP -0x20] = R7;

ffa08724 <waitirq_loop>:
ffa08724:	0e 95       	R6 = W[P1] (Z);
ffa08726:	1e 49       	CC = BITTST (R6, 0x3);		/* bit  3 */
ffa08728:	0c 10       	IF !CC JUMP 0xffa08740 <waitirq_end>;
ffa0872a:	ff e3 87 fd 	CALL 0xffa08238 <_get_asm>;
ffa0872e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08730:	87 b9       	R7 = [FP -0x20];
ffa08732:	3e 08       	CC = R6 == R7;
ffa08734:	06 18       	IF CC JUMP 0xffa08740 <waitirq_end>;
ffa08736:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa08738:	87 bb       	[FP -0x20] = R7;
ffa0873a:	ff e3 7f fd 	CALL 0xffa08238 <_get_asm>;
ffa0873e:	f3 2f       	JUMP.S 0xffa08724 <waitirq_loop>;

ffa08740 <waitirq_end>:
ffa08740:	ff e3 7c fd 	CALL 0xffa08238 <_get_asm>;
ffa08744:	27 01       	RETS = [SP++];
ffa08746:	10 00       	RTS;

ffa08748 <_clearfifos_asm>:
ffa08748:	67 01       	[--SP] = RETS;
ffa0874a:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0874c:	8f b4       	W[P1 + 0x4] = R7;
ffa0874e:	ff e3 75 fd 	CALL 0xffa08238 <_get_asm>;
ffa08752:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08756:	1e 97       	W[P3] = R6;
ffa08758:	ff e3 70 fd 	CALL 0xffa08238 <_get_asm>;
ffa0875c:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0875e:	0f b5       	W[P1 + 0x8] = R7;
ffa08760:	ff e3 6c fd 	CALL 0xffa08238 <_get_asm>;
ffa08764:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08766:	8f b4       	W[P1 + 0x4] = R7;
ffa08768:	ff e3 68 fd 	CALL 0xffa08238 <_get_asm>;
ffa0876c:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08770:	1e 97       	W[P3] = R6;
ffa08772:	ff e3 63 fd 	CALL 0xffa08238 <_get_asm>;
ffa08776:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08778:	0f b5       	W[P1 + 0x8] = R7;
ffa0877a:	ff e3 5f fd 	CALL 0xffa08238 <_get_asm>;
ffa0877e:	27 01       	RETS = [SP++];
ffa08780:	10 00       	RTS;

ffa08782 <_radio_bidi_asm>:
ffa08782:	0d e1 14 05 	P5.L = 0x514;		/* (1300)	P5=0xff900514 */
ffa08786:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00514(-4193004) */
ffa0878a:	80 e1 04 00 	R0 = 0x4 (Z);		/*		R0=0x4(  4) */
ffa0878e:	28 97       	W[P5] = R0;
ffa08790:	0f e1 00 6f 	FP.L = 0x6f00;		/* (28416)	FP=0x6f00 */
ffa08794:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff906f00 */
ffa08798:	08 e1 18 08 	P0.L = 0x818;		/* (2072)	P0=0xffff0818(-63464) */
ffa0879c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00818(-4192232) */
ffa087a0:	68 bb       	[FP -0x28] = P0;
ffa087a2:	09 e1 00 07 	P1.L = 0x700;		/* (1792)	P1=0xffc00700(-4192512) */
ffa087a6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa087aa:	49 bb       	[FP -0x30] = P1;
ffa087ac:	0a e1 00 70 	P2.L = 0x7000;		/* (28672)	P2=0x7000 */
ffa087b0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff807000 */
ffa087b4:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0x50c */
ffa087b8:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0050c(-4193012) */
ffa087bc:	5b bb       	[FP -0x2c] = P3;
ffa087be:	0c e1 00 70 	P4.L = 0x7000;		/* (28672)	P4=0x7000 */
ffa087c2:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff807000 */
ffa087c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087c8:	f0 bb       	[FP -0x4] = R0;
ffa087ca:	e0 bb       	[FP -0x8] = R0;
ffa087cc:	d0 bb       	[FP -0xc] = R0;
ffa087ce:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0x6000(24576) */
ffa087d2:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806000(-8364032) */
ffa087d6:	30 bb       	[FP -0x34] = R0;
ffa087d8:	00 e1 20 60 	R0.L = 0x6020;		/* (24608)	R0=0xff806020(-8364000) */
ffa087dc:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806020(-8364000) */
ffa087e0:	20 bb       	[FP -0x38] = R0;
ffa087e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087e4:	e0 ba       	[FP -0x48] = R0;
ffa087e6:	00 e1 00 61 	R0.L = 0x6100;		/* (24832)	R0=0x6100(24832) */
ffa087ea:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806100(-8363776) */
ffa087ee:	10 bb       	[FP -0x3c] = R0;
ffa087f0:	00 e1 00 62 	R0.L = 0x6200;		/* (25088)	R0=0xff806200(-8363520) */
ffa087f4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806200(-8363520) */
ffa087f8:	82 c6 f0 81 	R0 = R0 >> 0x2;
ffa087fc:	00 bb       	[FP -0x40] = R0;
ffa087fe:	00 e1 ff 0f 	R0.L = 0xfff;		/* (4095)	R0=0xff800fff(-8384513) */
ffa08802:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfff0fff(268374015) */
ffa08806:	d0 ba       	[FP -0x4c] = R0;
ffa08808:	00 e1 15 40 	R0.L = 0x4015;		/* (16405)	R0=0xfff4015(268386325) */
ffa0880c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804015(-8372203) */
ffa08810:	90 bb       	[FP -0x1c] = R0;
ffa08812:	00 e1 17 40 	R0.L = 0x4017;		/* (16407)	R0=0xff804017(-8372201) */
ffa08816:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804017(-8372201) */
ffa0881a:	a0 bb       	[FP -0x18] = R0;
ffa0881c:	00 e1 55 40 	R0.L = 0x4055;		/* (16469)	R0=0xff804055(-8372139) */
ffa08820:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804055(-8372139) */
ffa08824:	b0 bb       	[FP -0x14] = R0;
ffa08826:	00 e1 57 40 	R0.L = 0x4057;		/* (16471)	R0=0xff804057(-8372137) */
ffa0882a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804057(-8372137) */
ffa0882e:	c0 bb       	[FP -0x10] = R0;
ffa08830:	20 e1 93 01 	R0 = 0x193 (X);		/*		R0=0x193(403) */
ffa08834:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa08838:	40 60       	R0 = 0x8 (X);		/*		R0=0x0(  0) */
ffa0883a:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa0883e:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08842:	0f b5       	W[P1 + 0x8] = R7;
ffa08844:	24 00       	SSYNC;
ffa08846:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0884a:	8f b4       	W[P1 + 0x4] = R7;
ffa0884c:	24 00       	SSYNC;
ffa0884e:	00 e3 29 01 	CALL 0xffa08aa0 <_init6>;
ffa08852:	0d e1 00 60 	P5.L = 0x6000;		/* (24576)	P5=0xffc06000(-4169728) */
ffa08856:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806000 */
ffa0885a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0885c:	28 92       	[P5++] = R0;
ffa0885e:	28 92       	[P5++] = R0;
ffa08860:	28 92       	[P5++] = R0;
ffa08862:	28 92       	[P5++] = R0;
ffa08864:	28 92       	[P5++] = R0;
ffa08866:	28 92       	[P5++] = R0;
ffa08868:	28 92       	[P5++] = R0;
ffa0886a:	28 92       	[P5++] = R0;
ffa0886c:	00 e3 12 02 	CALL 0xffa08c90 <_enc_create>;
ffa08870:	0d e1 04 02 	P5.L = 0x204;		/* (516)	P5=0xff800204 */
ffa08874:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00204(-4193788) */
ffa08878:	40 e1 0c 00 	R0.H = 0xc;		/* ( 12)	R0=0xc0000(786432) */
ffa0887c:	00 e1 00 35 	R0.L = 0x3500;		/* (13568)	R0=0xc3500(800000) */
ffa08880:	a8 92       	[P5--] = R0;
ffa08882:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08884:	28 97       	W[P5] = R0;
ffa08886:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0888a:	0f b5       	W[P1 + 0x8] = R7;
ffa0888c:	24 00       	SSYNC;
ffa0888e:	0d e1 20 09 	P5.L = 0x920;		/* (2336)	P5=0xffc00920(-4191968) */
ffa08892:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00920(-4191968) */
ffa08896:	00 e1 01 04 	R0.L = 0x401;		/* (1025)	R0=0x401(1025) */
ffa0889a:	28 97       	W[P5] = R0;
ffa0889c:	0d e1 20 08 	P5.L = 0x820;		/* (2080)	P5=0xffc00820(-4192224) */
ffa088a0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00820(-4192224) */
ffa088a4:	00 e1 03 06 	R0.L = 0x603;		/* (1539)	R0=0x603(1539) */
ffa088a8:	28 97       	W[P5] = R0;

ffa088aa <radio_loop>:
ffa088aa:	ff e3 c7 fc 	CALL 0xffa08238 <_get_asm>;
ffa088ae:	f5 b9       	R5 = [FP -0x4];
ffa088b0:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa088b2:	fc 13       	IF !CC JUMP 0xffa088aa <radio_loop>;
ffa088b4:	ff e3 c2 fc 	CALL 0xffa08238 <_get_asm>;
ffa088b8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa088ba:	f5 bb       	[FP -0x4] = R5;
ffa088bc:	ff e3 46 ff 	CALL 0xffa08748 <_clearfifos_asm>;
ffa088c0:	ff e3 1a ff 	CALL 0xffa086f4 <_clearirq_asm>;
ffa088c4:	85 68       	P5 = 0x10 (X);		/*		P5=0x0(  0) */
ffa088c6:	a2 e0 24 50 	LSETUP(0xffa088ca <wp_top>, 0xffa0890e <wp_bot>) LC0 = P5;

ffa088ca <wp_top>:
ffa088ca:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa088cc:	8f b4       	W[P1 + 0x4] = R7;
ffa088ce:	ff e3 b5 fc 	CALL 0xffa08238 <_get_asm>;
ffa088d2:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa088d6:	1e 97       	W[P3] = R6;
ffa088d8:	ff e3 b0 fc 	CALL 0xffa08238 <_get_asm>;
ffa088dc:	05 69       	P5 = 0x20 (X);		/*		P5=0x0(  0) */
ffa088de:	b2 e0 06 50 	LSETUP(0xffa088e2 <pb_top>, 0xffa088ea <pb_bot>) LC1 = P5;

ffa088e2 <pb_top>:
ffa088e2:	16 98       	R6 = B[P2++] (Z);
ffa088e4:	1e 97       	W[P3] = R6;
ffa088e6:	ff e3 a9 fc 	CALL 0xffa08238 <_get_asm>;

ffa088ea <pb_bot>:
ffa088ea:	00 00       	NOP;
ffa088ec:	7a 30       	R7 = P2;
ffa088ee:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa088f0:	17 32       	P2 = R7;
ffa088f2:	ff e3 a3 fc 	CALL 0xffa08238 <_get_asm>;
ffa088f6:	1f 60       	R7 = 0x3 (X);		/*		R7=0x0(  0) */
ffa088f8:	0f b5       	W[P1 + 0x8] = R7;
ffa088fa:	ff e3 9f fc 	CALL 0xffa08238 <_get_asm>;
ffa088fe:	87 60       	R7 = 0x10 (X);		/*		R7=0x0(  0) */
ffa08900:	b0 31       	R6 = LC0;
ffa08902:	37 08       	CC = R7 == R6;
ffa08904:	05 18       	IF CC JUMP 0xffa0890e <wp_bot>;
ffa08906:	ff e3 0b ff 	CALL 0xffa0871c <_waitirq_asm>;
ffa0890a:	ff e3 f5 fe 	CALL 0xffa086f4 <_clearirq_asm>;

ffa0890e <wp_bot>:
ffa0890e:	00 00       	NOP;
ffa08910:	ff e3 06 ff 	CALL 0xffa0871c <_waitirq_asm>;
ffa08914:	ff e3 f0 fe 	CALL 0xffa086f4 <_clearirq_asm>;
ffa08918:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa0891a:	8f b4       	W[P1 + 0x4] = R7;
ffa0891c:	ff e3 8e fc 	CALL 0xffa08238 <_get_asm>;
ffa08920:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08922:	8f b4       	W[P1 + 0x4] = R7;
ffa08924:	ff e3 8a fc 	CALL 0xffa08238 <_get_asm>;
ffa08928:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0892c:	1e 97       	W[P3] = R6;
ffa0892e:	ff e3 85 fc 	CALL 0xffa08238 <_get_asm>;
ffa08932:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08934:	0f b5       	W[P1 + 0x8] = R7;
ffa08936:	ff e3 81 fc 	CALL 0xffa08238 <_get_asm>;
ffa0893a:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0893c:	8f b4       	W[P1 + 0x4] = R7;
ffa0893e:	ff e3 7d fc 	CALL 0xffa08238 <_get_asm>;
ffa08942:	06 61       	R6 = 0x20 (X);		/*		R6=0x0(  0) */
ffa08944:	1e 97       	W[P3] = R6;
ffa08946:	ff e3 79 fc 	CALL 0xffa08238 <_get_asm>;
ffa0894a:	fe 60       	R6 = 0x1f (X);		/*		R6=0x0(  0) */
ffa0894c:	1e 97       	W[P3] = R6;
ffa0894e:	ff e3 75 fc 	CALL 0xffa08238 <_get_asm>;
ffa08952:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08954:	0f b5       	W[P1 + 0x8] = R7;
ffa08956:	ff e3 71 fc 	CALL 0xffa08238 <_get_asm>;
ffa0895a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa0895c:	0f b5       	W[P1 + 0x8] = R7;
ffa0895e:	ff e3 6d fc 	CALL 0xffa08238 <_get_asm>;
ffa08962:	ff e3 dd fe 	CALL 0xffa0871c <_waitirq_asm>;
ffa08966:	0f 95       	R7 = W[P1] (Z);
ffa08968:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa0896a:	63 18       	IF CC JUMP 0xffa08a30 <no_rxpacket>;
ffa0896c:	ff e3 c4 fe 	CALL 0xffa086f4 <_clearirq_asm>;
ffa08970:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa08972:	8f b4       	W[P1 + 0x4] = R7;
ffa08974:	ff e3 62 fc 	CALL 0xffa08238 <_get_asm>;
ffa08978:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa0897a:	8f b4       	W[P1 + 0x4] = R7;
ffa0897c:	ff e3 5e fc 	CALL 0xffa08238 <_get_asm>;
ffa08980:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa08984:	1e 97       	W[P3] = R6;
ffa08986:	ff e3 59 fc 	CALL 0xffa08238 <_get_asm>;
ffa0898a:	25 68       	P5 = 0x4 (X);		/*		P5=0x0(  0) */
ffa0898c:	a2 e0 4b 50 	LSETUP(0xffa08990 <rp_top>, 0xffa08a22 <rp_bot>) LC0 = P5;

ffa08990 <rp_top>:
ffa08990:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa08992:	e7 bb       	[FP -0x8] = R7;
ffa08994:	d7 bb       	[FP -0xc] = R7;
ffa08996:	ff e3 51 fc 	CALL 0xffa08238 <_get_asm>;
ffa0899a:	25 68       	P5 = 0x4 (X);		/*		P5=0x0(  0) */
ffa0899c:	b2 e0 0e 50 	LSETUP(0xffa089a0 <a32_top>, 0xffa089b8 <a32_bot>) LC1 = P5;

ffa089a0 <a32_top>:
ffa089a0:	1f 97       	W[P3] = R7;
ffa089a2:	ff e3 4b fc 	CALL 0xffa08238 <_get_asm>;
ffa089a6:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa089a8:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa089ac:	f7 55       	R7 = R7 & R6;
ffa089ae:	e6 b9       	R6 = [FP -0x8];
ffa089b0:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa089b4:	be 51       	R6 = R6 + R7;
ffa089b6:	e6 bb       	[FP -0x8] = R6;

ffa089b8 <a32_bot>:
ffa089b8:	00 00       	NOP;
ffa089ba:	ff e3 3f fc 	CALL 0xffa08238 <_get_asm>;
ffa089be:	25 68       	P5 = 0x4 (X);		/*		P5=0x0(  0) */
ffa089c0:	b2 e0 0e 50 	LSETUP(0xffa089c4 <v32_top>, 0xffa089dc <v32_bot>) LC1 = P5;

ffa089c4 <v32_top>:
ffa089c4:	1f 97       	W[P3] = R7;
ffa089c6:	ff e3 39 fc 	CALL 0xffa08238 <_get_asm>;
ffa089ca:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa089cc:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa089d0:	f7 55       	R7 = R7 & R6;
ffa089d2:	d6 b9       	R6 = [FP -0xc];
ffa089d4:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa089d8:	be 51       	R6 = R6 + R7;
ffa089da:	d6 bb       	[FP -0xc] = R6;

ffa089dc <v32_bot>:
ffa089dc:	00 00       	NOP;
ffa089de:	ff e3 2d fc 	CALL 0xffa08238 <_get_asm>;
ffa089e2:	e7 b9       	R7 = [FP -0x8];
ffa089e4:	82 c6 27 8d 	R6 = R7 >> 0x1c;
ffa089e8:	06 32       	P0 = R6;
ffa089ea:	0d b9       	P5 = [FP -0x40];
ffa089ec:	7e 60       	R6 = 0xf (X);		/*		R6=0x0(  0) */
ffa089ee:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa089f2:	f7 57       	R7 = R7 | R6;
ffa089f4:	e7 bb       	[FP -0x8] = R7;
ffa089f6:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa089f8:	2f 91       	R7 = [P5];
ffa089fa:	f7 ba       	[FP -0x44] = R7;
ffa089fc:	ff e3 1e fc 	CALL 0xffa08238 <_get_asm>;
ffa08a00:	e7 b9       	R7 = [FP -0x8];
ffa08a02:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef0000(-1114112) */
ffa08a06:	06 e1 03 c0 	R6.L = 0xc003;		/* (-16381)	R6=0xffefc003(-1064957) */
ffa08a0a:	77 55       	R5 = R7 & R6;
ffa08a0c:	46 e1 80 ff 	R6.H = 0xff80;		/* (-128)	R6=0xff80c003(-8339453) */
ffa08a10:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff804000(-8372224) */
ffa08a14:	35 08       	CC = R5 == R6;
ffa08a16:	04 10       	IF !CC JUMP 0xffa08a1e <invalid>;
ffa08a18:	2f 32       	P5 = R7;
ffa08a1a:	d6 b9       	R6 = [FP -0xc];
ffa08a1c:	2e 93       	[P5] = R6;

ffa08a1e <invalid>:
ffa08a1e:	ff e3 0d fc 	CALL 0xffa08238 <_get_asm>;

ffa08a22 <rp_bot>:
ffa08a22:	00 00       	NOP;
ffa08a24:	ff e3 0a fc 	CALL 0xffa08238 <_get_asm>;
ffa08a28:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08a2a:	0f b5       	W[P1 + 0x8] = R7;
ffa08a2c:	ff e3 06 fc 	CALL 0xffa08238 <_get_asm>;

ffa08a30 <no_rxpacket>:
ffa08a30:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa08a32:	8f b4       	W[P1 + 0x4] = R7;
ffa08a34:	ff e3 02 fc 	CALL 0xffa08238 <_get_asm>;
ffa08a38:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08a3a:	8f b4       	W[P1 + 0x4] = R7;
ffa08a3c:	ff e3 fe fb 	CALL 0xffa08238 <_get_asm>;
ffa08a40:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08a44:	1e 97       	W[P3] = R6;
ffa08a46:	ff e3 f9 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a4a:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08a4c:	0f b5       	W[P1 + 0x8] = R7;
ffa08a4e:	ff e3 f5 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a52:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08a54:	8f b4       	W[P1 + 0x4] = R7;
ffa08a56:	ff e3 f1 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a5a:	06 61       	R6 = 0x20 (X);		/*		R6=0x0(  0) */
ffa08a5c:	1e 97       	W[P3] = R6;
ffa08a5e:	ff e3 ed fb 	CALL 0xffa08238 <_get_asm>;
ffa08a62:	f6 60       	R6 = 0x1e (X);		/*		R6=0x0(  0) */
ffa08a64:	1e 97       	W[P3] = R6;
ffa08a66:	ff e3 e9 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a6a:	17 60       	R7 = 0x2 (X);		/*		R7=0x0(  0) */
ffa08a6c:	0f b5       	W[P1 + 0x8] = R7;
ffa08a6e:	ff e3 e5 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a72:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa08a76:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa08a7a:	2f 93       	[P5] = R7;
ffa08a7c:	ff e3 de fb 	CALL 0xffa08238 <_get_asm>;
ffa08a80:	87 60       	R7 = 0x10 (X);		/*		R7=0x0(  0) */
ffa08a82:	8f b4       	W[P1 + 0x4] = R7;
ffa08a84:	ff e3 da fb 	CALL 0xffa08238 <_get_asm>;
ffa08a88:	e7 b8       	R7 = [FP -0x48];
ffa08a8a:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa08a8e:	f7 51       	R7 = R7 + R6;
ffa08a90:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa08a94:	0e b5       	W[P1 + 0x8] = R6;
ffa08a96:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa08a98:	e7 ba       	[FP -0x48] = R7;
ffa08a9a:	ff e3 cf fb 	CALL 0xffa08238 <_get_asm>;
ffa08a9e:	06 2f       	JUMP.S 0xffa088aa <radio_loop>;

ffa08aa0 <_init6>:
ffa08aa0:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08aa4:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08aa8:	80 36       	B0 = I0;
ffa08aaa:	1c e1 00 2d 	L0.L = 0x2d00;		/* (11520)	L0=0x2d00(11520) */
ffa08aae:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x2d00(11520) */
ffa08ab2:	14 e1 d0 02 	M0.L = 0x2d0;		/* (720)	M0=0x2d0(720) */
ffa08ab6:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x2d0(720) */
ffa08aba:	00 69       	P0 = 0x20 (X);		/*		P0=0x0(  0) */
ffa08abc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08abe:	a2 e0 83 50 	LSETUP(0xffa08ac2 <lt_top>, 0xffa08bc4 <lt_bot>) LC0 = P5;

ffa08ac2 <lt_top>:
ffa08ac2:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08ac6:	00 9e       	[I0++] = R0;
ffa08ac8:	15 68       	P5 = 0x2 (X);		/*		P5=0x0(  0) */
ffa08aca:	b2 e0 7a 50 	LSETUP(0xffa08ace <lt2_top>, 0xffa08bbe <lt2_bot>) LC1 = P5;

ffa08ace <lt2_top>:
ffa08ace:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa08ad2:	40 e1 00 c0 	R0.H = 0xc000;		/* (-16384)	R0=0xc0007d00(-1073709824) */
ffa08ad6:	00 9e       	[I0++] = R0;
ffa08ad8:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xc0004000(-1073725440) */
ffa08adc:	40 e1 84 03 	R0.H = 0x384;		/* (900)	R0=0x3844000(58998784) */
ffa08ae0:	00 9e       	[I0++] = R0;
ffa08ae2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08ae4:	00 9e       	[I0++] = R0;
ffa08ae6:	00 9e       	[I0++] = R0;
ffa08ae8:	00 9e       	[I0++] = R0;
ffa08aea:	00 9e       	[I0++] = R0;
ffa08aec:	00 9e       	[I0++] = R0;
ffa08aee:	00 9e       	[I0++] = R0;
ffa08af0:	00 9e       	[I0++] = R0;
ffa08af2:	00 9e       	[I0++] = R0;
ffa08af4:	00 9e       	[I0++] = R0;
ffa08af6:	00 9e       	[I0++] = R0;
ffa08af8:	00 9e       	[I0++] = R0;
ffa08afa:	00 9e       	[I0++] = R0;
ffa08afc:	00 9e       	[I0++] = R0;
ffa08afe:	00 9e       	[I0++] = R0;
ffa08b00:	00 9e       	[I0++] = R0;
ffa08b02:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08b06:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08b0a:	00 9e       	[I0++] = R0;
ffa08b0c:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x26bb4000(649805824) */
ffa08b10:	40 e1 01 00 	R0.H = 0x1;		/* (  1)	R0=0x14000(81920) */
ffa08b14:	00 9e       	[I0++] = R0;
ffa08b16:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b1a:	20 9e       	W[I0++] = R0.L;
ffa08b1c:	20 9e       	W[I0++] = R0.L;
ffa08b1e:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08b22:	20 9e       	W[I0++] = R0.L;
ffa08b24:	20 9e       	W[I0++] = R0.L;
ffa08b26:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b2a:	20 9e       	W[I0++] = R0.L;
ffa08b2c:	20 9e       	W[I0++] = R0.L;
ffa08b2e:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08b32:	20 9e       	W[I0++] = R0.L;
ffa08b34:	20 9e       	W[I0++] = R0.L;
ffa08b36:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08b3a:	20 9e       	W[I0++] = R0.L;
ffa08b3c:	20 9e       	W[I0++] = R0.L;
ffa08b3e:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b42:	20 9e       	W[I0++] = R0.L;
ffa08b44:	20 9e       	W[I0++] = R0.L;
ffa08b46:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08b4a:	20 9e       	W[I0++] = R0.L;
ffa08b4c:	20 9e       	W[I0++] = R0.L;
ffa08b4e:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b52:	20 9e       	W[I0++] = R0.L;
ffa08b54:	20 9e       	W[I0++] = R0.L;
ffa08b56:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08b5a:	20 9e       	W[I0++] = R0.L;
ffa08b5c:	20 9e       	W[I0++] = R0.L;
ffa08b5e:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa08b62:	20 9e       	W[I0++] = R0.L;
ffa08b64:	20 9e       	W[I0++] = R0.L;
ffa08b66:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa08b6a:	20 9e       	W[I0++] = R0.L;
ffa08b6c:	20 9e       	W[I0++] = R0.L;
ffa08b6e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b72:	20 9e       	W[I0++] = R0.L;
ffa08b74:	20 9e       	W[I0++] = R0.L;
ffa08b76:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa08b7a:	20 9e       	W[I0++] = R0.L;
ffa08b7c:	20 9e       	W[I0++] = R0.L;
ffa08b7e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b82:	20 9e       	W[I0++] = R0.L;
ffa08b84:	20 9e       	W[I0++] = R0.L;
ffa08b86:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08b8a:	20 9e       	W[I0++] = R0.L;
ffa08b8c:	20 9e       	W[I0++] = R0.L;
ffa08b8e:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa08b92:	20 9e       	W[I0++] = R0.L;
ffa08b94:	20 9e       	W[I0++] = R0.L;
ffa08b96:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b9a:	20 9e       	W[I0++] = R0.L;
ffa08b9c:	20 9e       	W[I0++] = R0.L;
ffa08b9e:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa08ba2:	20 9e       	W[I0++] = R0.L;
ffa08ba4:	20 9e       	W[I0++] = R0.L;
ffa08ba6:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08baa:	20 9e       	W[I0++] = R0.L;
ffa08bac:	20 9e       	W[I0++] = R0.L;
ffa08bae:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa08bb2:	20 9e       	W[I0++] = R0.L;
ffa08bb4:	20 9e       	W[I0++] = R0.L;
ffa08bb6:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa08bba:	20 9e       	W[I0++] = R0.L;
ffa08bbc:	20 9e       	W[I0++] = R0.L;

ffa08bbe <lt2_bot>:
ffa08bbe:	01 9e       	[I0++] = R1;
ffa08bc0:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa08bc2:	41 50       	R1 = R1 + R0;

ffa08bc4 <lt_bot>:
ffa08bc4:	08 e1 c8 28 	P0.L = 0x28c8;		/* (10440)	P0=0x28c8 */
ffa08bc8:	48 e1 00 00 	P0.H = 0x0;		/* (  0)	P0=0x28c8 */
ffa08bcc:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa08bd0:	00 93       	[P0] = R0;
ffa08bd2:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa08bd6:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa08bda:	1d e1 00 10 	L1.L = 0x1000;		/* (4096)	L1=0x1000(4096) */
ffa08bde:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1000(4096) */
ffa08be2:	91 34       	I2 = I1;
ffa08be4:	89 36       	B1 = I1;
ffa08be6:	92 36       	B2 = I2;
ffa08be8:	f5 36       	L2 = L1;
ffa08bea:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0x400 */
ffa08bee:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x400 */
ffa08bf2:	a2 e0 03 50 	LSETUP(0xffa08bf6 <lt3_top>, 0xffa08bf8 <lt3_bot>) LC0 = P5;

ffa08bf6 <lt3_top>:
ffa08bf6:	28 92       	[P5++] = R0;

ffa08bf8 <lt3_bot>:
ffa08bf8:	13 e1 00 50 	I3.L = 0x5000;		/* (20480)	I3=0x5000(20480) */
ffa08bfc:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805000(-8368128) */
ffa08c00:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa08c04:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa08c08:	9b 36       	B3 = I3;
ffa08c0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c0c:	8c 30       	R1 = M0;
ffa08c0e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08c10:	85 69       	P5 = 0x30 (X);		/*		P5=0x0(  0) */
ffa08c12:	a2 e0 3e 50 	LSETUP(0xffa08c16 <lt4_top>, 0xffa08c8e <lt4_bot>) LC0 = P5;

ffa08c16 <lt4_top>:
ffa08c16:	35 68       	P5 = 0x6 (X);		/*		P5=0x0(  0) */
ffa08c18:	a2 e0 12 50 	LSETUP(0xffa08c1c <lt5_top>, 0xffa08c3c <lt5_bot>) LC0 = P5;

ffa08c1c <lt5_top>:
ffa08c1c:	84 60       	R4 = 0x10 (X);		/*		R4=0x0(  0) */
ffa08c1e:	c4 52       	R3 = R4 - R0;
ffa08c20:	24 60       	R4 = 0x4 (X);		/*		R4=0x0(  0) */
ffa08c22:	e3 40       	R3 *= R4;
ffa08c24:	1b 9e       	[I3++] = R3;
ffa08c26:	0c 60       	R4 = 0x1 (X);		/*		R4=0x0(  0) */
ffa08c28:	e0 50       	R3 = R0 + R4;
ffa08c2a:	cb 40       	R3 *= R1;
ffa08c2c:	1b 9e       	[I3++] = R3;
ffa08c2e:	18 9e       	[I3++] = R0;
ffa08c30:	20 50       	R0 = R0 + R4;
ffa08c32:	7c 60       	R4 = 0xf (X);		/*		R4=0x0(  0) */
ffa08c34:	20 08       	CC = R0 == R4;
ffa08c36:	02 10       	IF !CC JUMP 0xffa08c3a <no_rollover>;
ffa08c38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa08c3a <no_rollover>:
	...

ffa08c3c <lt5_bot>:
ffa08c3c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08c3e:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa08c42:	0c 60       	R4 = 0x1 (X);		/*		R4=0x0(  0) */
ffa08c44:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa08c48:	e3 54       	R3 = R3 & R4;
ffa08c4a:	5d 57       	R5 = R5 | R3;
ffa08c4c:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa08c50:	82 c6 e4 89 	R4 = R4 >> 0x4;
ffa08c54:	e3 54       	R3 = R3 & R4;
ffa08c56:	5d 57       	R5 = R5 | R3;
ffa08c58:	82 c6 72 86 	R3 = R2 << 0xe;
ffa08c5c:	82 c6 e4 89 	R4 = R4 >> 0x4;
ffa08c60:	e3 54       	R3 = R3 & R4;
ffa08c62:	5d 57       	R5 = R5 | R3;
ffa08c64:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa08c68:	82 c6 e4 89 	R4 = R4 >> 0x4;
ffa08c6c:	e3 54       	R3 = R3 & R4;
ffa08c6e:	5d 57       	R5 = R5 | R3;
ffa08c70:	1d 9e       	[I3++] = R5;
ffa08c72:	03 e1 20 60 	R3.L = 0x6020;		/* (24608)	R3=0x6020(24608) */
ffa08c76:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806020(-8364000) */
ffa08c7a:	1c 60       	R4 = 0x3 (X);		/*		R4=0x0(  0) */
ffa08c7c:	62 55       	R5 = R2 & R4;
ffa08c7e:	82 c6 2d 8a 	R5 = R5 << 0x5;
ffa08c82:	5d 51       	R5 = R5 + R3;
ffa08c84:	1b 9e       	[I3++] = R3;
ffa08c86:	0c 60       	R4 = 0x1 (X);		/*		R4=0x0(  0) */
ffa08c88:	a2 50       	R2 = R2 + R4;
ffa08c8a:	7c 60       	R4 = 0xf (X);		/*		R4=0x0(  0) */
ffa08c8c:	a2 54       	R2 = R2 & R4;

ffa08c8e <lt4_bot>:
ffa08c8e:	10 00       	RTS;

ffa08c90 <_enc_create>:
ffa08c90:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0x6100 */
ffa08c94:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa08c98:	50 61       	R0 = 0x2a (X);		/*		R0=0x0(  0) */
ffa08c9a:	28 9a       	B[P5++] = R0;
ffa08c9c:	58 61       	R0 = 0x2b (X);		/*		R0=0x0(  0) */
ffa08c9e:	28 9a       	B[P5++] = R0;
ffa08ca0:	60 61       	R0 = 0x2c (X);		/*		R0=0x0(  0) */
ffa08ca2:	28 9a       	B[P5++] = R0;
ffa08ca4:	58 61       	R0 = 0x2b (X);		/*		R0=0x0(  0) */
ffa08ca6:	28 9a       	B[P5++] = R0;
ffa08ca8:	68 61       	R0 = 0x2d (X);		/*		R0=0x0(  0) */
ffa08caa:	28 9a       	B[P5++] = R0;
ffa08cac:	70 61       	R0 = 0x2e (X);		/*		R0=0x0(  0) */
ffa08cae:	28 9a       	B[P5++] = R0;
ffa08cb0:	78 61       	R0 = 0x2f (X);		/*		R0=0x0(  0) */
ffa08cb2:	28 9a       	B[P5++] = R0;
ffa08cb4:	70 61       	R0 = 0x2e (X);		/*		R0=0x0(  0) */
ffa08cb6:	28 9a       	B[P5++] = R0;
ffa08cb8:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa08cba:	28 9a       	B[P5++] = R0;
ffa08cbc:	88 61       	R0 = 0x31 (X);		/*		R0=0x0(  0) */
ffa08cbe:	28 9a       	B[P5++] = R0;
ffa08cc0:	90 61       	R0 = 0x32 (X);		/*		R0=0x0(  0) */
ffa08cc2:	28 9a       	B[P5++] = R0;
ffa08cc4:	88 61       	R0 = 0x31 (X);		/*		R0=0x0(  0) */
ffa08cc6:	28 9a       	B[P5++] = R0;
ffa08cc8:	68 61       	R0 = 0x2d (X);		/*		R0=0x0(  0) */
ffa08cca:	28 9a       	B[P5++] = R0;
ffa08ccc:	70 61       	R0 = 0x2e (X);		/*		R0=0x0(  0) */
ffa08cce:	28 9a       	B[P5++] = R0;
ffa08cd0:	78 61       	R0 = 0x2f (X);		/*		R0=0x0(  0) */
ffa08cd2:	28 9a       	B[P5++] = R0;
ffa08cd4:	70 61       	R0 = 0x2e (X);		/*		R0=0x0(  0) */
ffa08cd6:	28 9a       	B[P5++] = R0;
ffa08cd8:	98 61       	R0 = 0x33 (X);		/*		R0=0x0(  0) */
ffa08cda:	28 9a       	B[P5++] = R0;
ffa08cdc:	a0 61       	R0 = 0x34 (X);		/*		R0=0x0(  0) */
ffa08cde:	28 9a       	B[P5++] = R0;
ffa08ce0:	a8 61       	R0 = 0x35 (X);		/*		R0=0x0(  0) */
ffa08ce2:	28 9a       	B[P5++] = R0;
ffa08ce4:	b0 61       	R0 = 0x36 (X);		/*		R0=0x0(  0) */
ffa08ce6:	28 9a       	B[P5++] = R0;
ffa08ce8:	b8 61       	R0 = 0x37 (X);		/*		R0=0x0(  0) */
ffa08cea:	28 9a       	B[P5++] = R0;
ffa08cec:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa08cee:	28 9a       	B[P5++] = R0;
ffa08cf0:	c8 61       	R0 = 0x39 (X);		/*		R0=0x0(  0) */
ffa08cf2:	28 9a       	B[P5++] = R0;
ffa08cf4:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa08cf6:	28 9a       	B[P5++] = R0;
ffa08cf8:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa08cfa:	28 9a       	B[P5++] = R0;
ffa08cfc:	d8 61       	R0 = 0x3b (X);		/*		R0=0x0(  0) */
ffa08cfe:	28 9a       	B[P5++] = R0;
ffa08d00:	e0 61       	R0 = 0x3c (X);		/*		R0=0x0(  0) */
ffa08d02:	28 9a       	B[P5++] = R0;
ffa08d04:	d8 61       	R0 = 0x3b (X);		/*		R0=0x0(  0) */
ffa08d06:	28 9a       	B[P5++] = R0;
ffa08d08:	b8 61       	R0 = 0x37 (X);		/*		R0=0x0(  0) */
ffa08d0a:	28 9a       	B[P5++] = R0;
ffa08d0c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa08d0e:	28 9a       	B[P5++] = R0;
ffa08d10:	e8 61       	R0 = 0x3d (X);		/*		R0=0x0(  0) */
ffa08d12:	28 9a       	B[P5++] = R0;
ffa08d14:	f0 61       	R0 = 0x3e (X);		/*		R0=0x0(  0) */
ffa08d16:	28 9a       	B[P5++] = R0;
ffa08d18:	f8 61       	R0 = 0x3f (X);		/*		R0=0x0(  0) */
ffa08d1a:	28 9a       	B[P5++] = R0;
ffa08d1c:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08d20:	28 9a       	B[P5++] = R0;
ffa08d22:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa08d26:	28 9a       	B[P5++] = R0;
ffa08d28:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08d2c:	28 9a       	B[P5++] = R0;
ffa08d2e:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08d32:	28 9a       	B[P5++] = R0;
ffa08d34:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08d38:	28 9a       	B[P5++] = R0;
ffa08d3a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08d3e:	28 9a       	B[P5++] = R0;
ffa08d40:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08d44:	28 9a       	B[P5++] = R0;
ffa08d46:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa08d4a:	28 9a       	B[P5++] = R0;
ffa08d4c:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa08d50:	28 9a       	B[P5++] = R0;
ffa08d52:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa08d56:	28 9a       	B[P5++] = R0;
ffa08d58:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa08d5c:	28 9a       	B[P5++] = R0;
ffa08d5e:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08d62:	28 9a       	B[P5++] = R0;
ffa08d64:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08d68:	28 9a       	B[P5++] = R0;
ffa08d6a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08d6e:	28 9a       	B[P5++] = R0;
ffa08d70:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08d74:	28 9a       	B[P5++] = R0;
ffa08d76:	98 61       	R0 = 0x33 (X);		/*		R0=0x0(  0) */
ffa08d78:	28 9a       	B[P5++] = R0;
ffa08d7a:	a0 61       	R0 = 0x34 (X);		/*		R0=0x0(  0) */
ffa08d7c:	28 9a       	B[P5++] = R0;
ffa08d7e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x0(  0) */
ffa08d80:	28 9a       	B[P5++] = R0;
ffa08d82:	a0 61       	R0 = 0x34 (X);		/*		R0=0x0(  0) */
ffa08d84:	28 9a       	B[P5++] = R0;
ffa08d86:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa08d8a:	28 9a       	B[P5++] = R0;
ffa08d8c:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa08d90:	28 9a       	B[P5++] = R0;
ffa08d92:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa08d96:	28 9a       	B[P5++] = R0;
ffa08d98:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa08d9a:	28 9a       	B[P5++] = R0;
ffa08d9c:	d0 61       	R0 = 0x3a (X);		/*		R0=0x0(  0) */
ffa08d9e:	28 9a       	B[P5++] = R0;
ffa08da0:	d8 61       	R0 = 0x3b (X);		/*		R0=0x0(  0) */
ffa08da2:	28 9a       	B[P5++] = R0;
ffa08da4:	e0 61       	R0 = 0x3c (X);		/*		R0=0x0(  0) */
ffa08da6:	28 9a       	B[P5++] = R0;
ffa08da8:	d8 61       	R0 = 0x3b (X);		/*		R0=0x0(  0) */
ffa08daa:	28 9a       	B[P5++] = R0;
ffa08dac:	b8 61       	R0 = 0x37 (X);		/*		R0=0x0(  0) */
ffa08dae:	28 9a       	B[P5++] = R0;
ffa08db0:	c0 61       	R0 = 0x38 (X);		/*		R0=0x0(  0) */
ffa08db2:	28 9a       	B[P5++] = R0;
ffa08db4:	c8 61       	R0 = 0x39 (X);		/*		R0=0x0(  0) */
ffa08db6:	28 9a       	B[P5++] = R0;
ffa08db8:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa08dbc:	28 9a       	B[P5++] = R0;
ffa08dbe:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa08dc2:	28 9a       	B[P5++] = R0;
ffa08dc4:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08dc8:	28 9a       	B[P5++] = R0;
ffa08dca:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa08dce:	28 9a       	B[P5++] = R0;
ffa08dd0:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08dd4:	28 9a       	B[P5++] = R0;
ffa08dd6:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa08dda:	28 9a       	B[P5++] = R0;
ffa08ddc:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08de0:	28 9a       	B[P5++] = R0;
ffa08de2:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08de6:	28 9a       	B[P5++] = R0;
ffa08de8:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08dec:	28 9a       	B[P5++] = R0;
ffa08dee:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa08df2:	28 9a       	B[P5++] = R0;
ffa08df4:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa08df8:	28 9a       	B[P5++] = R0;
ffa08dfa:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa08dfe:	28 9a       	B[P5++] = R0;
ffa08e00:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa08e04:	28 9a       	B[P5++] = R0;
ffa08e06:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa08e0a:	28 9a       	B[P5++] = R0;
ffa08e0c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e10:	28 9a       	B[P5++] = R0;
ffa08e12:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08e16:	28 9a       	B[P5++] = R0;
ffa08e18:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e1c:	28 9a       	B[P5++] = R0;
ffa08e1e:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08e22:	28 9a       	B[P5++] = R0;
ffa08e24:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08e28:	28 9a       	B[P5++] = R0;
ffa08e2a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08e2e:	28 9a       	B[P5++] = R0;
ffa08e30:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08e34:	28 9a       	B[P5++] = R0;
ffa08e36:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08e3a:	28 9a       	B[P5++] = R0;
ffa08e3c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08e40:	28 9a       	B[P5++] = R0;
ffa08e42:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08e46:	28 9a       	B[P5++] = R0;
ffa08e48:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa08e4c:	28 9a       	B[P5++] = R0;
ffa08e4e:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa08e52:	28 9a       	B[P5++] = R0;
ffa08e54:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08e58:	28 9a       	B[P5++] = R0;
ffa08e5a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08e5e:	28 9a       	B[P5++] = R0;
ffa08e60:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08e64:	28 9a       	B[P5++] = R0;
ffa08e66:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08e6a:	28 9a       	B[P5++] = R0;
ffa08e6c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08e70:	28 9a       	B[P5++] = R0;
ffa08e72:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08e76:	28 9a       	B[P5++] = R0;
ffa08e78:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08e7c:	28 9a       	B[P5++] = R0;
ffa08e7e:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa08e82:	28 9a       	B[P5++] = R0;
ffa08e84:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08e88:	28 9a       	B[P5++] = R0;
ffa08e8a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa08e8e:	28 9a       	B[P5++] = R0;
ffa08e90:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08e94:	28 9a       	B[P5++] = R0;
ffa08e96:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa08e9a:	28 9a       	B[P5++] = R0;
ffa08e9c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08ea0:	28 9a       	B[P5++] = R0;
ffa08ea2:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08ea6:	28 9a       	B[P5++] = R0;
ffa08ea8:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08eac:	28 9a       	B[P5++] = R0;
ffa08eae:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa08eb2:	28 9a       	B[P5++] = R0;
ffa08eb4:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa08eb8:	28 9a       	B[P5++] = R0;
ffa08eba:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa08ebe:	28 9a       	B[P5++] = R0;
ffa08ec0:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa08ec4:	28 9a       	B[P5++] = R0;
ffa08ec6:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa08eca:	28 9a       	B[P5++] = R0;
ffa08ecc:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa08ed0:	28 9a       	B[P5++] = R0;
ffa08ed2:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08ed6:	28 9a       	B[P5++] = R0;
ffa08ed8:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08edc:	28 9a       	B[P5++] = R0;
ffa08ede:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08ee2:	28 9a       	B[P5++] = R0;
ffa08ee4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08ee8:	28 9a       	B[P5++] = R0;
ffa08eea:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08eee:	28 9a       	B[P5++] = R0;
ffa08ef0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08ef4:	28 9a       	B[P5++] = R0;
ffa08ef6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08efa:	28 9a       	B[P5++] = R0;
ffa08efc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f00:	28 9a       	B[P5++] = R0;
ffa08f02:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa08f06:	28 9a       	B[P5++] = R0;
ffa08f08:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa08f0c:	28 9a       	B[P5++] = R0;
ffa08f0e:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa08f12:	28 9a       	B[P5++] = R0;
ffa08f14:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f18:	28 9a       	B[P5++] = R0;
ffa08f1a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08f1e:	28 9a       	B[P5++] = R0;
ffa08f20:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f24:	28 9a       	B[P5++] = R0;
ffa08f26:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08f2a:	28 9a       	B[P5++] = R0;
ffa08f2c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f30:	28 9a       	B[P5++] = R0;
ffa08f32:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08f36:	28 9a       	B[P5++] = R0;
ffa08f38:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f3c:	28 9a       	B[P5++] = R0;
ffa08f3e:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa08f42:	28 9a       	B[P5++] = R0;
ffa08f44:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa08f48:	28 9a       	B[P5++] = R0;
ffa08f4a:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa08f4e:	28 9a       	B[P5++] = R0;
ffa08f50:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa08f54:	28 9a       	B[P5++] = R0;
ffa08f56:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa08f5a:	28 9a       	B[P5++] = R0;
ffa08f5c:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08f60:	28 9a       	B[P5++] = R0;
ffa08f62:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa08f66:	28 9a       	B[P5++] = R0;
ffa08f68:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08f6c:	28 9a       	B[P5++] = R0;
ffa08f6e:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa08f72:	28 9a       	B[P5++] = R0;
ffa08f74:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa08f78:	28 9a       	B[P5++] = R0;
ffa08f7a:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa08f7e:	28 9a       	B[P5++] = R0;
ffa08f80:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa08f84:	28 9a       	B[P5++] = R0;
ffa08f86:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa08f8a:	28 9a       	B[P5++] = R0;
ffa08f8c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa08f90:	28 9a       	B[P5++] = R0;
ffa08f92:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa08f96:	28 9a       	B[P5++] = R0;
ffa08f98:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08f9c:	28 9a       	B[P5++] = R0;
ffa08f9e:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa08fa2:	28 9a       	B[P5++] = R0;
ffa08fa4:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa08fa8:	28 9a       	B[P5++] = R0;
ffa08faa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08fac:	28 9a       	B[P5++] = R0;
ffa08fae:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa08fb2:	28 9a       	B[P5++] = R0;
ffa08fb4:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa08fb6:	28 9a       	B[P5++] = R0;
ffa08fb8:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa08fba:	28 9a       	B[P5++] = R0;
ffa08fbc:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa08fbe:	28 9a       	B[P5++] = R0;
ffa08fc0:	20 60       	R0 = 0x4 (X);		/*		R0=0x0(  0) */
ffa08fc2:	28 9a       	B[P5++] = R0;
ffa08fc4:	28 60       	R0 = 0x5 (X);		/*		R0=0x0(  0) */
ffa08fc6:	28 9a       	B[P5++] = R0;
ffa08fc8:	30 60       	R0 = 0x6 (X);		/*		R0=0x0(  0) */
ffa08fca:	28 9a       	B[P5++] = R0;
ffa08fcc:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa08fce:	28 9a       	B[P5++] = R0;
ffa08fd0:	30 60       	R0 = 0x6 (X);		/*		R0=0x0(  0) */
ffa08fd2:	28 9a       	B[P5++] = R0;
ffa08fd4:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa08fd6:	28 9a       	B[P5++] = R0;
ffa08fd8:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa08fda:	28 9a       	B[P5++] = R0;
ffa08fdc:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa08fde:	28 9a       	B[P5++] = R0;
ffa08fe0:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa08fe2:	28 9a       	B[P5++] = R0;
ffa08fe4:	40 60       	R0 = 0x8 (X);		/*		R0=0x0(  0) */
ffa08fe6:	28 9a       	B[P5++] = R0;
ffa08fe8:	48 60       	R0 = 0x9 (X);		/*		R0=0x0(  0) */
ffa08fea:	28 9a       	B[P5++] = R0;
ffa08fec:	50 60       	R0 = 0xa (X);		/*		R0=0x0(  0) */
ffa08fee:	28 9a       	B[P5++] = R0;
ffa08ff0:	58 60       	R0 = 0xb (X);		/*		R0=0x0(  0) */
ffa08ff2:	28 9a       	B[P5++] = R0;
ffa08ff4:	60 60       	R0 = 0xc (X);		/*		R0=0x0(  0) */
ffa08ff6:	28 9a       	B[P5++] = R0;
ffa08ff8:	68 60       	R0 = 0xd (X);		/*		R0=0x0(  0) */
ffa08ffa:	28 9a       	B[P5++] = R0;
ffa08ffc:	70 60       	R0 = 0xe (X);		/*		R0=0x0(  0) */
ffa08ffe:	28 9a       	B[P5++] = R0;
ffa09000:	68 60       	R0 = 0xd (X);		/*		R0=0x0(  0) */
ffa09002:	28 9a       	B[P5++] = R0;
ffa09004:	78 60       	R0 = 0xf (X);		/*		R0=0x0(  0) */
ffa09006:	28 9a       	B[P5++] = R0;
ffa09008:	80 60       	R0 = 0x10 (X);		/*		R0=0x0(  0) */
ffa0900a:	28 9a       	B[P5++] = R0;
ffa0900c:	88 60       	R0 = 0x11 (X);		/*		R0=0x0(  0) */
ffa0900e:	28 9a       	B[P5++] = R0;
ffa09010:	80 60       	R0 = 0x10 (X);		/*		R0=0x0(  0) */
ffa09012:	28 9a       	B[P5++] = R0;
ffa09014:	60 60       	R0 = 0xc (X);		/*		R0=0x0(  0) */
ffa09016:	28 9a       	B[P5++] = R0;
ffa09018:	90 60       	R0 = 0x12 (X);		/*		R0=0x0(  0) */
ffa0901a:	28 9a       	B[P5++] = R0;
ffa0901c:	98 60       	R0 = 0x13 (X);		/*		R0=0x0(  0) */
ffa0901e:	28 9a       	B[P5++] = R0;
ffa09020:	a0 60       	R0 = 0x14 (X);		/*		R0=0x0(  0) */
ffa09022:	28 9a       	B[P5++] = R0;
ffa09024:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09028:	28 9a       	B[P5++] = R0;
ffa0902a:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0902e:	28 9a       	B[P5++] = R0;
ffa09030:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09032:	28 9a       	B[P5++] = R0;
ffa09034:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09038:	28 9a       	B[P5++] = R0;
ffa0903a:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0903c:	28 9a       	B[P5++] = R0;
ffa0903e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa09040:	28 9a       	B[P5++] = R0;
ffa09042:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa09044:	28 9a       	B[P5++] = R0;
ffa09046:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa09048:	28 9a       	B[P5++] = R0;
ffa0904a:	a8 60       	R0 = 0x15 (X);		/*		R0=0x0(  0) */
ffa0904c:	28 9a       	B[P5++] = R0;
ffa0904e:	b0 60       	R0 = 0x16 (X);		/*		R0=0x0(  0) */
ffa09050:	28 9a       	B[P5++] = R0;
ffa09052:	b8 60       	R0 = 0x17 (X);		/*		R0=0x0(  0) */
ffa09054:	28 9a       	B[P5++] = R0;
ffa09056:	30 60       	R0 = 0x6 (X);		/*		R0=0x0(  0) */
ffa09058:	28 9a       	B[P5++] = R0;
ffa0905a:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0905c:	28 9a       	B[P5++] = R0;
ffa0905e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa09060:	28 9a       	B[P5++] = R0;
ffa09062:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa09064:	28 9a       	B[P5++] = R0;
ffa09066:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa09068:	28 9a       	B[P5++] = R0;
ffa0906a:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa0906e:	28 9a       	B[P5++] = R0;
ffa09070:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09074:	28 9a       	B[P5++] = R0;
ffa09076:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0907a:	28 9a       	B[P5++] = R0;
ffa0907c:	c0 60       	R0 = 0x18 (X);		/*		R0=0x0(  0) */
ffa0907e:	28 9a       	B[P5++] = R0;
ffa09080:	c8 60       	R0 = 0x19 (X);		/*		R0=0x0(  0) */
ffa09082:	28 9a       	B[P5++] = R0;
ffa09084:	d0 60       	R0 = 0x1a (X);		/*		R0=0x0(  0) */
ffa09086:	28 9a       	B[P5++] = R0;
ffa09088:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0908c:	28 9a       	B[P5++] = R0;
ffa0908e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09092:	28 9a       	B[P5++] = R0;
ffa09094:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09098:	28 9a       	B[P5++] = R0;
ffa0909a:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0909e:	28 9a       	B[P5++] = R0;
ffa090a0:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa090a4:	28 9a       	B[P5++] = R0;
ffa090a6:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa090aa:	28 9a       	B[P5++] = R0;
ffa090ac:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa090b0:	28 9a       	B[P5++] = R0;
ffa090b2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa090b6:	28 9a       	B[P5++] = R0;
ffa090b8:	d8 60       	R0 = 0x1b (X);		/*		R0=0x0(  0) */
ffa090ba:	28 9a       	B[P5++] = R0;
ffa090bc:	e0 60       	R0 = 0x1c (X);		/*		R0=0x0(  0) */
ffa090be:	28 9a       	B[P5++] = R0;
ffa090c0:	e8 60       	R0 = 0x1d (X);		/*		R0=0x0(  0) */
ffa090c2:	28 9a       	B[P5++] = R0;
ffa090c4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa090c8:	28 9a       	B[P5++] = R0;
ffa090ca:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa090ce:	28 9a       	B[P5++] = R0;
ffa090d0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa090d4:	28 9a       	B[P5++] = R0;
ffa090d6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa090da:	28 9a       	B[P5++] = R0;
ffa090dc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa090e0:	28 9a       	B[P5++] = R0;
ffa090e2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa090e6:	28 9a       	B[P5++] = R0;
ffa090e8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa090ec:	28 9a       	B[P5++] = R0;
ffa090ee:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa090f2:	28 9a       	B[P5++] = R0;
ffa090f4:	f0 60       	R0 = 0x1e (X);		/*		R0=0x0(  0) */
ffa090f6:	28 9a       	B[P5++] = R0;
ffa090f8:	f8 60       	R0 = 0x1f (X);		/*		R0=0x0(  0) */
ffa090fa:	28 9a       	B[P5++] = R0;
ffa090fc:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa090fe:	28 9a       	B[P5++] = R0;
ffa09100:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09104:	28 9a       	B[P5++] = R0;
ffa09106:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0910a:	28 9a       	B[P5++] = R0;
ffa0910c:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09110:	28 9a       	B[P5++] = R0;
ffa09112:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09116:	28 9a       	B[P5++] = R0;
ffa09118:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa0911c:	28 9a       	B[P5++] = R0;
ffa0911e:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09122:	28 9a       	B[P5++] = R0;
ffa09124:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa09128:	28 9a       	B[P5++] = R0;
ffa0912a:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa0912e:	28 9a       	B[P5++] = R0;
ffa09130:	08 61       	R0 = 0x21 (X);		/*		R0=0x0(  0) */
ffa09132:	28 9a       	B[P5++] = R0;
ffa09134:	10 61       	R0 = 0x22 (X);		/*		R0=0x0(  0) */
ffa09136:	28 9a       	B[P5++] = R0;
ffa09138:	18 61       	R0 = 0x23 (X);		/*		R0=0x0(  0) */
ffa0913a:	28 9a       	B[P5++] = R0;
ffa0913c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09140:	28 9a       	B[P5++] = R0;
ffa09142:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa09146:	28 9a       	B[P5++] = R0;
ffa09148:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa0914c:	28 9a       	B[P5++] = R0;
ffa0914e:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa09152:	28 9a       	B[P5++] = R0;
ffa09154:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09158:	28 9a       	B[P5++] = R0;
ffa0915a:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa0915e:	28 9a       	B[P5++] = R0;
ffa09160:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09164:	28 9a       	B[P5++] = R0;
ffa09166:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0916a:	28 9a       	B[P5++] = R0;
ffa0916c:	20 61       	R0 = 0x24 (X);		/*		R0=0x0(  0) */
ffa0916e:	28 9a       	B[P5++] = R0;
ffa09170:	28 61       	R0 = 0x25 (X);		/*		R0=0x0(  0) */
ffa09172:	28 9a       	B[P5++] = R0;
ffa09174:	30 61       	R0 = 0x26 (X);		/*		R0=0x0(  0) */
ffa09176:	28 9a       	B[P5++] = R0;
ffa09178:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0917c:	28 9a       	B[P5++] = R0;
ffa0917e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09182:	28 9a       	B[P5++] = R0;
ffa09184:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09188:	28 9a       	B[P5++] = R0;
ffa0918a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0918e:	28 9a       	B[P5++] = R0;
ffa09190:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09194:	28 9a       	B[P5++] = R0;
ffa09196:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0919a:	28 9a       	B[P5++] = R0;
ffa0919c:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa091a0:	28 9a       	B[P5++] = R0;
ffa091a2:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa091a6:	28 9a       	B[P5++] = R0;
ffa091a8:	38 61       	R0 = 0x27 (X);		/*		R0=0x0(  0) */
ffa091aa:	28 9a       	B[P5++] = R0;
ffa091ac:	40 61       	R0 = 0x28 (X);		/*		R0=0x0(  0) */
ffa091ae:	28 9a       	B[P5++] = R0;
ffa091b0:	48 61       	R0 = 0x29 (X);		/*		R0=0x0(  0) */
ffa091b2:	28 9a       	B[P5++] = R0;
ffa091b4:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091b8:	28 9a       	B[P5++] = R0;
ffa091ba:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa091be:	28 9a       	B[P5++] = R0;
ffa091c0:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091c4:	28 9a       	B[P5++] = R0;
ffa091c6:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0xff806200 */
ffa091ca:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa091ce:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa091d2:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa091d6:	28 92       	[P5++] = R0;
ffa091d8:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa091dc:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa091e0:	28 92       	[P5++] = R0;
ffa091e2:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa091e6:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa091ea:	28 92       	[P5++] = R0;
ffa091ec:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa091f0:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa091f4:	28 92       	[P5++] = R0;
ffa091f6:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa091fa:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa091fe:	28 92       	[P5++] = R0;
ffa09200:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09204:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09208:	28 92       	[P5++] = R0;
ffa0920a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa0920e:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa09212:	28 92       	[P5++] = R0;
ffa09214:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa09218:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa0921c:	28 92       	[P5++] = R0;
ffa0921e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa09222:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa09226:	28 92       	[P5++] = R0;
ffa09228:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa0922c:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa09230:	28 92       	[P5++] = R0;
ffa09232:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa09236:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0923a:	28 92       	[P5++] = R0;
ffa0923c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa09240:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa09244:	28 92       	[P5++] = R0;
ffa09246:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa0924a:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa0924e:	28 92       	[P5++] = R0;
ffa09250:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa09254:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa09258:	28 92       	[P5++] = R0;
ffa0925a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa0925e:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa09262:	28 92       	[P5++] = R0;
ffa09264:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa09268:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa0926c:	28 92       	[P5++] = R0;
ffa0926e:	10 00       	RTS;

ffa09270 <___divsi3>:
ffa09270:	c8 58       	R3 = R0 ^ R1;
ffa09272:	07 c4 00 80 	R0 = ABS R0;
ffa09276:	18 03       	CC = V;
ffa09278:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa0927c:	07 c4 08 82 	R1 = ABS R1;
ffa09280:	88 08       	CC = R0 < R1;
ffa09282:	76 18       	IF CC JUMP 0xffa0936e <___divsi3+0xfe>;
ffa09284:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa09288:	0a 02       	CC = R2;
ffa0928a:	1e 18       	IF CC JUMP 0xffa092c6 <___divsi3+0x56>;
ffa0928c:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09290:	02 09       	CC = R2 <= R0;
ffa09292:	1a 18       	IF CC JUMP 0xffa092c6 <___divsi3+0x56>;
ffa09294:	48 42       	DIVS (R0, R1);
ffa09296:	08 42       	DIVQ (R0, R1);
ffa09298:	08 42       	DIVQ (R0, R1);
ffa0929a:	08 42       	DIVQ (R0, R1);
ffa0929c:	08 42       	DIVQ (R0, R1);
ffa0929e:	08 42       	DIVQ (R0, R1);
ffa092a0:	08 42       	DIVQ (R0, R1);
ffa092a2:	08 42       	DIVQ (R0, R1);
ffa092a4:	08 42       	DIVQ (R0, R1);
ffa092a6:	08 42       	DIVQ (R0, R1);
ffa092a8:	08 42       	DIVQ (R0, R1);
ffa092aa:	08 42       	DIVQ (R0, R1);
ffa092ac:	08 42       	DIVQ (R0, R1);
ffa092ae:	08 42       	DIVQ (R0, R1);
ffa092b0:	08 42       	DIVQ (R0, R1);
ffa092b2:	08 42       	DIVQ (R0, R1);
ffa092b4:	08 42       	DIVQ (R0, R1);
ffa092b6:	c0 42       	R0 = R0.L (Z);
ffa092b8:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa092bc:	08 50       	R0 = R0 + R1;
ffa092be:	81 43       	R1 = -R0;
ffa092c0:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa092c2:	01 07       	IF CC R0 = R1;
ffa092c4:	10 00       	RTS;
ffa092c6:	01 0c       	CC = R1 == 0x0;
ffa092c8:	34 18       	IF CC JUMP 0xffa09330 <___divsi3+0xc0>;
ffa092ca:	00 0c       	CC = R0 == 0x0;
ffa092cc:	3f 18       	IF CC JUMP 0xffa0934a <___divsi3+0xda>;
ffa092ce:	08 08       	CC = R0 == R1;
ffa092d0:	30 18       	IF CC JUMP 0xffa09330 <___divsi3+0xc0>;
ffa092d2:	09 0c       	CC = R1 == 0x1;
ffa092d4:	2e 18       	IF CC JUMP 0xffa09330 <___divsi3+0xc0>;
ffa092d6:	06 c6 01 c4 	R2.L = ONES R1;
ffa092da:	d2 42       	R2 = R2.L (Z);
ffa092dc:	0a 0c       	CC = R2 == 0x1;
ffa092de:	37 18       	IF CC JUMP 0xffa0934c <___divsi3+0xdc>;
ffa092e0:	f9 68       	P1 = 0x1f (X);		/*		P1=0x0(  0) */
ffa092e2:	68 05       	[--SP] = (R7:5);
ffa092e4:	8a 43       	R2 = -R1;
ffa092e6:	42 01       	[--SP] = R2;
ffa092e8:	82 c6 08 84 	R2 = R0 << 0x1;
ffa092ec:	88 59       	R6 = R0 ^ R1;
ffa092ee:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa092f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa092f4:	aa 56       	R2 = R2 | R5;
ffa092f6:	88 59       	R6 = R0 ^ R1;
ffa092f8:	a2 e0 12 10 	LSETUP(0xffa092fc <___divsi3+0x8c>, 0xffa0931c <___divsi3+0xac>) LC0 = P1;
ffa092fc:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09300:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa09304:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa09308:	35 91 00 00 
ffa0930c:	38 56       	R0 = R0 | R7;
ffa0930e:	86 0c       	CC = R6 < 0x0;
ffa09310:	29 07       	IF CC R5 = R1;
ffa09312:	28 50       	R0 = R0 + R5;
ffa09314:	88 59       	R6 = R0 ^ R1;
ffa09316:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0931a:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa0931c:	aa 50       	R2 = R2 + R5;
ffa0931e:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09322:	8a 50       	R2 = R2 + R1;
ffa09324:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09326:	90 43       	R0 = -R2;
ffa09328:	02 06       	IF !CC R0 = R2;
ffa0932a:	26 6c       	SP += 0x4;		/* (  4) */
ffa0932c:	28 05       	(R7:5) = [SP++];
ffa0932e:	10 00       	RTS;
ffa09330:	01 0c       	CC = R1 == 0x0;
ffa09332:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffff80(-128) */
ffa09334:	0a 4e       	R2 >>= 0x1;
ffa09336:	06 18       	IF CC JUMP 0xffa09342 <___divsi3+0xd2>;
ffa09338:	08 08       	CC = R0 == R1;
ffa0933a:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa0933e:	02 18       	IF CC JUMP 0xffa09342 <___divsi3+0xd2>;
ffa09340:	10 30       	R2 = R0;
ffa09342:	02 30       	R0 = R2;
ffa09344:	92 43       	R2 = -R2;
ffa09346:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09348:	02 07       	IF CC R0 = R2;
ffa0934a:	10 00       	RTS;
ffa0934c:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa09350:	81 0c       	CC = R1 < 0x0;
ffa09352:	f8 1b       	IF CC JUMP 0xffa09342 <___divsi3+0xd2>;
ffa09354:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa09358:	c9 42       	R1 = R1.L (Z);
ffa0935a:	11 67       	R1 += -0x1e;		/* (-30) */
ffa0935c:	02 c6 08 80 	R0 = LSHIFT R0 BY R1.L;
ffa09360:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09364:	08 50       	R0 = R0 + R1;
ffa09366:	82 43       	R2 = -R0;
ffa09368:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0936a:	02 07       	IF CC R0 = R2;
ffa0936c:	10 00       	RTS;
ffa0936e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09370:	10 00       	RTS;
	...

ffa09374 <_main>:
ffa09374:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe07000(-2068480) */
ffa09378:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0937c:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0937e:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09382:	10 93       	[P2] = R0;
ffa09384:	23 00       	CSYNC;
ffa09386:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa0938a:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa0938e:	10 93       	[P2] = R0;
ffa09390:	23 00       	CSYNC;
ffa09392:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09396:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0939a:	40 60       	R0 = 0x8 (X);		/*		R0=0x0(  0) */
ffa0939c:	10 97       	W[P2] = R0;
ffa0939e:	10 95       	R0 = W[P2] (Z);
ffa093a0:	c0 43       	R0 =~ R0;
ffa093a2:	82 6f       	P2 += -0x10;		/* (-16) */
ffa093a4:	10 97       	W[P2] = R0;
ffa093a6:	82 6e       	P2 += -0x30;		/* (-48) */
ffa093a8:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa093ac:	10 97       	W[P2] = R0;
ffa093ae:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa093b2:	00 e3 d3 09 	CALL 0xffa0a758 <_radio_init>;
ffa093b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa093ba:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa093be:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa093c0:	10 97       	W[P2] = R0;
ffa093c2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa093c6:	10 97       	W[P2] = R0;
ffa093c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa093ca:	22 e1 e8 03 	R2 = 0x3e8 (X);		/*		R2=0x3e8(1000) */
	...
ffa093d6:	09 64       	R1 += 0x1;		/* (  1) */
ffa093d8:	c8 42       	R0 = R1.L (Z);
ffa093da:	10 08       	CC = R0 == R2;
ffa093dc:	f9 17       	IF !CC JUMP 0xffa093ce <_main+0x5a> (BP);
ffa093de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa093e2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa093e6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa093ea:	10 97       	W[P2] = R0;
ffa093ec:	00 e3 00 09 	CALL 0xffa0a5ec <_radio_set_tx>;
ffa093f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa093f4:	0a 60       	R2 = 0x1 (X);		/*		R2=0x0(  0) */
ffa093f6:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa093fa:	12 97       	W[P2] = R2;
ffa093fc:	99 60       	R1 = 0x13 (X);		/*		R1=0x0(  0) */
ffa093fe:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09400:	11 97       	W[P2] = R1;
ffa09402:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09406:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa09408:	10 97       	W[P2] = R0;
ffa0940a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa0940e:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09412:	12 97       	W[P2] = R2;
ffa09414:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09416:	11 97       	W[P2] = R1;
ffa09418:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa0941a:	10 97       	W[P2] = R0;
ffa0941c:	ff e3 b3 f9 	CALL 0xffa08782 <_radio_bidi_asm>;
ffa09420:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09422:	01 e8 00 00 	UNLINK;
ffa09426:	10 00       	RTS;

ffa09428 <_nmi_report>:
ffa09428:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa0942c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09430:	00 e1 00 70 	R0.L = 0x7000;		/* (28672)	R0=0xff907000 <_l1_data_a>(-7311360) */
ffa09434:	00 e3 14 02 	CALL 0xffa0985c <_printf_str>;
ffa09438:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907000 <_l1_data_a>(-7311360) */
ffa0943c:	00 e1 18 70 	R0.L = 0x7018;		/* (28696)	R0=0xff907018(-7311336) */
ffa09440:	00 e3 0e 02 	CALL 0xffa0985c <_printf_str>;
ffa09444:	2a e1 2c 01 	P2 = 0x12c (X);		/*		P2=0x12c(300) */
ffa09448:	b2 e0 04 20 	LSETUP(0xffa0944c <_nmi_report+0x24>, 0xffa09450 <_nmi_report+0x28>) LC1 = P2;
ffa0944c:	00 00       	NOP;
ffa0944e:	00 00       	NOP;
ffa09450:	00 00       	NOP;
ffa09452:	01 e8 00 00 	UNLINK;
ffa09456:	10 00       	RTS;

ffa09458 <_exception_report>:
ffa09458:	e5 05       	[--SP] = (R7:4, P5:5);
ffa0945a:	20 30       	R4 = R0;
ffa0945c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0012c(-4194004) */
ffa09460:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09464:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09468:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0946a:	10 97       	W[P2] = R0;
ffa0946c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09470:	29 30       	R5 = R1;
ffa09472:	00 e1 44 70 	R0.L = 0x7044;		/* (28740)	R0=0xff907044(-7311292) */
ffa09476:	00 e3 f3 01 	CALL 0xffa0985c <_printf_str>;
ffa0947a:	f8 60       	R0 = 0x1f (X);		/*		R0=0x0(  0) */
ffa0947c:	82 c6 94 83 	R1 = R4 >> 0xe;
ffa09480:	41 54       	R1 = R1 & R0;
ffa09482:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09486:	00 e1 50 70 	R0.L = 0x7050;		/* (28752)	R0=0xff907050(-7311280) */
ffa0948a:	00 e3 4f 02 	CALL 0xffa09928 <_printf_hex>;
ffa0948e:	f9 61       	R1 = 0x3f (X);		/*		R1=0x0(  0) */
ffa09490:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907050(-7311280) */
ffa09494:	4c 54       	R1 = R4 & R1;
ffa09496:	00 e1 58 70 	R0.L = 0x7058;		/* (28760)	R0=0xff907058(-7311272) */
ffa0949a:	00 e3 47 02 	CALL 0xffa09928 <_printf_hex>;
ffa0949e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907058(-7311272) */
ffa094a2:	0d 30       	R1 = R5;
ffa094a4:	00 e1 64 70 	R0.L = 0x7064;		/* (28772)	R0=0xff907064(-7311260) */
ffa094a8:	00 e3 40 02 	CALL 0xffa09928 <_printf_hex>;
ffa094ac:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff906200 */
ffa094b0:	0d e1 34 71 	P5.L = 0x7134;		/* (28980)	P5=0xff907134 <_g_excregs> */
ffa094b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907064(-7311260) */
ffa094b8:	29 91       	R1 = [P5];
ffa094ba:	00 e1 6c 70 	R0.L = 0x706c;		/* (28780)	R0=0xff90706c(-7311252) */
ffa094be:	00 e3 35 02 	CALL 0xffa09928 <_printf_hex>;
ffa094c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90706c(-7311252) */
ffa094c6:	69 a0       	R1 = [P5 + 0x4];
ffa094c8:	00 e1 70 70 	R0.L = 0x7070;		/* (28784)	R0=0xff907070(-7311248) */
ffa094cc:	00 e3 2e 02 	CALL 0xffa09928 <_printf_hex>;
ffa094d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907070(-7311248) */
ffa094d4:	a9 a0       	R1 = [P5 + 0x8];
ffa094d6:	00 e1 74 70 	R0.L = 0x7074;		/* (28788)	R0=0xff907074(-7311244) */
ffa094da:	00 e3 27 02 	CALL 0xffa09928 <_printf_hex>;
ffa094de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907074(-7311244) */
ffa094e2:	e9 a0       	R1 = [P5 + 0xc];
ffa094e4:	00 e1 78 70 	R0.L = 0x7078;		/* (28792)	R0=0xff907078(-7311240) */
ffa094e8:	00 e3 20 02 	CALL 0xffa09928 <_printf_hex>;
ffa094ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907078(-7311240) */
ffa094f0:	29 a1       	R1 = [P5 + 0x10];
ffa094f2:	00 e1 7c 70 	R0.L = 0x707c;		/* (28796)	R0=0xff90707c(-7311236) */
ffa094f6:	00 e3 19 02 	CALL 0xffa09928 <_printf_hex>;
ffa094fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90707c(-7311236) */
ffa094fe:	69 a1       	R1 = [P5 + 0x14];
ffa09500:	00 e1 80 70 	R0.L = 0x7080;		/* (28800)	R0=0xff907080(-7311232) */
ffa09504:	00 e3 12 02 	CALL 0xffa09928 <_printf_hex>;
ffa09508:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907080(-7311232) */
ffa0950c:	a9 a1       	R1 = [P5 + 0x18];
ffa0950e:	00 e1 84 70 	R0.L = 0x7084;		/* (28804)	R0=0xff907084(-7311228) */
ffa09512:	00 e3 0b 02 	CALL 0xffa09928 <_printf_hex>;
ffa09516:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907084(-7311228) */
ffa0951a:	e9 a1       	R1 = [P5 + 0x1c];
ffa0951c:	00 e1 88 70 	R0.L = 0x7088;		/* (28808)	R0=0xff907088(-7311224) */
ffa09520:	00 e3 04 02 	CALL 0xffa09928 <_printf_hex>;
ffa09524:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907088(-7311224) */
ffa09528:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0952c:	00 e3 38 01 	CALL 0xffa0979c <_uart_str>;
ffa09530:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09534:	29 a2       	R1 = [P5 + 0x20];
ffa09536:	00 e1 90 70 	R0.L = 0x7090;		/* (28816)	R0=0xff907090(-7311216) */
ffa0953a:	00 e3 f7 01 	CALL 0xffa09928 <_printf_hex>;
ffa0953e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907090(-7311216) */
ffa09542:	69 a2       	R1 = [P5 + 0x24];
ffa09544:	00 e1 94 70 	R0.L = 0x7094;		/* (28820)	R0=0xff907094(-7311212) */
ffa09548:	00 e3 f0 01 	CALL 0xffa09928 <_printf_hex>;
ffa0954c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907094(-7311212) */
ffa09550:	a9 a2       	R1 = [P5 + 0x28];
ffa09552:	00 e1 98 70 	R0.L = 0x7098;		/* (28824)	R0=0xff907098(-7311208) */
ffa09556:	00 e3 e9 01 	CALL 0xffa09928 <_printf_hex>;
ffa0955a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907098(-7311208) */
ffa0955e:	e9 a2       	R1 = [P5 + 0x2c];
ffa09560:	00 e1 9c 70 	R0.L = 0x709c;		/* (28828)	R0=0xff90709c(-7311204) */
ffa09564:	00 e3 e2 01 	CALL 0xffa09928 <_printf_hex>;
ffa09568:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90709c(-7311204) */
ffa0956c:	29 a3       	R1 = [P5 + 0x30];
ffa0956e:	00 e1 a0 70 	R0.L = 0x70a0;		/* (28832)	R0=0xff9070a0(-7311200) */
ffa09572:	00 e3 db 01 	CALL 0xffa09928 <_printf_hex>;
ffa09576:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a0(-7311200) */
ffa0957a:	69 a3       	R1 = [P5 + 0x34];
ffa0957c:	00 e1 a4 70 	R0.L = 0x70a4;		/* (28836)	R0=0xff9070a4(-7311196) */
ffa09580:	00 e3 d4 01 	CALL 0xffa09928 <_printf_hex>;
ffa09584:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a4(-7311196) */
ffa09588:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0958c:	00 e3 08 01 	CALL 0xffa0979c <_uart_str>;
ffa09590:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09594:	a9 a3       	R1 = [P5 + 0x38];
ffa09596:	00 e1 a8 70 	R0.L = 0x70a8;		/* (28840)	R0=0xff9070a8(-7311192) */
ffa0959a:	00 e3 c7 01 	CALL 0xffa09928 <_printf_hex>;
ffa0959e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070a8(-7311192) */
ffa095a2:	e9 a3       	R1 = [P5 + 0x3c];
ffa095a4:	00 e1 ac 70 	R0.L = 0x70ac;		/* (28844)	R0=0xff9070ac(-7311188) */
ffa095a8:	00 e3 c0 01 	CALL 0xffa09928 <_printf_hex>;
ffa095ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070ac(-7311188) */
ffa095b0:	29 e4 10 00 	R1 = [P5 + 0x40];
ffa095b4:	00 e1 b0 70 	R0.L = 0x70b0;		/* (28848)	R0=0xff9070b0(-7311184) */
ffa095b8:	00 e3 b8 01 	CALL 0xffa09928 <_printf_hex>;
ffa095bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b0(-7311184) */
ffa095c0:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa095c4:	00 e3 ec 00 	CALL 0xffa0979c <_uart_str>;
ffa095c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa095cc:	29 e4 11 00 	R1 = [P5 + 0x44];
ffa095d0:	00 e1 b4 70 	R0.L = 0x70b4;		/* (28852)	R0=0xff9070b4(-7311180) */
ffa095d4:	00 e3 aa 01 	CALL 0xffa09928 <_printf_hex>;
ffa095d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b4(-7311180) */
ffa095dc:	29 e4 12 00 	R1 = [P5 + 0x48];
ffa095e0:	00 e1 b8 70 	R0.L = 0x70b8;		/* (28856)	R0=0xff9070b8(-7311176) */
ffa095e4:	00 e3 a2 01 	CALL 0xffa09928 <_printf_hex>;
ffa095e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070b8(-7311176) */
ffa095ec:	29 e4 13 00 	R1 = [P5 + 0x4c];
ffa095f0:	00 e1 bc 70 	R0.L = 0x70bc;		/* (28860)	R0=0xff9070bc(-7311172) */
ffa095f4:	00 e3 9a 01 	CALL 0xffa09928 <_printf_hex>;
ffa095f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070bc(-7311172) */
ffa095fc:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09600:	00 e3 ce 00 	CALL 0xffa0979c <_uart_str>;
ffa09604:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09608:	29 e4 14 00 	R1 = [P5 + 0x50];
ffa0960c:	00 e1 c0 70 	R0.L = 0x70c0;		/* (28864)	R0=0xff9070c0(-7311168) */
ffa09610:	00 e3 8c 01 	CALL 0xffa09928 <_printf_hex>;
ffa09614:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c0(-7311168) */
ffa09618:	29 e4 15 00 	R1 = [P5 + 0x54];
ffa0961c:	00 e1 c4 70 	R0.L = 0x70c4;		/* (28868)	R0=0xff9070c4(-7311164) */
ffa09620:	00 e3 84 01 	CALL 0xffa09928 <_printf_hex>;
ffa09624:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c4(-7311164) */
ffa09628:	29 e4 16 00 	R1 = [P5 + 0x58];
ffa0962c:	00 e1 c8 70 	R0.L = 0x70c8;		/* (28872)	R0=0xff9070c8(-7311160) */
ffa09630:	00 e3 7c 01 	CALL 0xffa09928 <_printf_hex>;
ffa09634:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070c8(-7311160) */
ffa09638:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0963c:	00 e3 b0 00 	CALL 0xffa0979c <_uart_str>;
ffa09640:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09644:	29 e4 17 00 	R1 = [P5 + 0x5c];
ffa09648:	00 e1 cc 70 	R0.L = 0x70cc;		/* (28876)	R0=0xff9070cc(-7311156) */
ffa0964c:	00 e3 6e 01 	CALL 0xffa09928 <_printf_hex>;
ffa09650:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070cc(-7311156) */
ffa09654:	29 e4 18 00 	R1 = [P5 + 0x60];
ffa09658:	00 e1 d0 70 	R0.L = 0x70d0;		/* (28880)	R0=0xff9070d0(-7311152) */
ffa0965c:	00 e3 66 01 	CALL 0xffa09928 <_printf_hex>;
ffa09660:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d0(-7311152) */
ffa09664:	29 e4 19 00 	R1 = [P5 + 0x64];
ffa09668:	00 e1 d4 70 	R0.L = 0x70d4;		/* (28884)	R0=0xff9070d4(-7311148) */
ffa0966c:	00 e3 5e 01 	CALL 0xffa09928 <_printf_hex>;
ffa09670:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d4(-7311148) */
ffa09674:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09678:	00 e3 92 00 	CALL 0xffa0979c <_uart_str>;
ffa0967c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa09680:	29 e4 1a 00 	R1 = [P5 + 0x68];
ffa09684:	00 e1 d8 70 	R0.L = 0x70d8;		/* (28888)	R0=0xff9070d8(-7311144) */
ffa09688:	00 e3 50 01 	CALL 0xffa09928 <_printf_hex>;
ffa0968c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070d8(-7311144) */
ffa09690:	29 e4 1b 00 	R1 = [P5 + 0x6c];
ffa09694:	00 e1 dc 70 	R0.L = 0x70dc;		/* (28892)	R0=0xff9070dc(-7311140) */
ffa09698:	00 e3 48 01 	CALL 0xffa09928 <_printf_hex>;
ffa0969c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070dc(-7311140) */
ffa096a0:	29 e4 1c 00 	R1 = [P5 + 0x70];
ffa096a4:	00 e1 e0 70 	R0.L = 0x70e0;		/* (28896)	R0=0xff9070e0(-7311136) */
ffa096a8:	00 e3 40 01 	CALL 0xffa09928 <_printf_hex>;
ffa096ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070e0(-7311136) */
ffa096b0:	29 e4 1d 00 	R1 = [P5 + 0x74];
ffa096b4:	00 e1 e4 70 	R0.L = 0x70e4;		/* (28900)	R0=0xff9070e4(-7311132) */
ffa096b8:	00 e3 38 01 	CALL 0xffa09928 <_printf_hex>;
ffa096bc:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa096c0:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc028c8(-4183864) */
ffa096c4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc07134(-4165324) */
ffa096c8:	09 e1 0c 07 	P1.L = 0x70c;		/* (1804)	P1=0xffc0070c(-4192500) */
ffa096cc:	30 e1 00 01 	I0 = 0x100 (X);		/*		I0=0x100(256) */
ffa096d0:	08 e1 04 07 	P0.L = 0x704;		/* (1796)	P0=0xffc00704(-4192508) */
ffa096d4:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa096d8:	13 60       	R3 = 0x2 (X);		/*		R3=0x0(  0) */
ffa096da:	0e 60       	R6 = 0x1 (X);		/*		R6=0x0(  0) */
ffa096dc:	1f 60       	R7 = 0x3 (X);		/*		R7=0x0(  0) */
ffa096de:	80 30       	R0 = I0;
ffa096e0:	08 97       	W[P1] = R0;
ffa096e2:	24 00       	SSYNC;
ffa096e4:	08 97       	W[P1] = R0;
ffa096e6:	24 00       	SSYNC;
ffa096e8:	01 61       	R1 = 0x20 (X);		/*		R1=0x0(  0) */
ffa096ea:	21 54       	R0 = R1 & R4;
ffa096ec:	0a 60       	R2 = 0x1 (X);		/*		R2=0x0(  0) */
ffa096ee:	32 68       	P2 = 0x6 (X);		/*		P2=0x0(  0) */
ffa096f0:	00 0c       	CC = R0 == 0x0;
ffa096f2:	b4 e0 0d 20 	LSETUP(0xffa096fa <_exception_report+0x2a2>, 0xffa0970c <_exception_report+0x2b4>) LC1 = P2;
ffa096f6:	35 1c       	IF CC JUMP 0xffa09760 <_exception_report+0x308> (BP);
ffa096f8:	05 20       	JUMP.S 0xffa09702 <_exception_report+0x2aa>;
ffa096fa:	09 4e       	R1 >>= 0x1;
ffa096fc:	21 54       	R0 = R1 & R4;
ffa096fe:	00 0c       	CC = R0 == 0x0;
ffa09700:	30 1c       	IF CC JUMP 0xffa09760 <_exception_report+0x308> (BP);
ffa09702:	2a 97       	W[P5] = R2;
ffa09704:	0b 97       	W[P1] = R3;
ffa09706:	24 00       	SSYNC;
ffa09708:	0b 97       	W[P1] = R3;
ffa0970a:	24 00       	SSYNC;
ffa0970c:	00 00       	NOP;
ffa0970e:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa09710:	00 97       	W[P0] = R0;
ffa09712:	f2 68       	P2 = 0x1e (X);		/*		P2=0x0(  0) */
ffa09714:	b2 e0 04 20 	LSETUP(0xffa09718 <_exception_report+0x2c0>, 0xffa0971c <_exception_report+0x2c4>) LC1 = P2;
ffa09718:	00 00       	NOP;
ffa0971a:	00 00       	NOP;
ffa0971c:	00 00       	NOP;
ffa0971e:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa09722:	2a 54       	R0 = R2 & R5;
ffa09724:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09726:	82 68       	P2 = 0x10 (X);		/*		P2=0x0(  0) */
ffa09728:	00 0c       	CC = R0 == 0x0;
ffa0972a:	b4 e0 10 20 	LSETUP(0xffa09732 <_exception_report+0x2da>, 0xffa0974a <_exception_report+0x2f2>) LC1 = P2;
ffa0972e:	1b 1c       	IF CC JUMP 0xffa09764 <_exception_report+0x30c> (BP);
ffa09730:	05 20       	JUMP.S 0xffa0973a <_exception_report+0x2e2>;
ffa09732:	0a 4e       	R2 >>= 0x1;
ffa09734:	2a 54       	R0 = R2 & R5;
ffa09736:	00 0c       	CC = R0 == 0x0;
ffa09738:	16 1c       	IF CC JUMP 0xffa09764 <_exception_report+0x30c> (BP);
ffa0973a:	2e 97       	W[P5] = R6;
ffa0973c:	0b 97       	W[P1] = R3;
ffa0973e:	24 00       	SSYNC;
ffa09740:	0b 97       	W[P1] = R3;
ffa09742:	24 00       	SSYNC;
ffa09744:	39 54       	R0 = R1 & R7;
ffa09746:	18 0c       	CC = R0 == 0x3;
ffa09748:	10 18       	IF CC JUMP 0xffa09768 <_exception_report+0x310>;
ffa0974a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0974c:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0974e:	00 97       	W[P0] = R0;
ffa09750:	2a e1 2c 01 	P2 = 0x12c (X);		/*		P2=0x12c(300) */
ffa09754:	b2 e0 04 20 	LSETUP(0xffa09758 <_exception_report+0x300>, 0xffa0975c <_exception_report+0x304>) LC1 = P2;
ffa09758:	00 00       	NOP;
ffa0975a:	00 00       	NOP;
ffa0975c:	00 00       	NOP;
ffa0975e:	c0 2f       	JUMP.S 0xffa096de <_exception_report+0x286>;
ffa09760:	02 97       	W[P0] = R2;
ffa09762:	d1 2f       	JUMP.S 0xffa09704 <_exception_report+0x2ac>;
ffa09764:	06 97       	W[P0] = R6;
ffa09766:	eb 2f       	JUMP.S 0xffa0973c <_exception_report+0x2e4>;
	...
ffa09798:	d9 2f       	JUMP.S 0xffa0974a <_exception_report+0x2f2>;
	...

ffa0979c <_uart_str>:
ffa0979c:	68 05       	[--SP] = (R7:5);
ffa0979e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0012c(-4194004) */
ffa097a2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa097a6:	08 32       	P1 = R0;
ffa097a8:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa097ac:	10 95       	R0 = W[P2] (Z);
ffa097ae:	c0 42       	R0 = R0.L (Z);
ffa097b0:	08 0c       	CC = R0 == 0x1;
ffa097b2:	07 18       	IF CC JUMP 0xffa097c0 <_uart_str+0x24>;
ffa097b4:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa097b6:	01 e8 00 00 	UNLINK;
ffa097ba:	03 30       	R0 = R3;
ffa097bc:	28 05       	(R7:5) = [SP++];
ffa097be:	10 00       	RTS;
ffa097c0:	48 99       	R0 = B[P1] (X);
ffa097c2:	01 43       	R1 = R0.B (X);
ffa097c4:	01 0c       	CC = R1 == 0x0;
ffa097c6:	f7 1b       	IF CC JUMP 0xffa097b4 <_uart_str+0x18>;
ffa097c8:	41 32       	P0 = P1;
ffa097ca:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00100(-4194048) */
ffa097ce:	08 6c       	P0 += 0x1;		/* (  1) */
ffa097d0:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa097d2:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa097d6:	82 6f       	P2 += -0x10;		/* (-16) */
ffa097d8:	02 61       	R2 = 0x20 (X);		/*		R2=0x0(  0) */
ffa097da:	57 60       	R7 = 0xa (X);		/*		R7=0x0(  0) */
ffa097dc:	6e 60       	R6 = 0xd (X);		/*		R6=0x0(  0) */
ffa097de:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa097e2:	55 60       	R5 = 0xa (X);		/*		R5=0x0(  0) */
ffa097e4:	b2 e0 1a 10 	LSETUP(0xffa097e8 <_uart_str+0x4c>, 0xffa09818 <_uart_str+0x7c>) LC1 = P1;
ffa097e8:	29 08       	CC = R1 == R5;
ffa097ea:	19 18       	IF CC JUMP 0xffa0981c <_uart_str+0x80>;
ffa097ec:	00 00       	NOP;
ffa097ee:	00 43       	R0 = R0.B (X);
ffa097f0:	20 9f       	W[I0] = R0.L;
ffa097f2:	10 95       	R0 = W[P2] (Z);
ffa097f4:	02 54       	R0 = R2 & R0;
ffa097f6:	00 0c       	CC = R0 == 0x0;
ffa097f8:	0b 10       	IF !CC JUMP 0xffa0980e <_uart_str+0x72>;
ffa097fa:	00 00       	NOP;
ffa097fc:	00 00       	NOP;
ffa097fe:	4a 34       	I1 = P2;
ffa09800:	00 00       	NOP;
ffa09802:	00 00       	NOP;
ffa09804:	28 9d       	R0.L = W[I1];
ffa09806:	02 54       	R0 = R2 & R0;
ffa09808:	00 0c       	CC = R0 == 0x0;
ffa0980a:	fb 1f       	IF CC JUMP 0xffa09800 <_uart_str+0x64> (BP);
ffa0980c:	91 32       	P2 = I1;
ffa0980e:	40 98       	R0 = B[P0++] (X);
ffa09810:	01 43       	R1 = R0.B (X);
ffa09812:	0b 64       	R3 += 0x1;		/* (  1) */
ffa09814:	01 0c       	CC = R1 == 0x0;
ffa09816:	d0 1b       	IF CC JUMP 0xffa097b6 <_uart_str+0x1a>;
ffa09818:	00 00       	NOP;
ffa0981a:	ce 2f       	JUMP.S 0xffa097b6 <_uart_str+0x1a>;
ffa0981c:	27 9f       	W[I0] = R7.L;
ffa0981e:	10 95       	R0 = W[P2] (Z);
ffa09820:	02 54       	R0 = R2 & R0;
ffa09822:	00 0c       	CC = R0 == 0x0;
ffa09824:	0b 10       	IF !CC JUMP 0xffa0983a <_uart_str+0x9e>;
ffa09826:	00 00       	NOP;
ffa09828:	00 00       	NOP;
ffa0982a:	4a 34       	I1 = P2;
ffa0982c:	00 00       	NOP;
ffa0982e:	00 00       	NOP;
ffa09830:	28 9d       	R0.L = W[I1];
ffa09832:	02 54       	R0 = R2 & R0;
ffa09834:	00 0c       	CC = R0 == 0x0;
ffa09836:	fb 1f       	IF CC JUMP 0xffa0982c <_uart_str+0x90> (BP);
ffa09838:	91 32       	P2 = I1;
ffa0983a:	26 9f       	W[I0] = R6.L;
ffa0983c:	10 95       	R0 = W[P2] (Z);
ffa0983e:	02 54       	R0 = R2 & R0;
ffa09840:	00 0c       	CC = R0 == 0x0;
ffa09842:	e6 13       	IF !CC JUMP 0xffa0980e <_uart_str+0x72>;
ffa09844:	00 00       	NOP;
ffa09846:	00 00       	NOP;
ffa09848:	4a 34       	I1 = P2;
ffa0984a:	00 00       	NOP;
ffa0984c:	00 00       	NOP;
ffa0984e:	28 9d       	R0.L = W[I1];
ffa09850:	02 54       	R0 = R2 & R0;
ffa09852:	00 0c       	CC = R0 == 0x0;
ffa09854:	fb 1f       	IF CC JUMP 0xffa0984a <_uart_str+0xae> (BP);
ffa09856:	91 32       	P2 = I1;
ffa09858:	db 2f       	JUMP.S 0xffa0980e <_uart_str+0x72>;
	...

ffa0985c <_printf_str>:
ffa0985c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09860:	01 e8 00 00 	UNLINK;
ffa09864:	ff e2 9c ff 	JUMP.L 0xffa0979c <_uart_str>;

ffa09868 <_printf_newline>:
ffa09868:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0986c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09870:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa09874:	01 e8 00 00 	UNLINK;
ffa09878:	ff e2 92 ff 	JUMP.L 0xffa0979c <_uart_str>;

ffa0987c <_printf_hex_byte>:
ffa0987c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0987e:	39 30       	R7 = R1;
ffa09880:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09884:	28 32       	P5 = R0;
ffa09886:	00 e3 bb 01 	CALL 0xffa09bfc <_strlen_>;
ffa0988a:	08 30       	R1 = R0;
ffa0988c:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa09890:	01 09       	CC = R1 <= R0;
ffa09892:	3d 10       	IF !CC JUMP 0xffa0990c <_printf_hex_byte+0x90>;
ffa09894:	01 0d       	CC = R1 <= 0x0;
ffa09896:	44 18       	IF CC JUMP 0xffa0991e <_printf_hex_byte+0xa2>;
ffa09898:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff907000 <_l1_data_a> */
ffa0989c:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0989e:	0c e1 b4 71 	P4.L = 0x71b4;		/* (29108)	P4=0xff9071b4 <_printf_out> */
ffa098a2:	09 32       	P1 = R1;
ffa098a4:	b2 e0 06 10 	LSETUP(0xffa098a8 <_printf_hex_byte+0x2c>, 0xffa098b0 <_printf_hex_byte+0x34>) LC1 = P1;
ffa098a8:	62 91       	P2 = [P4];
ffa098aa:	68 98       	R0 = B[P5++] (X);
ffa098ac:	82 5a       	P2 = P2 + P0;
ffa098ae:	10 9b       	B[P2] = R0;
ffa098b0:	08 6c       	P0 += 0x1;		/* (  1) */
ffa098b2:	09 32       	P1 = R1;
ffa098b4:	62 91       	P2 = [P4];
ffa098b6:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa098b8:	79 43       	R1 = R7.B (Z);
ffa098ba:	4a 60       	R2 = 0x9 (X);		/*		R2=0x0(  0) */
ffa098bc:	8a 5a       	P2 = P2 + P1;
ffa098be:	10 9b       	B[P2] = R0;
ffa098c0:	62 91       	P2 = [P4];
ffa098c2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa098c4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa098c8:	8a 5a       	P2 = P2 + P1;
ffa098ca:	10 9b       	B[P2] = R0;
ffa098cc:	82 c6 e1 81 	R0 = R1 >> 0x4;
ffa098d0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa098d2:	10 09       	CC = R0 <= R2;
ffa098d4:	23 14       	IF !CC JUMP 0xffa0991a <_printf_hex_byte+0x9e> (BP);
ffa098d6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa098d8:	62 91       	P2 = [P4];
ffa098da:	8a 5a       	P2 = P2 + P1;
ffa098dc:	10 9b       	B[P2] = R0;
ffa098de:	78 60       	R0 = 0xf (X);		/*		R0=0x0(  0) */
ffa098e0:	01 54       	R0 = R1 & R0;
ffa098e2:	49 60       	R1 = 0x9 (X);		/*		R1=0x0(  0) */
ffa098e4:	08 09       	CC = R0 <= R1;
ffa098e6:	18 1c       	IF CC JUMP 0xffa09916 <_printf_hex_byte+0x9a> (BP);
ffa098e8:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa098ea:	62 91       	P2 = [P4];
ffa098ec:	8a 5a       	P2 = P2 + P1;
ffa098ee:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa098f2:	62 91       	P2 = [P4];
ffa098f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098f6:	8a 5a       	P2 = P2 + P1;
ffa098f8:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa098fc:	20 91       	R0 = [P4];
ffa098fe:	ff e3 4f ff 	CALL 0xffa0979c <_uart_str>;
ffa09902:	01 e8 00 00 	UNLINK;
ffa09906:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09908:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0990a:	10 00       	RTS;
ffa0990c:	01 e8 00 00 	UNLINK;
ffa09910:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa09912:	bc 05       	(R7:7, P5:4) = [SP++];
ffa09914:	10 00       	RTS;
ffa09916:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09918:	e9 2f       	JUMP.S 0xffa098ea <_printf_hex_byte+0x6e>;
ffa0991a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0991c:	de 2f       	JUMP.S 0xffa098d8 <_printf_hex_byte+0x5c>;
ffa0991e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff9071b4 <_printf_out> */
ffa09922:	0c e1 b4 71 	P4.L = 0x71b4;		/* (29108)	P4=0xff9071b4 <_printf_out> */
ffa09926:	c6 2f       	JUMP.S 0xffa098b2 <_printf_hex_byte+0x36>;

ffa09928 <_printf_hex>:
ffa09928:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0992a:	39 30       	R7 = R1;
ffa0992c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09930:	28 32       	P5 = R0;
ffa09932:	00 e3 65 01 	CALL 0xffa09bfc <_strlen_>;
ffa09936:	08 30       	R1 = R0;
ffa09938:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa0993c:	01 09       	CC = R1 <= R0;
ffa0993e:	46 10       	IF !CC JUMP 0xffa099ca <_printf_hex+0xa2>;
ffa09940:	01 0d       	CC = R1 <= 0x0;
ffa09942:	49 18       	IF CC JUMP 0xffa099d4 <_printf_hex+0xac>;
ffa09944:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff9071b4 <_printf_out> */
ffa09948:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0994a:	0c e1 b4 71 	P4.L = 0x71b4;		/* (29108)	P4=0xff9071b4 <_printf_out> */
ffa0994e:	09 32       	P1 = R1;
ffa09950:	b2 e0 06 10 	LSETUP(0xffa09954 <_printf_hex+0x2c>, 0xffa0995c <_printf_hex+0x34>) LC1 = P1;
ffa09954:	62 91       	P2 = [P4];
ffa09956:	68 98       	R0 = B[P5++] (X);
ffa09958:	82 5a       	P2 = P2 + P0;
ffa0995a:	10 9b       	B[P2] = R0;
ffa0995c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0995e:	09 32       	P1 = R1;
ffa09960:	62 91       	P2 = [P4];
ffa09962:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa09964:	29 32       	P5 = R1;
ffa09966:	e1 60       	R1 = 0x1c (X);		/*		R1=0x0(  0) */
ffa09968:	8a 5a       	P2 = P2 + P1;
ffa0996a:	10 9b       	B[P2] = R0;
ffa0996c:	62 91       	P2 = [P4];
ffa0996e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa09970:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09974:	15 6c       	P5 += 0x2;		/* (  2) */
ffa09976:	8a 5a       	P2 = P2 + P1;
ffa09978:	10 9b       	B[P2] = R0;
ffa0997a:	7a 60       	R2 = 0xf (X);		/*		R2=0x0(  0) */
ffa0997c:	40 68       	P0 = 0x8 (X);		/*		P0=0x0(  0) */
ffa0997e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x0(  0) */
ffa09980:	b2 e0 10 00 	LSETUP(0xffa09984 <_printf_hex+0x5c>, 0xffa099a0 <_printf_hex+0x78>) LC1 = P0;
ffa09984:	07 30       	R0 = R7;
ffa09986:	08 40       	R0 >>>= R1;
ffa09988:	10 54       	R0 = R0 & R2;
ffa0998a:	18 09       	CC = R0 <= R3;
ffa0998c:	1d 1c       	IF CC JUMP 0xffa099c6 <_printf_hex+0x9e> (BP);
ffa0998e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09990:	62 91       	P2 = [P4];
ffa09992:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa09996:	0b e1 b4 71 	P3.L = 0x71b4;		/* (29108)	P3=0xff9071b4 <_printf_out> */
ffa0999a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0999c:	aa 5a       	P2 = P2 + P5;
ffa0999e:	10 9b       	B[P2] = R0;
ffa099a0:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa099a2:	5a 91       	P2 = [P3];
ffa099a4:	49 6c       	P1 += 0x9;		/* (  9) */
ffa099a6:	50 60       	R0 = 0xa (X);		/*		R0=0x0(  0) */
ffa099a8:	8a 5a       	P2 = P2 + P1;
ffa099aa:	10 9b       	B[P2] = R0;
ffa099ac:	5a 91       	P2 = [P3];
ffa099ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099b0:	8a 5a       	P2 = P2 + P1;
ffa099b2:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa099b6:	18 91       	R0 = [P3];
ffa099b8:	ff e3 f2 fe 	CALL 0xffa0979c <_uart_str>;
ffa099bc:	01 e8 00 00 	UNLINK;
ffa099c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099c2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa099c4:	10 00       	RTS;
ffa099c6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa099c8:	e4 2f       	JUMP.S 0xffa09990 <_printf_hex+0x68>;
ffa099ca:	01 e8 00 00 	UNLINK;
ffa099ce:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa099d0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa099d2:	10 00       	RTS;
ffa099d4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff9071b4 <_printf_out> */
ffa099d8:	0c e1 b4 71 	P4.L = 0x71b4;		/* (29108)	P4=0xff9071b4 <_printf_out> */
ffa099dc:	c1 2f       	JUMP.S 0xffa0995e <_printf_hex+0x36>;
	...

ffa099e0 <_printf_int>:
ffa099e0:	eb 05       	[--SP] = (R7:5, P5:3);
ffa099e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa099e6:	28 30       	R5 = R0;
ffa099e8:	39 30       	R7 = R1;
ffa099ea:	01 0c       	CC = R1 == 0x0;
ffa099ec:	45 14       	IF !CC JUMP 0xffa09a76 <_printf_int+0x96> (BP);
ffa099ee:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900000(-7340032) */
ffa099f2:	06 e1 b0 71 	R6.L = 0x71b0;		/* (29104)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa099f6:	06 32       	P0 = R6;
ffa099f8:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa099fa:	0c 68       	P4 = 0x1 (X);		/*		P4=0x0(  0) */
ffa099fc:	42 91       	P2 = [P0];
ffa099fe:	10 9b       	B[P2] = R0;
ffa09a00:	05 30       	R0 = R5;
ffa09a02:	00 e3 fd 00 	CALL 0xffa09bfc <_strlen_>;
ffa09a06:	08 30       	R1 = R0;
ffa09a08:	44 30       	R0 = P4;
ffa09a0a:	81 50       	R2 = R1 + R0;
ffa09a0c:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09a10:	02 09       	CC = R2 <= R0;
ffa09a12:	50 10       	IF !CC JUMP 0xffa09ab2 <_printf_int+0xd2>;
ffa09a14:	01 0d       	CC = R1 <= 0x0;
ffa09a16:	7d 18       	IF CC JUMP 0xffa09b10 <_printf_int+0x130>;
ffa09a18:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9071b4 <_printf_out> */
ffa09a1c:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa09a1e:	0b e1 b4 71 	P3.L = 0x71b4;		/* (29108)	P3=0xff9071b4 <_printf_out> */
ffa09a22:	09 32       	P1 = R1;
ffa09a24:	b2 e0 08 10 	LSETUP(0xffa09a28 <_printf_int+0x48>, 0xffa09a34 <_printf_int+0x54>) LC1 = P1;
ffa09a28:	2d 32       	P5 = R5;
ffa09a2a:	5a 91       	P2 = [P3];
ffa09a2c:	0d 64       	R5 += 0x1;		/* (  1) */
ffa09a2e:	82 5a       	P2 = P2 + P0;
ffa09a30:	68 98       	R0 = B[P5++] (X);
ffa09a32:	10 9b       	B[P2] = R0;
ffa09a34:	08 6c       	P0 += 0x1;		/* (  1) */
ffa09a36:	44 32       	P0 = P4;
ffa09a38:	29 32       	P5 = R1;
ffa09a3a:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa09a3c:	26 32       	P4 = R6;
ffa09a3e:	5a 91       	P2 = [P3];
ffa09a40:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000(-7340032) */
ffa09a44:	01 e1 b4 71 	R1.L = 0x71b4;		/* (29108)	R1=0xff9071b4 <_printf_out>(-7310924) */
ffa09a48:	61 91       	P1 = [P4];
ffa09a4a:	aa 5a       	P2 = P2 + P5;
ffa09a4c:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa09a4e:	41 5a       	P1 = P1 + P0;
ffa09a50:	48 99       	R0 = B[P1] (X);
ffa09a52:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa09a54:	10 9b       	B[P2] = R0;
ffa09a56:	78 0c       	CC = P0 == -0x1;
ffa09a58:	f2 17       	IF !CC JUMP 0xffa09a3c <_printf_int+0x5c> (BP);
ffa09a5a:	29 32       	P5 = R1;
ffa09a5c:	02 32       	P0 = R2;
ffa09a5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a60:	6a 91       	P2 = [P5];
ffa09a62:	82 5a       	P2 = P2 + P0;
ffa09a64:	10 9b       	B[P2] = R0;
ffa09a66:	28 91       	R0 = [P5];
ffa09a68:	ff e3 9a fe 	CALL 0xffa0979c <_uart_str>;
ffa09a6c:	01 e8 00 00 	UNLINK;
ffa09a70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a72:	ab 05       	(R7:5, P5:3) = [SP++];
ffa09a74:	10 00       	RTS;
ffa09a76:	01 0d       	CC = R1 <= 0x0;
ffa09a78:	22 18       	IF CC JUMP 0xffa09abc <_printf_int+0xdc>;
ffa09a7a:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09a7e:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa09a80:	06 e1 b0 71 	R6.L = 0x71b0;		/* (29104)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09a84:	05 20       	JUMP.S 0xffa09a8e <_printf_int+0xae>;
ffa09a86:	2a e1 80 00 	P2 = 0x80 (X);		/*		P2=0x80(128) */
ffa09a8a:	54 08       	CC = P4 == P2;
ffa09a8c:	ba 1b       	IF CC JUMP 0xffa09a00 <_printf_int+0x20>;
ffa09a8e:	07 30       	R0 = R7;
ffa09a90:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa09a92:	00 e3 85 00 	CALL 0xffa09b9c <_mod>;
ffa09a96:	0e 32       	P1 = R6;
ffa09a98:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09a9a:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa09a9c:	4a 91       	P2 = [P1];
ffa09a9e:	a2 5a       	P2 = P2 + P4;
ffa09aa0:	10 9b       	B[P2] = R0;
ffa09aa2:	07 30       	R0 = R7;
ffa09aa4:	00 e3 6e 00 	CALL 0xffa09b80 <_div>;
ffa09aa8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa09aaa:	38 30       	R7 = R0;
ffa09aac:	00 0d       	CC = R0 <= 0x0;
ffa09aae:	ec 17       	IF !CC JUMP 0xffa09a86 <_printf_int+0xa6> (BP);
ffa09ab0:	a8 2f       	JUMP.S 0xffa09a00 <_printf_int+0x20>;
ffa09ab2:	01 e8 00 00 	UNLINK;
ffa09ab6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa09ab8:	ab 05       	(R7:5, P5:3) = [SP++];
ffa09aba:	10 00       	RTS;
ffa09abc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffff80(-128) */
ffa09abe:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa09ac0:	f8 4f       	R0 <<= 0x1f;
ffa09ac2:	f8 53       	R7 = R0 - R7;
ffa09ac4:	07 0d       	CC = R7 <= 0x0;
ffa09ac6:	2e 18       	IF CC JUMP 0xffa09b22 <_printf_int+0x142>;
ffa09ac8:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09acc:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa09ace:	06 e1 b0 71 	R6.L = 0x71b0;		/* (29104)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09ad2:	05 20       	JUMP.S 0xffa09adc <_printf_int+0xfc>;
ffa09ad4:	28 e1 80 00 	P0 = 0x80 (X);		/*		P0=0x80(128) */
ffa09ad8:	45 08       	CC = P5 == P0;
ffa09ada:	20 18       	IF CC JUMP 0xffa09b1a <_printf_int+0x13a>;
ffa09adc:	26 32       	P4 = R6;
ffa09ade:	07 30       	R0 = R7;
ffa09ae0:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa09ae2:	00 e3 5d 00 	CALL 0xffa09b9c <_mod>;
ffa09ae6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09ae8:	62 91       	P2 = [P4];
ffa09aea:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa09aec:	aa 5a       	P2 = P2 + P5;
ffa09aee:	10 9b       	B[P2] = R0;
ffa09af0:	07 30       	R0 = R7;
ffa09af2:	00 e3 47 00 	CALL 0xffa09b80 <_div>;
ffa09af6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa09af8:	38 30       	R7 = R0;
ffa09afa:	00 0d       	CC = R0 <= 0x0;
ffa09afc:	ec 17       	IF !CC JUMP 0xffa09ad4 <_printf_int+0xf4> (BP);
ffa09afe:	65 32       	P4 = P5;
ffa09b00:	4d 32       	P1 = P5;
ffa09b02:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa09b04:	2e 32       	P5 = R6;
ffa09b06:	68 61       	R0 = 0x2d (X);		/*		R0=0x0(  0) */
ffa09b08:	6a 91       	P2 = [P5];
ffa09b0a:	8a 5a       	P2 = P2 + P1;
ffa09b0c:	10 9b       	B[P2] = R0;
ffa09b0e:	79 2f       	JUMP.S 0xffa09a00 <_printf_int+0x20>;
ffa09b10:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9071b4 <_printf_out> */
ffa09b14:	0b e1 b4 71 	P3.L = 0x71b4;		/* (29108)	P3=0xff9071b4 <_printf_out> */
ffa09b18:	8f 2f       	JUMP.S 0xffa09a36 <_printf_int+0x56>;
ffa09b1a:	48 32       	P1 = P0;
ffa09b1c:	2c e1 81 00 	P4 = 0x81 (X);		/*		P4=0x81(129) */
ffa09b20:	f2 2f       	JUMP.S 0xffa09b04 <_printf_int+0x124>;
ffa09b22:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09b26:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa09b28:	0c 68       	P4 = 0x1 (X);		/*		P4=0x0(  0) */
ffa09b2a:	06 e1 b0 71 	R6.L = 0x71b0;		/* (29104)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09b2e:	eb 2f       	JUMP.S 0xffa09b04 <_printf_int+0x124>;

ffa09b30 <_printf_ip>:
ffa09b30:	70 05       	[--SP] = (R7:6);
ffa09b32:	39 30       	R7 = R1;
ffa09b34:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09b38:	49 43       	R1 = R1.B (Z);
ffa09b3a:	ff e3 53 ff 	CALL 0xffa099e0 <_printf_int>;
ffa09b3e:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff9071b0 <_printf_temp>(-7310928) */
ffa09b42:	06 e1 e8 70 	R6.L = 0x70e8;		/* (28904)	R6=0xff9070e8(-7311128) */
ffa09b46:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa09b4a:	49 43       	R1 = R1.B (Z);
ffa09b4c:	06 30       	R0 = R6;
ffa09b4e:	ff e3 49 ff 	CALL 0xffa099e0 <_printf_int>;
ffa09b52:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa09b56:	49 43       	R1 = R1.B (Z);
ffa09b58:	06 30       	R0 = R6;
ffa09b5a:	ff e3 43 ff 	CALL 0xffa099e0 <_printf_int>;
ffa09b5e:	c7 4e       	R7 >>= 0x18;
ffa09b60:	0f 30       	R1 = R7;
ffa09b62:	06 30       	R0 = R6;
ffa09b64:	ff e3 3e ff 	CALL 0xffa099e0 <_printf_int>;
ffa09b68:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa09b6c:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa09b70:	ff e3 16 fe 	CALL 0xffa0979c <_uart_str>;
ffa09b74:	01 e8 00 00 	UNLINK;
ffa09b78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b7a:	30 05       	(R7:6) = [SP++];
ffa09b7c:	10 00       	RTS;
	...

ffa09b80 <_div>:
ffa09b80:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09b84:	08 4f       	R0 <<= 0x1;
ffa09b86:	48 42       	DIVS (R0, R1);
ffa09b88:	7a 68       	P2 = 0xf (X);		/*		P2=0x0(  0) */
ffa09b8a:	b2 e0 03 20 	LSETUP(0xffa09b8e <_div+0xe>, 0xffa09b90 <_div+0x10>) LC1 = P2;
ffa09b8e:	08 42       	DIVQ (R0, R1);
ffa09b90:	00 00       	NOP;
ffa09b92:	80 42       	R0 = R0.L (X);
ffa09b94:	01 e8 00 00 	UNLINK;
ffa09b98:	10 00       	RTS;
	...

ffa09b9c <_mod>:
ffa09b9c:	18 30       	R3 = R0;
ffa09b9e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09ba2:	08 4f       	R0 <<= 0x1;
ffa09ba4:	11 30       	R2 = R1;
ffa09ba6:	50 42       	DIVS (R0, R2);
ffa09ba8:	7a 68       	P2 = 0xf (X);		/*		P2=0x0(  0) */
ffa09baa:	b2 e0 03 20 	LSETUP(0xffa09bae <_mod+0x12>, 0xffa09bb0 <_mod+0x14>) LC1 = P2;
ffa09bae:	10 42       	DIVQ (R0, R2);
ffa09bb0:	00 00       	NOP;
ffa09bb2:	80 42       	R0 = R0.L (X);
ffa09bb4:	c8 40       	R0 *= R1;
ffa09bb6:	01 e8 00 00 	UNLINK;
ffa09bba:	03 52       	R0 = R3 - R0;
ffa09bbc:	10 00       	RTS;
	...

ffa09bc0 <_memcpy_>:
ffa09bc0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09bc4:	00 32       	P0 = R0;
ffa09bc6:	09 32       	P1 = R1;
ffa09bc8:	02 0d       	CC = R2 <= 0x0;
ffa09bca:	07 18       	IF CC JUMP 0xffa09bd8 <_memcpy_+0x18>;
ffa09bcc:	00 00       	NOP;
ffa09bce:	12 32       	P2 = R2;
ffa09bd0:	b2 e0 03 20 	LSETUP(0xffa09bd4 <_memcpy_+0x14>, 0xffa09bd6 <_memcpy_+0x16>) LC1 = P2;
ffa09bd4:	40 98       	R0 = B[P0++] (X);
ffa09bd6:	08 9a       	B[P1++] = R0;
ffa09bd8:	01 e8 00 00 	UNLINK;
ffa09bdc:	10 00       	RTS;
	...

ffa09be0 <_memset_>:
ffa09be0:	08 32       	P1 = R0;
ffa09be2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09be6:	01 30       	R0 = R1;
ffa09be8:	02 0d       	CC = R2 <= 0x0;
ffa09bea:	05 18       	IF CC JUMP 0xffa09bf4 <_memset_+0x14>;
ffa09bec:	12 32       	P2 = R2;
ffa09bee:	b2 e0 02 20 	LSETUP(0xffa09bf2 <_memset_+0x12>, 0xffa09bf2 <_memset_+0x12>) LC1 = P2;
ffa09bf2:	08 9a       	B[P1++] = R0;
ffa09bf4:	01 e8 00 00 	UNLINK;
ffa09bf8:	10 00       	RTS;
	...

ffa09bfc <_strlen_>:
ffa09bfc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09c00:	08 32       	P1 = R0;
ffa09c02:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09c04:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa09c08:	b2 e0 05 20 	LSETUP(0xffa09c0c <_strlen_+0x10>, 0xffa09c12 <_strlen_+0x16>) LC1 = P2;
ffa09c0c:	48 98       	R0 = B[P1++] (X);
ffa09c0e:	00 0c       	CC = R0 == 0x0;
ffa09c10:	03 18       	IF CC JUMP 0xffa09c16 <_strlen_+0x1a>;
ffa09c12:	09 64       	R1 += 0x1;		/* (  1) */
ffa09c14:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09c16:	01 30       	R0 = R1;
ffa09c18:	01 e8 00 00 	UNLINK;
ffa09c1c:	10 00       	RTS;
	...

ffa09c20 <_strcpy_>:
ffa09c20:	12 32       	P2 = R2;
ffa09c22:	c5 04       	[--SP] = (P5:5);
ffa09c24:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09c28:	29 32       	P5 = R1;
ffa09c2a:	00 32       	P0 = R0;
ffa09c2c:	51 99       	R1 = B[P2] (X);
ffa09c2e:	08 43       	R0 = R1.B (X);
ffa09c30:	00 0c       	CC = R0 == 0x0;
ffa09c32:	19 18       	IF CC JUMP 0xffa09c64 <_strcpy_+0x44>;
ffa09c34:	0a 32       	P1 = R2;
ffa09c36:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09c38:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa09c3c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa09c3e:	b2 e0 0a 20 	LSETUP(0xffa09c42 <_strcpy_+0x22>, 0xffa09c52 <_strcpy_+0x32>) LC1 = P2;
ffa09c42:	01 9a       	B[P0++] = R1;
ffa09c44:	49 98       	R1 = B[P1++] (X);
ffa09c46:	08 43       	R0 = R1.B (X);
ffa09c48:	0a 64       	R2 += 0x1;		/* (  1) */
ffa09c4a:	00 0c       	CC = R0 == 0x0;
ffa09c4c:	04 18       	IF CC JUMP 0xffa09c54 <_strcpy_+0x34>;
ffa09c4e:	00 00       	NOP;
ffa09c50:	00 00       	NOP;
ffa09c52:	00 00       	NOP;
ffa09c54:	28 91       	R0 = [P5];
ffa09c56:	10 50       	R0 = R0 + R2;
ffa09c58:	28 93       	[P5] = R0;
ffa09c5a:	01 e8 00 00 	UNLINK;
ffa09c5e:	40 30       	R0 = P0;
ffa09c60:	85 04       	(P5:5) = [SP++];
ffa09c62:	10 00       	RTS;
ffa09c64:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09c66:	f7 2f       	JUMP.S 0xffa09c54 <_strcpy_+0x34>;

ffa09c68 <_strprepend>:
ffa09c68:	c5 04       	[--SP] = (P5:5);
ffa09c6a:	02 32       	P0 = R2;
ffa09c6c:	0a 32       	P1 = R2;
ffa09c6e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09c72:	18 30       	R3 = R0;
ffa09c74:	29 32       	P5 = R1;
ffa09c76:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09c78:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa09c7c:	b2 e0 07 20 	LSETUP(0xffa09c80 <_strprepend+0x18>, 0xffa09c8a <_strprepend+0x22>) LC1 = P2;
ffa09c80:	48 98       	R0 = B[P1++] (X);
ffa09c82:	00 0c       	CC = R0 == 0x0;
ffa09c84:	0c 18       	IF CC JUMP 0xffa09c9c <_strprepend+0x34>;
ffa09c86:	00 00       	NOP;
ffa09c88:	00 00       	NOP;
ffa09c8a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa09c8c:	28 91       	R0 = [P5];
ffa09c8e:	c3 52       	R3 = R3 - R0;
ffa09c90:	0b 32       	P1 = R3;
ffa09c92:	01 e8 00 00 	UNLINK;
ffa09c96:	41 30       	R0 = P1;
ffa09c98:	85 04       	(P5:5) = [SP++];
ffa09c9a:	10 00       	RTS;
ffa09c9c:	28 91       	R0 = [P5];
ffa09c9e:	03 52       	R0 = R3 - R0;
ffa09ca0:	08 32       	P1 = R0;
ffa09ca2:	02 0c       	CC = R2 == 0x0;
ffa09ca4:	f7 1b       	IF CC JUMP 0xffa09c92 <_strprepend+0x2a>;
ffa09ca6:	00 00       	NOP;
ffa09ca8:	12 32       	P2 = R2;
ffa09caa:	b2 e0 03 20 	LSETUP(0xffa09cae <_strprepend+0x46>, 0xffa09cb0 <_strprepend+0x48>) LC1 = P2;
ffa09cae:	40 98       	R0 = B[P0++] (X);
ffa09cb0:	08 9a       	B[P1++] = R0;
ffa09cb2:	ed 2f       	JUMP.S 0xffa09c8c <_strprepend+0x24>;

ffa09cb4 <_strcmp>:
ffa09cb4:	10 32       	P2 = R0;
ffa09cb6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09cba:	09 32       	P1 = R1;
ffa09cbc:	51 99       	R1 = B[P2] (X);
ffa09cbe:	01 0c       	CC = R1 == 0x0;
ffa09cc0:	20 18       	IF CC JUMP 0xffa09d00 <_strcmp+0x4c>;
ffa09cc2:	00 00       	NOP;
ffa09cc4:	00 00       	NOP;
ffa09cc6:	00 00       	NOP;
ffa09cc8:	48 99       	R0 = B[P1] (X);
ffa09cca:	00 0c       	CC = R0 == 0x0;
ffa09ccc:	1a 18       	IF CC JUMP 0xffa09d00 <_strcmp+0x4c>;
ffa09cce:	01 08       	CC = R1 == R0;
ffa09cd0:	1c 10       	IF !CC JUMP 0xffa09d08 <_strcmp+0x54>;
ffa09cd2:	42 32       	P0 = P2;
ffa09cd4:	08 6c       	P0 += 0x1;		/* (  1) */
ffa09cd6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa09cd8:	2a e1 00 05 	P2 = 0x500 (X);		/*		P2=0x500(1280) */
ffa09cdc:	b3 e0 11 20 	LSETUP(0xffa09ce2 <_strcmp+0x2e>, 0xffa09cfe <_strcmp+0x4a>) LC1 = P2;
ffa09ce0:	06 20       	JUMP.S 0xffa09cec <_strcmp+0x38>;
ffa09ce2:	01 08       	CC = R1 == R0;
ffa09ce4:	12 10       	IF !CC JUMP 0xffa09d08 <_strcmp+0x54>;
ffa09ce6:	00 00       	NOP;
ffa09ce8:	00 00       	NOP;
ffa09cea:	00 00       	NOP;
ffa09cec:	41 98       	R1 = B[P0++] (X);
ffa09cee:	01 0c       	CC = R1 == 0x0;
ffa09cf0:	08 18       	IF CC JUMP 0xffa09d00 <_strcmp+0x4c>;
ffa09cf2:	00 00       	NOP;
ffa09cf4:	00 00       	NOP;
ffa09cf6:	00 00       	NOP;
ffa09cf8:	48 98       	R0 = B[P1++] (X);
ffa09cfa:	00 0c       	CC = R0 == 0x0;
ffa09cfc:	02 18       	IF CC JUMP 0xffa09d00 <_strcmp+0x4c>;
ffa09cfe:	00 00       	NOP;
ffa09d00:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa09d02:	01 e8 00 00 	UNLINK;
ffa09d06:	10 00       	RTS;
ffa09d08:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d0a:	01 e8 00 00 	UNLINK;
ffa09d0e:	10 00       	RTS;

ffa09d10 <_substr>:
ffa09d10:	f4 05       	[--SP] = (R7:6, P5:4);
ffa09d12:	20 32       	P4 = R0;
ffa09d14:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09d18:	32 30       	R6 = R2;
ffa09d1a:	11 32       	P2 = R1;
ffa09d1c:	62 99       	R2 = B[P4] (X);
ffa09d1e:	02 0c       	CC = R2 == 0x0;
ffa09d20:	1a 18       	IF CC JUMP 0xffa09d54 <_substr+0x44>;
ffa09d22:	00 00       	NOP;
ffa09d24:	00 00       	NOP;
ffa09d26:	00 00       	NOP;
ffa09d28:	50 99       	R0 = B[P2] (X);
ffa09d2a:	00 0c       	CC = R0 == 0x0;
ffa09d2c:	14 18       	IF CC JUMP 0xffa09d54 <_substr+0x44>;
ffa09d2e:	06 0d       	CC = R6 <= 0x0;
ffa09d30:	12 18       	IF CC JUMP 0xffa09d54 <_substr+0x44>;
ffa09d32:	29 32       	P5 = R1;
ffa09d34:	7c 30       	R7 = P4;
ffa09d36:	08 68       	P0 = 0x1 (X);		/*		P0=0x0(  0) */
ffa09d38:	17 64       	R7 += 0x2;		/* (  2) */
ffa09d3a:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa09d3c:	02 08       	CC = R2 == R0;
ffa09d3e:	10 18       	IF CC JUMP 0xffa09d5e <_substr+0x4e>;
ffa09d40:	00 00       	NOP;
ffa09d42:	00 00       	NOP;
ffa09d44:	48 30       	R1 = P0;
ffa09d46:	68 99       	R0 = B[P5] (X);
ffa09d48:	00 0c       	CC = R0 == 0x0;
ffa09d4a:	05 18       	IF CC JUMP 0xffa09d54 <_substr+0x44>;
ffa09d4c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa09d4e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa09d50:	0e 09       	CC = R6 <= R1;
ffa09d52:	f5 17       	IF !CC JUMP 0xffa09d3c <_substr+0x2c> (BP);
ffa09d54:	01 e8 00 00 	UNLINK;
ffa09d58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d5a:	b4 05       	(R7:6, P5:4) = [SP++];
ffa09d5c:	10 00       	RTS;
ffa09d5e:	0f 32       	P1 = R7;
ffa09d60:	55 32       	P2 = P5;
ffa09d62:	40 30       	R0 = P0;
ffa09d64:	a1 e5 01 00 	R1 = B[P4 + 0x1] (X);
ffa09d68:	00 00       	NOP;
ffa09d6a:	53 98       	R3 = B[P2++] (X);
ffa09d6c:	0b 08       	CC = R3 == R1;
ffa09d6e:	eb 13       	IF !CC JUMP 0xffa09d44 <_substr+0x34>;
ffa09d70:	03 0c       	CC = R3 == 0x0;
ffa09d72:	e9 1b       	IF CC JUMP 0xffa09d44 <_substr+0x34>;
ffa09d74:	00 00       	NOP;
ffa09d76:	00 00       	NOP;
ffa09d78:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d7a:	49 98       	R1 = B[P1++] (X);
ffa09d7c:	01 0c       	CC = R1 == 0x0;
ffa09d7e:	f5 17       	IF !CC JUMP 0xffa09d68 <_substr+0x58> (BP);
ffa09d80:	01 e8 00 00 	UNLINK;
ffa09d84:	b4 05       	(R7:6, P5:4) = [SP++];
ffa09d86:	10 00       	RTS;

ffa09d88 <_sprintf_int>:
ffa09d88:	f3 05       	[--SP] = (R7:6, P5:3);
ffa09d8a:	29 32       	P5 = R1;
ffa09d8c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d90:	30 30       	R6 = R0;
ffa09d92:	45 0c       	CC = P5 == 0x0;
ffa09d94:	1a 14       	IF !CC JUMP 0xffa09dc8 <_sprintf_int+0x40> (BP);
ffa09d96:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 */
ffa09d9a:	0c e1 b0 71 	P4.L = 0x71b0;		/* (29104)	P4=0xff9071b0 <_printf_temp> */
ffa09d9e:	62 91       	P2 = [P4];
ffa09da0:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa09da2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa09da4:	10 9b       	B[P2] = R0;
ffa09da6:	0f 32       	P1 = R7;
ffa09da8:	06 32       	P0 = R6;
ffa09daa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09dac:	f9 6f       	P1 += -0x1;		/* ( -1) */
ffa09dae:	09 64       	R1 += 0x1;		/* (  1) */
ffa09db0:	62 91       	P2 = [P4];
ffa09db2:	b9 08       	CC = R1 < R7;
ffa09db4:	8a 5a       	P2 = P2 + P1;
ffa09db6:	50 99       	R0 = B[P2] (X);
ffa09db8:	00 9a       	B[P0++] = R0;
ffa09dba:	f9 6f       	P1 += -0x1;		/* ( -1) */
ffa09dbc:	f9 1f       	IF CC JUMP 0xffa09dae <_sprintf_int+0x26> (BP);
ffa09dbe:	07 30       	R0 = R7;
ffa09dc0:	01 e8 00 00 	UNLINK;
ffa09dc4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa09dc6:	10 00       	RTS;
ffa09dc8:	45 0d       	CC = P5 <= 0x0;
ffa09dca:	21 18       	IF CC JUMP 0xffa09e0c <_sprintf_int+0x84>;
ffa09dcc:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff9071b0 <_printf_temp> */
ffa09dd0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09dd2:	0c e1 b0 71 	P4.L = 0x71b0;		/* (29104)	P4=0xff9071b0 <_printf_temp> */
ffa09dd6:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa09dd8:	45 30       	R0 = P5;
ffa09dda:	ff e3 4b fa 	CALL 0xffa09270 <___divsi3>;
ffa09dde:	17 32       	P2 = R7;
ffa09de0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || P1 = [P4] || NOP;
ffa09de4:	61 91 00 00 
ffa09de8:	e8 4f       	R0 <<= 0x1d;
ffa09dea:	08 52       	R0 = R0 - R1;
ffa09dec:	10 4f       	R0 <<= 0x2;
ffa09dee:	51 5a       	P1 = P1 + P2;
ffa09df0:	08 52       	R0 = R0 - R1;
ffa09df2:	10 32       	P2 = R0;
ffa09df4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09df6:	01 0c       	CC = R1 == 0x0;
ffa09df8:	95 5c       	P2 = P5 + (P2 << 0x1);
ffa09dfa:	42 30       	R0 = P2;
ffa09dfc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09dfe:	08 9b       	B[P1] = R0;
ffa09e00:	d3 1b       	IF CC JUMP 0xffa09da6 <_sprintf_int+0x1e>;
ffa09e02:	58 60       	R0 = 0xb (X);		/*		R0=0x0(  0) */
ffa09e04:	29 32       	P5 = R1;
ffa09e06:	07 08       	CC = R7 == R0;
ffa09e08:	e7 17       	IF !CC JUMP 0xffa09dd6 <_sprintf_int+0x4e> (BP);
ffa09e0a:	ce 2f       	JUMP.S 0xffa09da6 <_sprintf_int+0x1e>;
ffa09e0c:	01 30       	R0 = R1;
ffa09e0e:	f8 4c       	BITCLR (R0, 0x1f);		/* bit 31 */
ffa09e10:	28 32       	P5 = R0;
ffa09e12:	4a e1 00 80 	P2.H = 0x8000;		/* (-32768)	P2=0x80000500 */
ffa09e16:	0a e1 00 00 	P2.L = 0x0;		/* (  0)	P2=0x80000000 */
ffa09e1a:	5a 32       	P3 = P2;
ffa09e1c:	2b 44       	P3 -= P5;
ffa09e1e:	43 0d       	CC = P3 <= 0x0;
ffa09e20:	2a 18       	IF CC JUMP 0xffa09e74 <_sprintf_int+0xec>;
ffa09e22:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff9071b0 <_printf_temp> */
ffa09e26:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa09e28:	0c e1 b0 71 	P4.L = 0x71b0;		/* (29104)	P4=0xff9071b0 <_printf_temp> */
ffa09e2c:	51 60       	R1 = 0xa (X);		/*		R1=0x0(  0) */
ffa09e2e:	43 30       	R0 = P3;
ffa09e30:	ff e3 20 fa 	CALL 0xffa09270 <___divsi3>;
ffa09e34:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || P1 = [P4] || NOP;
ffa09e38:	61 91 00 00 
ffa09e3c:	e8 4f       	R0 <<= 0x1d;
ffa09e3e:	08 52       	R0 = R0 - R1;
ffa09e40:	10 4f       	R0 <<= 0x2;
ffa09e42:	08 52       	R0 = R0 - R1;
ffa09e44:	10 32       	P2 = R0;
ffa09e46:	69 5a       	P1 = P1 + P5;
ffa09e48:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa09e4a:	01 0c       	CC = R1 == 0x0;
ffa09e4c:	93 5c       	P2 = P3 + (P2 << 0x1);
ffa09e4e:	42 30       	R0 = P2;
ffa09e50:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09e52:	08 9b       	B[P1] = R0;
ffa09e54:	0c 18       	IF CC JUMP 0xffa09e6c <_sprintf_int+0xe4>;
ffa09e56:	5a 68       	P2 = 0xb (X);		/*		P2=0x0(  0) */
ffa09e58:	19 32       	P3 = R1;
ffa09e5a:	55 08       	CC = P5 == P2;
ffa09e5c:	e8 17       	IF !CC JUMP 0xffa09e2c <_sprintf_int+0xa4> (BP);
ffa09e5e:	59 68       	P1 = 0xb (X);		/*		P1=0x0(  0) */
ffa09e60:	67 60       	R7 = 0xc (X);		/*		R7=0x0(  0) */
ffa09e62:	62 91       	P2 = [P4];
ffa09e64:	68 61       	R0 = 0x2d (X);		/*		R0=0x0(  0) */
ffa09e66:	8a 5a       	P2 = P2 + P1;
ffa09e68:	10 9b       	B[P2] = R0;
ffa09e6a:	9e 2f       	JUMP.S 0xffa09da6 <_sprintf_int+0x1e>;
ffa09e6c:	7d 30       	R7 = P5;
ffa09e6e:	4d 32       	P1 = P5;
ffa09e70:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09e72:	f8 2f       	JUMP.S 0xffa09e62 <_sprintf_int+0xda>;
ffa09e74:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff9071b0 <_printf_temp> */
ffa09e78:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa09e7a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x0(  0) */
ffa09e7c:	0c e1 b0 71 	P4.L = 0x71b0;		/* (29104)	P4=0xff9071b0 <_printf_temp> */
ffa09e80:	f1 2f       	JUMP.S 0xffa09e62 <_sprintf_int+0xda>;
	...

ffa09e84 <_sprintf_hex>:
ffa09e84:	10 32       	P2 = R0;
ffa09e86:	78 05       	[--SP] = (R7:7);
ffa09e88:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09e8c:	80 61       	R0 = 0x30 (X);		/*		R0=0x0(  0) */
ffa09e8e:	e2 60       	R2 = 0x1c (X);		/*		R2=0x0(  0) */
ffa09e90:	10 9b       	B[P2] = R0;
ffa09e92:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09e96:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa09e9a:	12 6c       	P2 += 0x2;		/* (  2) */
ffa09e9c:	7b 60       	R3 = 0xf (X);		/*		R3=0x0(  0) */
ffa09e9e:	41 68       	P1 = 0x8 (X);		/*		P1=0x0(  0) */
ffa09ea0:	4f 60       	R7 = 0x9 (X);		/*		R7=0x0(  0) */
ffa09ea2:	b2 e0 09 10 	LSETUP(0xffa09ea6 <_sprintf_hex+0x22>, 0xffa09eb4 <_sprintf_hex+0x30>) LC1 = P1;
ffa09ea6:	01 30       	R0 = R1;
ffa09ea8:	10 40       	R0 >>>= R2;
ffa09eaa:	18 54       	R0 = R0 & R3;
ffa09eac:	38 09       	CC = R0 <= R7;
ffa09eae:	09 1c       	IF CC JUMP 0xffa09ec0 <_sprintf_hex+0x3c> (BP);
ffa09eb0:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09eb2:	10 9a       	B[P2++] = R0;
ffa09eb4:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa09eb6:	01 e8 00 00 	UNLINK;
ffa09eba:	50 60       	R0 = 0xa (X);		/*		R0=0x0(  0) */
ffa09ebc:	38 05       	(R7:7) = [SP++];
ffa09ebe:	10 00       	RTS;
ffa09ec0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09ec2:	f8 2f       	JUMP.S 0xffa09eb2 <_sprintf_hex+0x2e>;

ffa09ec4 <_strprintf_int>:
ffa09ec4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa09ec6:	29 32       	P5 = R1;
ffa09ec8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ecc:	38 30       	R7 = R0;
ffa09ece:	0a 30       	R1 = R2;
ffa09ed0:	ff e3 5c ff 	CALL 0xffa09d88 <_sprintf_int>;
ffa09ed4:	29 91       	R1 = [P5];
ffa09ed6:	41 50       	R1 = R1 + R0;
ffa09ed8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa09edc:	29 93 00 00 
ffa09ee0:	07 30       	R0 = R7;
ffa09ee2:	01 e8 00 00 	UNLINK;
ffa09ee6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa09ee8:	10 00       	RTS;
	...

ffa09eec <_strprintf_hex>:
ffa09eec:	fd 05       	[--SP] = (R7:7, P5:5);
ffa09eee:	29 32       	P5 = R1;
ffa09ef0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ef4:	38 30       	R7 = R0;
ffa09ef6:	0a 30       	R1 = R2;
ffa09ef8:	ff e3 c6 ff 	CALL 0xffa09e84 <_sprintf_hex>;
ffa09efc:	29 91       	R1 = [P5];
ffa09efe:	41 50       	R1 = R1 + R0;
ffa09f00:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa09f04:	29 93 00 00 
ffa09f08:	07 30       	R0 = R7;
ffa09f0a:	01 e8 00 00 	UNLINK;
ffa09f0e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa09f10:	10 00       	RTS;
	...

ffa09f14 <_atoi>:
ffa09f14:	10 32       	P2 = R0;
ffa09f16:	68 05       	[--SP] = (R7:5);
ffa09f18:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09f1c:	39 30       	R7 = R1;
ffa09f1e:	6a 61       	R2 = 0x2d (X);		/*		R2=0x0(  0) */
ffa09f20:	51 99       	R1 = B[P2] (X);
ffa09f22:	08 43       	R0 = R1.B (X);
ffa09f24:	10 08       	CC = R0 == R2;
ffa09f26:	28 18       	IF CC JUMP 0xffa09f76 <_atoi+0x62>;
ffa09f28:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa09f2a:	0e 60       	R6 = 0x1 (X);		/*		R6=0x0(  0) */
ffa09f2c:	11 30       	R2 = R1;
ffa09f2e:	82 66       	R2 += -0x30;		/* (-48) */
ffa09f30:	50 43       	R0 = R2.B (Z);
ffa09f32:	4a 32       	P1 = P2;
ffa09f34:	4a 60       	R2 = 0x9 (X);		/*		R2=0x0(  0) */
ffa09f36:	09 6c       	P1 += 0x1;		/* (  1) */
ffa09f38:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa09f3a:	10 0a       	CC = R0 <= R2 (IU);
ffa09f3c:	16 10       	IF !CC JUMP 0xffa09f68 <_atoi+0x54>;
ffa09f3e:	4d 60       	R5 = 0x9 (X);		/*		R5=0x0(  0) */
ffa09f40:	bb 08       	CC = R3 < R7;
ffa09f42:	13 10       	IF !CC JUMP 0xffa09f68 <_atoi+0x54>;
ffa09f44:	42 30       	R0 = P2;
ffa09f46:	80 66       	R0 += -0x30;		/* (-48) */
ffa09f48:	09 43       	R1 = R1.B (X);
ffa09f4a:	48 50       	R1 = R0 + R1;
ffa09f4c:	11 32       	P2 = R1;
ffa09f4e:	49 98       	R1 = B[P1++] (X);
ffa09f50:	11 30       	R2 = R1;
ffa09f52:	82 66       	R2 += -0x30;		/* (-48) */
ffa09f54:	50 43       	R0 = R2.B (Z);
ffa09f56:	28 0a       	CC = R0 <= R5 (IU);
ffa09f58:	03 14       	IF !CC JUMP 0xffa09f5e <_atoi+0x4a> (BP);
ffa09f5a:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa09f5c:	92 5a       	P2 = P2 << 0x1;
ffa09f5e:	50 43       	R0 = R2.B (Z);
ffa09f60:	4a 60       	R2 = 0x9 (X);		/*		R2=0x0(  0) */
ffa09f62:	0b 64       	R3 += 0x1;		/* (  1) */
ffa09f64:	10 0a       	CC = R0 <= R2 (IU);
ffa09f66:	ed 1f       	IF CC JUMP 0xffa09f40 <_atoi+0x2c> (BP);
ffa09f68:	6a 30       	R5 = P2;
ffa09f6a:	f5 40       	R5 *= R6;
ffa09f6c:	01 e8 00 00 	UNLINK;
ffa09f70:	05 30       	R0 = R5;
ffa09f72:	28 05       	(R7:5) = [SP++];
ffa09f74:	10 00       	RTS;
ffa09f76:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa09f78:	51 99       	R1 = B[P2] (X);
ffa09f7a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x0(  0) */
ffa09f7c:	fe 63       	R6 = -0x1 (X);		/*		R6=0xffffff80(-128) */
ffa09f7e:	d7 2f       	JUMP.S 0xffa09f2c <_atoi+0x18>;

ffa09f80 <_udelay>:
ffa09f80:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09f84:	00 0d       	CC = R0 <= 0x0;
ffa09f86:	0a 18       	IF CC JUMP 0xffa09f9a <_udelay+0x1a>;
ffa09f88:	08 32       	P1 = R0;
ffa09f8a:	a2 e0 07 10 	LSETUP(0xffa09f8e <_udelay+0xe>, 0xffa09f98 <_udelay+0x18>) LC0 = P1;
ffa09f8e:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa09f92:	b2 e0 03 20 	LSETUP(0xffa09f96 <_udelay+0x16>, 0xffa09f98 <_udelay+0x18>) LC1 = P2;
ffa09f96:	00 00       	NOP;
ffa09f98:	00 00       	NOP;
ffa09f9a:	01 e8 00 00 	UNLINK;
ffa09f9e:	10 00       	RTS;

ffa09fa0 <_spi_delay>:
ffa09fa0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa09fa4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09fa8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09fac:	42 34       	I0 = P2;
ffa09fae:	00 00       	NOP;
ffa09fb0:	20 9d       	R0.L = W[I0];
ffa09fb2:	c0 42       	R0 = R0.L (Z);
ffa09fb4:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa09fb6:	fc 17       	IF !CC JUMP 0xffa09fae <_spi_delay+0xe> (BP);
ffa09fb8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa09fba:	0c 10       	IF !CC JUMP 0xffa09fd2 <_spi_delay+0x32>;
ffa09fbc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09fc0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09fc4:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa09fc6:	42 34       	I0 = P2;
ffa09fc8:	00 00       	NOP;
ffa09fca:	20 9d       	R0.L = W[I0];
ffa09fcc:	01 54       	R0 = R1 & R0;
ffa09fce:	00 0c       	CC = R0 == 0x0;
ffa09fd0:	fc 1f       	IF CC JUMP 0xffa09fc8 <_spi_delay+0x28> (BP);
ffa09fd2:	01 e8 00 00 	UNLINK;
ffa09fd6:	10 00       	RTS;

ffa09fd8 <_spi_write_register>:
ffa09fd8:	19 30       	R3 = R1;
ffa09fda:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09fde:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09fe2:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa09fe4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09fe8:	11 97       	W[P2] = R1;
ffa09fea:	24 00       	SSYNC;
ffa09fec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09ff0:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa09ff2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09ff6:	40 43       	R0 = R0.B (Z);
ffa09ff8:	10 97       	W[P2] = R0;
ffa09ffa:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa09ffc:	42 34       	I0 = P2;
ffa09ffe:	00 00       	NOP;
ffa0a000:	20 9d       	R0.L = W[I0];
ffa0a002:	c0 42       	R0 = R0.L (Z);
ffa0a004:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a006:	fc 17       	IF !CC JUMP 0xffa09ffe <_spi_write_register+0x26> (BP);
ffa0a008:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a00a:	0c 10       	IF !CC JUMP 0xffa0a022 <_spi_write_register+0x4a>;
ffa0a00c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a010:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a014:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a016:	42 34       	I0 = P2;
ffa0a018:	00 00       	NOP;
ffa0a01a:	20 9d       	R0.L = W[I0];
ffa0a01c:	01 54       	R0 = R1 & R0;
ffa0a01e:	00 0c       	CC = R0 == 0x0;
ffa0a020:	fc 1f       	IF CC JUMP 0xffa0a018 <_spi_write_register+0x40> (BP);
ffa0a022:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a026:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a02a:	12 95       	R2 = W[P2] (Z);
ffa0a02c:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0a02e:	58 43       	R0 = R3.B (Z);
ffa0a030:	10 97       	W[P2] = R0;
ffa0a032:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a034:	42 34       	I0 = P2;
ffa0a036:	00 00       	NOP;
ffa0a038:	20 9d       	R0.L = W[I0];
ffa0a03a:	c0 42       	R0 = R0.L (Z);
ffa0a03c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a03e:	fc 17       	IF !CC JUMP 0xffa0a036 <_spi_write_register+0x5e> (BP);
ffa0a040:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a042:	0c 10       	IF !CC JUMP 0xffa0a05a <_spi_write_register+0x82>;
ffa0a044:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a048:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a04c:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a04e:	42 34       	I0 = P2;
ffa0a050:	00 00       	NOP;
ffa0a052:	20 9d       	R0.L = W[I0];
ffa0a054:	01 54       	R0 = R1 & R0;
ffa0a056:	00 0c       	CC = R0 == 0x0;
ffa0a058:	fc 1f       	IF CC JUMP 0xffa0a050 <_spi_write_register+0x78> (BP);
ffa0a05a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a05e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a060:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a064:	10 97       	W[P2] = R0;
ffa0a066:	24 00       	SSYNC;
ffa0a068:	02 30       	R0 = R2;
ffa0a06a:	01 e8 00 00 	UNLINK;
ffa0a06e:	10 00       	RTS;

ffa0a070 <_spi_read_register>:
ffa0a070:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a074:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a078:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a07a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a07e:	11 97       	W[P2] = R1;
ffa0a080:	24 00       	SSYNC;
ffa0a082:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a086:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a08a:	40 43       	R0 = R0.B (Z);
ffa0a08c:	10 97       	W[P2] = R0;
ffa0a08e:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a090:	42 34       	I0 = P2;
ffa0a092:	00 00       	NOP;
ffa0a094:	20 9d       	R0.L = W[I0];
ffa0a096:	c0 42       	R0 = R0.L (Z);
ffa0a098:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a09a:	fc 17       	IF !CC JUMP 0xffa0a092 <_spi_read_register+0x22> (BP);
ffa0a09c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a09e:	0c 10       	IF !CC JUMP 0xffa0a0b6 <_spi_read_register+0x46>;
ffa0a0a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0a4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a0a8:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a0aa:	42 34       	I0 = P2;
ffa0a0ac:	00 00       	NOP;
ffa0a0ae:	20 9d       	R0.L = W[I0];
ffa0a0b0:	01 54       	R0 = R1 & R0;
ffa0a0b2:	00 0c       	CC = R0 == 0x0;
ffa0a0b4:	fc 1f       	IF CC JUMP 0xffa0a0ac <_spi_read_register+0x3c> (BP);
ffa0a0b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a0ba:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a0be:	10 95       	R0 = W[P2] (Z);
ffa0a0c0:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0a0c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0c4:	10 97       	W[P2] = R0;
ffa0a0c6:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a0c8:	42 34       	I0 = P2;
ffa0a0ca:	00 00       	NOP;
ffa0a0cc:	20 9d       	R0.L = W[I0];
ffa0a0ce:	c0 42       	R0 = R0.L (Z);
ffa0a0d0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a0d2:	fc 17       	IF !CC JUMP 0xffa0a0ca <_spi_read_register+0x5a> (BP);
ffa0a0d4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a0d6:	0c 10       	IF !CC JUMP 0xffa0a0ee <_spi_read_register+0x7e>;
ffa0a0d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a0dc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a0e0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a0e2:	42 34       	I0 = P2;
ffa0a0e4:	00 00       	NOP;
ffa0a0e6:	20 9d       	R0.L = W[I0];
ffa0a0e8:	01 54       	R0 = R1 & R0;
ffa0a0ea:	00 0c       	CC = R0 == 0x0;
ffa0a0ec:	fc 1f       	IF CC JUMP 0xffa0a0e4 <_spi_read_register+0x74> (BP);
ffa0a0ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a0f2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a0f6:	10 95       	R0 = W[P2] (Z);
ffa0a0f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a0fc:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a0fe:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a102:	11 97       	W[P2] = R1;
ffa0a104:	24 00       	SSYNC;
ffa0a106:	01 e8 00 00 	UNLINK;
ffa0a10a:	10 00       	RTS;

ffa0a10c <_spi_read_register_status>:
ffa0a10c:	09 32       	P1 = R1;
ffa0a10e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a112:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a116:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a118:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a11c:	11 97       	W[P2] = R1;
ffa0a11e:	24 00       	SSYNC;
ffa0a120:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a124:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a128:	40 43       	R0 = R0.B (Z);
ffa0a12a:	10 97       	W[P2] = R0;
ffa0a12c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a12e:	42 34       	I0 = P2;
ffa0a130:	00 00       	NOP;
ffa0a132:	20 9d       	R0.L = W[I0];
ffa0a134:	c0 42       	R0 = R0.L (Z);
ffa0a136:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a138:	fc 17       	IF !CC JUMP 0xffa0a130 <_spi_read_register_status+0x24> (BP);
ffa0a13a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a13c:	0c 10       	IF !CC JUMP 0xffa0a154 <_spi_read_register_status+0x48>;
ffa0a13e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a142:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a146:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a148:	42 34       	I0 = P2;
ffa0a14a:	00 00       	NOP;
ffa0a14c:	20 9d       	R0.L = W[I0];
ffa0a14e:	01 54       	R0 = R1 & R0;
ffa0a150:	00 0c       	CC = R0 == 0x0;
ffa0a152:	fc 1f       	IF CC JUMP 0xffa0a14a <_spi_read_register_status+0x3e> (BP);
ffa0a154:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a158:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a15c:	12 95       	R2 = W[P2] (Z);
ffa0a15e:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0a160:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a162:	10 97       	W[P2] = R0;
ffa0a164:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a166:	42 34       	I0 = P2;
ffa0a168:	00 00       	NOP;
ffa0a16a:	20 9d       	R0.L = W[I0];
ffa0a16c:	c0 42       	R0 = R0.L (Z);
ffa0a16e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a170:	fc 17       	IF !CC JUMP 0xffa0a168 <_spi_read_register_status+0x5c> (BP);
ffa0a172:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a174:	0c 10       	IF !CC JUMP 0xffa0a18c <_spi_read_register_status+0x80>;
ffa0a176:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a17a:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a17e:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a180:	42 34       	I0 = P2;
ffa0a182:	00 00       	NOP;
ffa0a184:	20 9d       	R0.L = W[I0];
ffa0a186:	01 54       	R0 = R1 & R0;
ffa0a188:	00 0c       	CC = R0 == 0x0;
ffa0a18a:	fc 1f       	IF CC JUMP 0xffa0a182 <_spi_read_register_status+0x76> (BP);
ffa0a18c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a190:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a194:	10 95       	R0 = W[P2] (Z);
ffa0a196:	08 9b       	B[P1] = R0;
ffa0a198:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a19c:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a19e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a1a2:	10 97       	W[P2] = R0;
ffa0a1a4:	24 00       	SSYNC;
ffa0a1a6:	02 30       	R0 = R2;
ffa0a1a8:	01 e8 00 00 	UNLINK;
ffa0a1ac:	10 00       	RTS;
	...

ffa0a1b0 <_spi_write_byte>:
ffa0a1b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a1b4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a1b8:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a1ba:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a1be:	11 97       	W[P2] = R1;
ffa0a1c0:	24 00       	SSYNC;
ffa0a1c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a1c6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a1ca:	40 43       	R0 = R0.B (Z);
ffa0a1cc:	10 97       	W[P2] = R0;
ffa0a1ce:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a1d0:	42 34       	I0 = P2;
ffa0a1d2:	00 00       	NOP;
ffa0a1d4:	20 9d       	R0.L = W[I0];
ffa0a1d6:	c0 42       	R0 = R0.L (Z);
ffa0a1d8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a1da:	fc 17       	IF !CC JUMP 0xffa0a1d2 <_spi_write_byte+0x22> (BP);
ffa0a1dc:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a1de:	0c 10       	IF !CC JUMP 0xffa0a1f6 <_spi_write_byte+0x46>;
ffa0a1e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a1e4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1e8:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a1ea:	42 34       	I0 = P2;
ffa0a1ec:	00 00       	NOP;
ffa0a1ee:	20 9d       	R0.L = W[I0];
ffa0a1f0:	01 54       	R0 = R1 & R0;
ffa0a1f2:	00 0c       	CC = R0 == 0x0;
ffa0a1f4:	fc 1f       	IF CC JUMP 0xffa0a1ec <_spi_write_byte+0x3c> (BP);
ffa0a1f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a1fa:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a1fe:	10 95       	R0 = W[P2] (Z);
ffa0a200:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a204:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a206:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a20a:	11 97       	W[P2] = R1;
ffa0a20c:	24 00       	SSYNC;
ffa0a20e:	01 e8 00 00 	UNLINK;
ffa0a212:	10 00       	RTS;

ffa0a214 <_spi_write_packet>:
ffa0a214:	10 30       	R2 = R0;
ffa0a216:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a21a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a21e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a220:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a224:	10 97       	W[P2] = R0;
ffa0a226:	24 00       	SSYNC;
ffa0a228:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a22c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a230:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a234:	10 97       	W[P2] = R0;
ffa0a236:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a238:	42 34       	I0 = P2;
ffa0a23a:	00 00       	NOP;
ffa0a23c:	20 9d       	R0.L = W[I0];
ffa0a23e:	c0 42       	R0 = R0.L (Z);
ffa0a240:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a242:	fc 17       	IF !CC JUMP 0xffa0a23a <_spi_write_packet+0x26> (BP);
ffa0a244:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a246:	0c 10       	IF !CC JUMP 0xffa0a25e <_spi_write_packet+0x4a>;
ffa0a248:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a24c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a250:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a252:	42 34       	I0 = P2;
ffa0a254:	00 00       	NOP;
ffa0a256:	20 9d       	R0.L = W[I0];
ffa0a258:	01 54       	R0 = R1 & R0;
ffa0a25a:	00 0c       	CC = R0 == 0x0;
ffa0a25c:	fc 1f       	IF CC JUMP 0xffa0a254 <_spi_write_packet+0x40> (BP);
ffa0a25e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a262:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a266:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a26a:	10 97       	W[P2] = R0;
ffa0a26c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a270:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa0a272:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a276:	10 97       	W[P2] = R0;
ffa0a278:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a27a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0a27c:	10 97       	W[P2] = R0;
ffa0a27e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0a280:	12 93       	[P2] = R2;
ffa0a282:	24 00       	SSYNC;
ffa0a284:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a288:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0a28a:	10 97       	W[P2] = R0;
ffa0a28c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa0a290:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0a292:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a294:	09 e1 08 05 	P1.L = 0x508;		/* (1288)	P1=0xffc00508(-4193016) */
ffa0a298:	42 60       	R2 = 0x8 (X);		/*		R2=0x0(  0) */
	...
ffa0a2a2:	00 00       	NOP;
ffa0a2a4:	10 95       	R0 = W[P2] (Z);
ffa0a2a6:	01 54       	R0 = R1 & R0;
ffa0a2a8:	00 0c       	CC = R0 == 0x0;
ffa0a2aa:	f8 1f       	IF CC JUMP 0xffa0a29a <_spi_write_packet+0x86> (BP);
ffa0a2ac:	08 95       	R0 = W[P1] (Z);
ffa0a2ae:	02 54       	R0 = R2 & R0;
ffa0a2b0:	00 0c       	CC = R0 == 0x0;
ffa0a2b2:	f4 17       	IF !CC JUMP 0xffa0a29a <_spi_write_packet+0x86> (BP);
ffa0a2b4:	10 95       	R0 = W[P2] (Z);
ffa0a2b6:	02 54       	R0 = R2 & R0;
ffa0a2b8:	00 0c       	CC = R0 == 0x0;
ffa0a2ba:	f0 17       	IF !CC JUMP 0xffa0a29a <_spi_write_packet+0x86> (BP);
ffa0a2bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a2c0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a2c4:	42 34       	I0 = P2;
ffa0a2c6:	00 00       	NOP;
ffa0a2c8:	20 9d       	R0.L = W[I0];
ffa0a2ca:	c0 42       	R0 = R0.L (Z);
ffa0a2cc:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a2ce:	fc 17       	IF !CC JUMP 0xffa0a2c6 <_spi_write_packet+0xb2> (BP);
ffa0a2d0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a2d2:	0c 10       	IF !CC JUMP 0xffa0a2ea <_spi_write_packet+0xd6>;
ffa0a2d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a2d8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a2dc:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a2de:	42 34       	I0 = P2;
ffa0a2e0:	00 00       	NOP;
ffa0a2e2:	20 9d       	R0.L = W[I0];
ffa0a2e4:	01 54       	R0 = R1 & R0;
ffa0a2e6:	00 0c       	CC = R0 == 0x0;
ffa0a2e8:	fc 1f       	IF CC JUMP 0xffa0a2e0 <_spi_write_packet+0xcc> (BP);
ffa0a2ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a2ee:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0a2f0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a2f4:	10 97       	W[P2] = R0;
ffa0a2f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a2fa:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a2fe:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a302:	10 97       	W[P2] = R0;
ffa0a304:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a308:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a30a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a30e:	10 97       	W[P2] = R0;
ffa0a310:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a314:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a316:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a31a:	10 97       	W[P2] = R0;
ffa0a31c:	24 00       	SSYNC;
ffa0a31e:	01 e8 00 00 	UNLINK;
ffa0a322:	10 00       	RTS;

ffa0a324 <_spi_write_packet_noDMA>:
ffa0a324:	10 30       	R2 = R0;
ffa0a326:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a32a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a32e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a330:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a334:	10 97       	W[P2] = R0;
ffa0a336:	24 00       	SSYNC;
ffa0a338:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a33c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a340:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a344:	10 97       	W[P2] = R0;
ffa0a346:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a348:	42 34       	I0 = P2;
ffa0a34a:	00 00       	NOP;
ffa0a34c:	20 9d       	R0.L = W[I0];
ffa0a34e:	c0 42       	R0 = R0.L (Z);
ffa0a350:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a352:	fc 17       	IF !CC JUMP 0xffa0a34a <_spi_write_packet_noDMA+0x26> (BP);
ffa0a354:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a356:	0c 10       	IF !CC JUMP 0xffa0a36e <_spi_write_packet_noDMA+0x4a>;
ffa0a358:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a35c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a360:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a362:	42 34       	I0 = P2;
ffa0a364:	00 00       	NOP;
ffa0a366:	20 9d       	R0.L = W[I0];
ffa0a368:	01 54       	R0 = R1 & R0;
ffa0a36a:	00 0c       	CC = R0 == 0x0;
ffa0a36c:	fc 1f       	IF CC JUMP 0xffa0a364 <_spi_write_packet_noDMA+0x40> (BP);
ffa0a36e:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00400(-4193280) */
ffa0a372:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a376:	02 32       	P0 = R2;
ffa0a378:	10 e1 0c 05 	I0.L = 0x50c;		/* (1292)	I0=0xffc0050c(-4193012) */
ffa0a37c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a380:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a382:	01 69       	P1 = 0x20 (X);		/*		P1=0x0(  0) */
ffa0a384:	b2 e0 16 10 	LSETUP(0xffa0a388 <_spi_write_packet_noDMA+0x64>, 0xffa0a3b0 <_spi_write_packet_noDMA+0x8c>) LC1 = P1;
ffa0a388:	40 98       	R0 = B[P0++] (X);
ffa0a38a:	20 9f       	W[I0] = R0.L;
ffa0a38c:	4a 34       	I1 = P2;
ffa0a38e:	00 00       	NOP;
ffa0a390:	28 9d       	R0.L = W[I1];
ffa0a392:	c0 42       	R0 = R0.L (Z);
ffa0a394:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a396:	fc 17       	IF !CC JUMP 0xffa0a38e <_spi_write_packet_noDMA+0x6a> (BP);
ffa0a398:	91 32       	P2 = I1;
ffa0a39a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a39c:	0a 10       	IF !CC JUMP 0xffa0a3b0 <_spi_write_packet_noDMA+0x8c>;
ffa0a39e:	00 00       	NOP;
ffa0a3a0:	00 00       	NOP;
ffa0a3a2:	4a 34       	I1 = P2;
ffa0a3a4:	00 00       	NOP;
ffa0a3a6:	28 9d       	R0.L = W[I1];
ffa0a3a8:	01 54       	R0 = R1 & R0;
ffa0a3aa:	00 0c       	CC = R0 == 0x0;
ffa0a3ac:	fc 1f       	IF CC JUMP 0xffa0a3a4 <_spi_write_packet_noDMA+0x80> (BP);
ffa0a3ae:	91 32       	P2 = I1;
ffa0a3b0:	00 00       	NOP;
ffa0a3b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a3b6:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a3b8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a3bc:	10 97       	W[P2] = R0;
ffa0a3be:	24 00       	SSYNC;
ffa0a3c0:	01 e8 00 00 	UNLINK;
ffa0a3c4:	10 00       	RTS;
	...

ffa0a3c8 <_spi_read_packet>:
ffa0a3c8:	78 05       	[--SP] = (R7:7);
ffa0a3ca:	38 30       	R7 = R0;
ffa0a3cc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a3d0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a3d4:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0a3d6:	ff e3 01 fe 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a3da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a3de:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a3e0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a3e4:	10 97       	W[P2] = R0;
ffa0a3e6:	24 00       	SSYNC;
ffa0a3e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a3ec:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a3f0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a3f4:	10 97       	W[P2] = R0;
ffa0a3f6:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a3f8:	42 34       	I0 = P2;
ffa0a3fa:	00 00       	NOP;
ffa0a3fc:	20 9d       	R0.L = W[I0];
ffa0a3fe:	c0 42       	R0 = R0.L (Z);
ffa0a400:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a402:	fc 17       	IF !CC JUMP 0xffa0a3fa <_spi_read_packet+0x32> (BP);
ffa0a404:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a406:	0c 10       	IF !CC JUMP 0xffa0a41e <_spi_read_packet+0x56>;
ffa0a408:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a40c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a410:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a412:	42 34       	I0 = P2;
ffa0a414:	00 00       	NOP;
ffa0a416:	20 9d       	R0.L = W[I0];
ffa0a418:	01 54       	R0 = R1 & R0;
ffa0a41a:	00 0c       	CC = R0 == 0x0;
ffa0a41c:	fc 1f       	IF CC JUMP 0xffa0a414 <_spi_read_packet+0x4c> (BP);
ffa0a41e:	51 e1 c0 ff 	I1.H = 0xffc0;		/* (-64)	I1=0xffc04000(-4177920) */
ffa0a422:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a426:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc0050c(-4193012) */
ffa0a42a:	07 32       	P0 = R7;
ffa0a42c:	11 e1 0c 05 	I1.L = 0x50c;		/* (1292)	I1=0xffc0050c(-4193012) */
ffa0a430:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a432:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a436:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a438:	10 e1 18 05 	I0.L = 0x518;		/* (1304)	I0=0xffc00518(-4193000) */
ffa0a43c:	01 69       	P1 = 0x20 (X);		/*		P1=0x0(  0) */
ffa0a43e:	b2 e0 16 10 	LSETUP(0xffa0a442 <_spi_read_packet+0x7a>, 0xffa0a46a <_spi_read_packet+0xa2>) LC1 = P1;
ffa0a442:	2a 9f       	W[I1] = R2.L;
ffa0a444:	52 34       	I2 = P2;
ffa0a446:	00 00       	NOP;
ffa0a448:	30 9d       	R0.L = W[I2];
ffa0a44a:	c0 42       	R0 = R0.L (Z);
ffa0a44c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a44e:	fc 17       	IF !CC JUMP 0xffa0a446 <_spi_read_packet+0x7e> (BP);
ffa0a450:	92 32       	P2 = I2;
ffa0a452:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a454:	0a 10       	IF !CC JUMP 0xffa0a468 <_spi_read_packet+0xa0>;
ffa0a456:	00 00       	NOP;
ffa0a458:	00 00       	NOP;
ffa0a45a:	52 34       	I2 = P2;
ffa0a45c:	00 00       	NOP;
ffa0a45e:	30 9d       	R0.L = W[I2];
ffa0a460:	01 54       	R0 = R1 & R0;
ffa0a462:	00 0c       	CC = R0 == 0x0;
ffa0a464:	fc 1f       	IF CC JUMP 0xffa0a45c <_spi_read_packet+0x94> (BP);
ffa0a466:	92 32       	P2 = I2;
ffa0a468:	20 9d       	R0.L = W[I0];
ffa0a46a:	00 9a       	B[P0++] = R0;
ffa0a46c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a470:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a472:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a476:	10 97       	W[P2] = R0;
ffa0a478:	24 00       	SSYNC;
ffa0a47a:	01 e8 00 00 	UNLINK;
ffa0a47e:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a480:	38 05       	(R7:7) = [SP++];
ffa0a482:	10 00       	RTS;

ffa0a484 <_spi_read_packet_nocheck>:
ffa0a484:	10 30       	R2 = R0;
ffa0a486:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a48a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0a48e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a490:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a494:	10 97       	W[P2] = R0;
ffa0a496:	24 00       	SSYNC;
ffa0a498:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a49c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a4a0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a4a4:	10 97       	W[P2] = R0;
ffa0a4a6:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a4a8:	42 34       	I0 = P2;
ffa0a4aa:	00 00       	NOP;
ffa0a4ac:	20 9d       	R0.L = W[I0];
ffa0a4ae:	c0 42       	R0 = R0.L (Z);
ffa0a4b0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a4b2:	fc 17       	IF !CC JUMP 0xffa0a4aa <_spi_read_packet_nocheck+0x26> (BP);
ffa0a4b4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a4b6:	0c 10       	IF !CC JUMP 0xffa0a4ce <_spi_read_packet_nocheck+0x4a>;
ffa0a4b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a4bc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a4c0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a4c2:	42 34       	I0 = P2;
ffa0a4c4:	00 00       	NOP;
ffa0a4c6:	20 9d       	R0.L = W[I0];
ffa0a4c8:	01 54       	R0 = R1 & R0;
ffa0a4ca:	00 0c       	CC = R0 == 0x0;
ffa0a4cc:	fc 1f       	IF CC JUMP 0xffa0a4c4 <_spi_read_packet_nocheck+0x40> (BP);
ffa0a4ce:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa0a4d2:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa0a4d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4d8:	08 97       	W[P1] = R0;
ffa0a4da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a4de:	00 61       	R0 = 0x20 (X);		/*		R0=0x0(  0) */
ffa0a4e0:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a4e4:	10 97       	W[P2] = R0;
ffa0a4e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a4e8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0a4ea:	10 97       	W[P2] = R0;
ffa0a4ec:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0a4ee:	12 93       	[P2] = R2;
ffa0a4f0:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a4f4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0a4f6:	10 97       	W[P2] = R0;
ffa0a4f8:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a4fc:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0a4fe:	08 97       	W[P1] = R0;
ffa0a500:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a502:	42 34       	I0 = P2;
	...
ffa0a50c:	00 00       	NOP;
ffa0a50e:	20 9d       	R0.L = W[I0];
ffa0a510:	01 54       	R0 = R1 & R0;
ffa0a512:	00 0c       	CC = R0 == 0x0;
ffa0a514:	f8 1f       	IF CC JUMP 0xffa0a504 <_spi_read_packet_nocheck+0x80> (BP);
ffa0a516:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a51a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a51c:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a520:	10 97       	W[P2] = R0;
ffa0a522:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0a524:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0a526:	10 97       	W[P2] = R0;
ffa0a528:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a52c:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a530:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a534:	10 97       	W[P2] = R0;
ffa0a536:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a53a:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a53c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a540:	10 97       	W[P2] = R0;
ffa0a542:	24 00       	SSYNC;
ffa0a544:	01 e8 00 00 	UNLINK;
ffa0a548:	10 00       	RTS;
	...

ffa0a54c <_radio_set_rx>:
ffa0a54c:	c5 04       	[--SP] = (P5:5);
ffa0a54e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa0a552:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a556:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa0a55a:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a55c:	28 97       	W[P5] = R0;
ffa0a55e:	24 00       	SSYNC;
ffa0a560:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a562:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a564:	ff e3 3a fd 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a568:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a56a:	28 97       	W[P5] = R0;
ffa0a56c:	24 00       	SSYNC;
ffa0a56e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a572:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a576:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a57a:	10 97       	W[P2] = R0;
ffa0a57c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a57e:	42 34       	I0 = P2;
ffa0a580:	00 00       	NOP;
ffa0a582:	20 9d       	R0.L = W[I0];
ffa0a584:	c0 42       	R0 = R0.L (Z);
ffa0a586:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a588:	fc 17       	IF !CC JUMP 0xffa0a580 <_radio_set_rx+0x34> (BP);
ffa0a58a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a58c:	0c 10       	IF !CC JUMP 0xffa0a5a4 <_radio_set_rx+0x58>;
ffa0a58e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a592:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a596:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a598:	42 34       	I0 = P2;
ffa0a59a:	00 00       	NOP;
ffa0a59c:	20 9d       	R0.L = W[I0];
ffa0a59e:	01 54       	R0 = R1 & R0;
ffa0a5a0:	00 0c       	CC = R0 == 0x0;
ffa0a5a2:	fc 1f       	IF CC JUMP 0xffa0a59a <_radio_set_rx+0x4e> (BP);
ffa0a5a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a5a8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a5ac:	10 95       	R0 = W[P2] (Z);
ffa0a5ae:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa0a5b2:	0d e1 08 07 	P5.L = 0x708;		/* (1800)	P5=0xffc00708(-4192504) */
ffa0a5b6:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a5b8:	28 97       	W[P5] = R0;
ffa0a5ba:	24 00       	SSYNC;
ffa0a5bc:	f9 60       	R1 = 0x1f (X);		/*		R1=0x0(  0) */
ffa0a5be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5c0:	ff e3 0c fd 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a5c4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a5c8:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0a5ca:	ff e3 07 fd 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a5ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a5d2:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0a5d4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a5d8:	10 97       	W[P2] = R0;
ffa0a5da:	24 00       	SSYNC;
ffa0a5dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a5de:	28 97       	W[P5] = R0;
ffa0a5e0:	24 00       	SSYNC;
ffa0a5e2:	01 e8 00 00 	UNLINK;
ffa0a5e6:	85 04       	(P5:5) = [SP++];
ffa0a5e8:	10 00       	RTS;
	...

ffa0a5ec <_radio_set_tx>:
ffa0a5ec:	c5 04       	[--SP] = (P5:5);
ffa0a5ee:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00708(-4192504) */
ffa0a5f2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a5f6:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa0a5fa:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a5fc:	28 97       	W[P5] = R0;
ffa0a5fe:	24 00       	SSYNC;
ffa0a600:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a602:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a604:	ff e3 ea fc 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a608:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a60a:	28 97       	W[P5] = R0;
ffa0a60c:	24 00       	SSYNC;
ffa0a60e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a612:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a616:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a61a:	10 97       	W[P2] = R0;
ffa0a61c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a61e:	42 34       	I0 = P2;
ffa0a620:	00 00       	NOP;
ffa0a622:	20 9d       	R0.L = W[I0];
ffa0a624:	c0 42       	R0 = R0.L (Z);
ffa0a626:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a628:	fc 17       	IF !CC JUMP 0xffa0a620 <_radio_set_tx+0x34> (BP);
ffa0a62a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a62c:	0c 10       	IF !CC JUMP 0xffa0a644 <_radio_set_tx+0x58>;
ffa0a62e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a632:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a636:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a638:	42 34       	I0 = P2;
ffa0a63a:	00 00       	NOP;
ffa0a63c:	20 9d       	R0.L = W[I0];
ffa0a63e:	01 54       	R0 = R1 & R0;
ffa0a640:	00 0c       	CC = R0 == 0x0;
ffa0a642:	fc 1f       	IF CC JUMP 0xffa0a63a <_radio_set_tx+0x4e> (BP);
ffa0a644:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a648:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a64c:	10 95       	R0 = W[P2] (Z);
ffa0a64e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a652:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a654:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a658:	10 97       	W[P2] = R0;
ffa0a65a:	24 00       	SSYNC;
ffa0a65c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a660:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0a662:	ff e3 bb fc 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a666:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a668:	f1 60       	R1 = 0x1e (X);		/*		R1=0x0(  0) */
ffa0a66a:	ff e3 b7 fc 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a66e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a672:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0a674:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a678:	10 97       	W[P2] = R0;
ffa0a67a:	01 e8 00 00 	UNLINK;
ffa0a67e:	85 04       	(P5:5) = [SP++];
ffa0a680:	10 00       	RTS;
	...

ffa0a684 <_radio_wait_irq>:
ffa0a684:	78 05       	[--SP] = (R7:7);
ffa0a686:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a68a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a68e:	10 30       	R2 = R0;
ffa0a690:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a694:	10 95       	R0 = W[P2] (Z);
ffa0a696:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a698:	20 18       	IF CC JUMP 0xffa0a6d8 <_radio_wait_irq+0x54>;
ffa0a69a:	02 0d       	CC = R2 <= 0x0;
ffa0a69c:	20 18       	IF CC JUMP 0xffa0a6dc <_radio_wait_irq+0x58>;
ffa0a69e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0a6a0:	41 60       	R1 = 0x8 (X);		/*		R1=0x0(  0) */
ffa0a6a2:	42 34       	I0 = P2;
ffa0a6a4:	05 20       	JUMP.S 0xffa0a6ae <_radio_wait_irq+0x2a>;
ffa0a6a6:	3a 09       	CC = R2 <= R7;
ffa0a6a8:	13 18       	IF CC JUMP 0xffa0a6ce <_radio_wait_irq+0x4a>;
	...
ffa0a6b6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0a6b8:	20 9d       	R0.L = W[I0];
ffa0a6ba:	01 54       	R0 = R1 & R0;
ffa0a6bc:	00 0c       	CC = R0 == 0x0;
ffa0a6be:	f4 17       	IF !CC JUMP 0xffa0a6a6 <_radio_wait_irq+0x22> (BP);
ffa0a6c0:	3a 09       	CC = R2 <= R7;
ffa0a6c2:	06 18       	IF CC JUMP 0xffa0a6ce <_radio_wait_irq+0x4a>;
ffa0a6c4:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0a6c6:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a6ca:	ff e3 87 fc 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a6ce:	07 30       	R0 = R7;
ffa0a6d0:	01 e8 00 00 	UNLINK;
ffa0a6d4:	38 05       	(R7:7) = [SP++];
ffa0a6d6:	10 00       	RTS;
ffa0a6d8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0a6da:	f3 2f       	JUMP.S 0xffa0a6c0 <_radio_wait_irq+0x3c>;
ffa0a6dc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0a6de:	f8 2f       	JUMP.S 0xffa0a6ce <_radio_wait_irq+0x4a>;

ffa0a6e0 <_spi_write_register_ver>:
ffa0a6e0:	60 05       	[--SP] = (R7:4);
ffa0a6e2:	47 43       	R7 = R0.B (Z);
ffa0a6e4:	4e 43       	R6 = R1.B (Z);
ffa0a6e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a6ea:	0e 30       	R1 = R6;
ffa0a6ec:	07 30       	R0 = R7;
ffa0a6ee:	ff e3 75 fc 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a6f2:	07 30       	R0 = R7;
ffa0a6f4:	ff e3 be fc 	CALL 0xffa0a070 <_spi_read_register>;
ffa0a6f8:	45 43       	R5 = R0.B (Z);
ffa0a6fa:	20 30       	R4 = R0;
ffa0a6fc:	2e 08       	CC = R6 == R5;
ffa0a6fe:	28 18       	IF CC JUMP 0xffa0a74e <_spi_write_register_ver+0x6e>;
ffa0a700:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000(-7340032) */
ffa0a704:	0f 30       	R1 = R7;
ffa0a706:	00 e1 ec 70 	R0.L = 0x70ec;		/* (28908)	R0=0xff9070ec(-7311124) */
ffa0a70a:	ff e3 6b f9 	CALL 0xffa099e0 <_printf_int>;
ffa0a70e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9070ec(-7311124) */
ffa0a712:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0a716:	ff e3 43 f8 	CALL 0xffa0979c <_uart_str>;
ffa0a71a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907108(-7311096) */
ffa0a71e:	0e 30       	R1 = R6;
ffa0a720:	00 e1 00 71 	R0.L = 0x7100;		/* (28928)	R0=0xff907100(-7311104) */
ffa0a724:	ff e3 ac f8 	CALL 0xffa0987c <_printf_hex_byte>;
ffa0a728:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907100(-7311104) */
ffa0a72c:	00 e1 08 71 	R0.L = 0x7108;		/* (28936)	R0=0xff907108(-7311096) */
ffa0a730:	ff e3 36 f8 	CALL 0xffa0979c <_uart_str>;
ffa0a734:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907108(-7311096) */
ffa0a738:	00 e1 0c 71 	R0.L = 0x710c;		/* (28940)	R0=0xff90710c(-7311092) */
ffa0a73c:	0d 30       	R1 = R5;
ffa0a73e:	ff e3 9f f8 	CALL 0xffa0987c <_printf_hex_byte>;
ffa0a742:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90710c(-7311092) */
ffa0a746:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0a74a:	ff e3 29 f8 	CALL 0xffa0979c <_uart_str>;
ffa0a74e:	04 30       	R0 = R4;
ffa0a750:	01 e8 00 00 	UNLINK;
ffa0a754:	20 05       	(R7:4) = [SP++];
ffa0a756:	10 00       	RTS;

ffa0a758 <_radio_init>:
ffa0a758:	70 05       	[--SP] = (R7:6);
ffa0a75a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa0a75e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a762:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa0a766:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0a768:	0a 97       	W[P1] = R2;
ffa0a76a:	24 00       	SSYNC;
ffa0a76c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a770:	21 60       	R1 = 0x4 (X);		/*		R1=0x0(  0) */
ffa0a772:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a776:	11 97       	W[P2] = R1;
ffa0a778:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0a77c:	09 97       	W[P1] = R1;
ffa0a77e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0a780:	12 97       	W[P2] = R2;
ffa0a782:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a786:	16 60       	R6 = 0x2 (X);		/*		R6=0x0(  0) */
ffa0a788:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a78c:	16 97       	W[P2] = R6;
ffa0a78e:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa0a790:	11 95       	R1 = W[P2] (Z);
ffa0a792:	19 4a       	BITSET (R1, 0x3);		/* bit  3 */
ffa0a794:	11 97       	W[P2] = R1;
ffa0a796:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0a798:	11 95       	R1 = W[P2] (Z);
ffa0a79a:	19 4c       	BITCLR (R1, 0x3);		/* bit  3 */
ffa0a79c:	11 97       	W[P2] = R1;
ffa0a79e:	12 95       	R2 = W[P2] (Z);
ffa0a7a0:	19 60       	R1 = 0x3 (X);		/*		R1=0x0(  0) */
ffa0a7a2:	51 56       	R1 = R1 | R2;
ffa0a7a4:	11 97       	W[P2] = R1;
ffa0a7a6:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa0a7aa:	41 43       	R1 = R0.B (Z);
ffa0a7ac:	11 0a       	CC = R1 <= R2 (IU);
ffa0a7ae:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a7b2:	01 06       	IF !CC R0 = R1;
ffa0a7b4:	47 43       	R7 = R0.B (Z);
ffa0a7b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90708c(-7311220) */
ffa0a7ba:	0f 30       	R1 = R7;
ffa0a7bc:	00 e1 18 71 	R0.L = 0x7118;		/* (28952)	R0=0xff907118(-7311080) */
ffa0a7c0:	ff e3 10 f9 	CALL 0xffa099e0 <_printf_int>;
ffa0a7c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff907118(-7311080) */
ffa0a7c8:	00 e1 8c 70 	R0.L = 0x708c;		/* (28812)	R0=0xff90708c(-7311220) */
ffa0a7cc:	ff e3 e8 f7 	CALL 0xffa0979c <_uart_str>;
ffa0a7d0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a7d4:	ff e3 02 fc 	CALL 0xffa09fd8 <_spi_write_register>;
ffa0a7d8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7da:	08 60       	R0 = 0x1 (X);		/*		R0=0x0(  0) */
ffa0a7dc:	ff e3 82 ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a7e0:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a7e2:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a7e4:	ff e3 7e ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a7e8:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a7ea:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0a7ec:	ff e3 7a ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a7f0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7f2:	20 60       	R0 = 0x4 (X);		/*		R0=0x0(  0) */
ffa0a7f4:	ff e3 76 ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a7f8:	0f 30       	R1 = R7;
ffa0a7fa:	28 60       	R0 = 0x5 (X);		/*		R0=0x0(  0) */
ffa0a7fc:	ff e3 72 ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a800:	79 60       	R1 = 0xf (X);		/*		R1=0x0(  0) */
ffa0a802:	30 60       	R0 = 0x6 (X);		/*		R0=0x0(  0) */
ffa0a804:	ff e3 6e ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a808:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a80c:	38 60       	R0 = 0x7 (X);		/*		R0=0x0(  0) */
ffa0a80e:	ff e3 69 ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a812:	01 61       	R1 = 0x20 (X);		/*		R1=0x0(  0) */
ffa0a814:	88 60       	R0 = 0x11 (X);		/*		R0=0x0(  0) */
ffa0a816:	ff e3 65 ff 	CALL 0xffa0a6e0 <_spi_write_register_ver>;
ffa0a81a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a81e:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a822:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a826:	10 97       	W[P2] = R0;
ffa0a828:	18 60       	R0 = 0x3 (X);		/*		R0=0x0(  0) */
ffa0a82a:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a82c:	10 97       	W[P2] = R0;
ffa0a82e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a832:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a836:	16 97       	W[P2] = R6;
ffa0a838:	24 00       	SSYNC;
ffa0a83a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a83e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a842:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a846:	10 97       	W[P2] = R0;
ffa0a848:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a84a:	42 34       	I0 = P2;
ffa0a84c:	00 00       	NOP;
ffa0a84e:	20 9d       	R0.L = W[I0];
ffa0a850:	c0 42       	R0 = R0.L (Z);
ffa0a852:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a854:	fc 17       	IF !CC JUMP 0xffa0a84c <_radio_init+0xf4> (BP);
ffa0a856:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a858:	0c 10       	IF !CC JUMP 0xffa0a870 <_radio_init+0x118>;
ffa0a85a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a85e:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a862:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a864:	42 34       	I0 = P2;
ffa0a866:	00 00       	NOP;
ffa0a868:	20 9d       	R0.L = W[I0];
ffa0a86a:	01 54       	R0 = R1 & R0;
ffa0a86c:	00 0c       	CC = R0 == 0x0;
ffa0a86e:	fc 1f       	IF CC JUMP 0xffa0a866 <_radio_init+0x10e> (BP);
ffa0a870:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a874:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a878:	10 95       	R0 = W[P2] (Z);
ffa0a87a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a87e:	10 60       	R0 = 0x2 (X);		/*		R0=0x0(  0) */
ffa0a880:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a884:	10 97       	W[P2] = R0;
ffa0a886:	24 00       	SSYNC;
ffa0a888:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a88a:	10 97       	W[P2] = R0;
ffa0a88c:	24 00       	SSYNC;
ffa0a88e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a892:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a896:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a89a:	10 97       	W[P2] = R0;
ffa0a89c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0a89e:	42 34       	I0 = P2;
ffa0a8a0:	00 00       	NOP;
ffa0a8a2:	20 9d       	R0.L = W[I0];
ffa0a8a4:	c0 42       	R0 = R0.L (Z);
ffa0a8a6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0a8a8:	fc 17       	IF !CC JUMP 0xffa0a8a0 <_radio_init+0x148> (BP);
ffa0a8aa:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0a8ac:	0c 10       	IF !CC JUMP 0xffa0a8c4 <_radio_init+0x16c>;
ffa0a8ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a8b2:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a8b6:	09 60       	R1 = 0x1 (X);		/*		R1=0x0(  0) */
ffa0a8b8:	42 34       	I0 = P2;
ffa0a8ba:	00 00       	NOP;
ffa0a8bc:	20 9d       	R0.L = W[I0];
ffa0a8be:	01 54       	R0 = R1 & R0;
ffa0a8c0:	00 0c       	CC = R0 == 0x0;
ffa0a8c2:	fc 1f       	IF CC JUMP 0xffa0a8ba <_radio_init+0x162> (BP);
ffa0a8c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a8c8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a8cc:	10 95       	R0 = W[P2] (Z);
ffa0a8ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a8d2:	11 60       	R1 = 0x2 (X);		/*		R1=0x0(  0) */
ffa0a8d4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a8d8:	11 97       	W[P2] = R1;
ffa0a8da:	24 00       	SSYNC;
ffa0a8dc:	01 e8 00 00 	UNLINK;
ffa0a8e0:	30 05       	(R7:6) = [SP++];
ffa0a8e2:	10 00       	RTS;
